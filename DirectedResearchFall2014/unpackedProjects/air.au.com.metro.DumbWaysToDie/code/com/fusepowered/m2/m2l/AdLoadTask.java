package com.fusepowered.m2.m2l;

import java.lang.ref.*;
import java.io.*;
import android.util.*;
import android.app.*;
import java.util.*;
import android.net.*;
import com.fusepowered.m2.m2l.util.*;
import org.apache.http.*;

abstract class AdLoadTask
{
    WeakReference<AdViewController> mWeakAdViewController;
    
    AdLoadTask(final AdViewController referent) {
        super();
        this.mWeakAdViewController = new WeakReference<AdViewController>(referent);
    }
    
    static AdLoadTask fromHttpResponse(final HttpResponse httpResponse, final AdViewController adViewController) throws IOException {
        return new TaskExtractor(httpResponse, adViewController).extract();
    }
    
    abstract void cleanup();
    
    abstract void execute();
    
    static class CustomEventAdLoadTask extends AdLoadTask
    {
        private Map<String, String> mParamsMap;
        
        public CustomEventAdLoadTask(final AdViewController adViewController, final Map<String, String> mParamsMap) {
            super(adViewController);
            this.mParamsMap = mParamsMap;
        }
        
        @Override
        void cleanup() {
            this.mParamsMap = null;
        }
        
        @Override
        void execute() {
            final AdViewController adViewController = this.mWeakAdViewController.get();
            if (adViewController == null || adViewController.isDestroyed()) {
                return;
            }
            adViewController.setNotLoading();
            adViewController.getMoPubView().loadCustomEvent(this.mParamsMap);
        }
        
        @Deprecated
        Map<String, String> getParamsMap() {
            return this.mParamsMap;
        }
    }
    
    @Deprecated
    static class LegacyCustomEventAdLoadTask extends AdLoadTask
    {
        private Header mHeader;
        
        public LegacyCustomEventAdLoadTask(final AdViewController adViewController, final Header mHeader) {
            super(adViewController);
            this.mHeader = mHeader;
        }
        
        @Override
        void cleanup() {
            this.mHeader = null;
        }
        
        @Override
        void execute() {
            final AdViewController adViewController = this.mWeakAdViewController.get();
            if (adViewController == null || adViewController.isDestroyed()) {
                return;
            }
            adViewController.setNotLoading();
            final MoPubView moPubView = adViewController.getMoPubView();
            if (this.mHeader == null) {
                Log.i("MoPub", "Couldn't call custom method because the server did not specify one.");
                moPubView.loadFailUrl(MoPubErrorCode.ADAPTER_NOT_FOUND);
                return;
            }
            final String value = this.mHeader.getValue();
            Log.i("MoPub", "Trying to call method named " + value);
            final Activity activity = moPubView.getActivity();
            try {
                activity.getClass().getMethod(value, MoPubView.class).invoke(activity, moPubView);
            }
            catch (NoSuchMethodException ex) {
                Log.d("MoPub", "Couldn't perform custom method named " + value + "(MoPubView view) because your activity class has no such method");
                moPubView.loadFailUrl(MoPubErrorCode.ADAPTER_NOT_FOUND);
            }
            catch (Exception ex2) {
                Log.d("MoPub", "Couldn't perform custom method named " + value);
                moPubView.loadFailUrl(MoPubErrorCode.ADAPTER_NOT_FOUND);
            }
        }
        
        @Deprecated
        Header getHeader() {
            return this.mHeader;
        }
    }
    
    private static class TaskExtractor
    {
        private String adType;
        private String adTypeCustomEventName;
        private final AdViewController adViewController;
        private String fullAdType;
        private final HttpResponse response;
        
        TaskExtractor(final HttpResponse response, final AdViewController adViewController) {
            super();
            this.response = response;
            this.adViewController = adViewController;
        }
        
        private AdLoadTask createCustomEventAdLoadTask(final String s) {
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put(ResponseHeader.CUSTOM_EVENT_NAME.getKey(), this.adTypeCustomEventName);
            if (s != null) {
                hashMap.put(ResponseHeader.CUSTOM_EVENT_DATA.getKey(), s);
            }
            return new CustomEventAdLoadTask(this.adViewController, hashMap);
        }
        
        private boolean eventDataIsInResponseBody(final String anObject) {
            return "mraid".equals(anObject) || "html".equals(anObject) || ("interstitial".equals(anObject) && "vast".equals(this.fullAdType));
        }
        
        private AdLoadTask extractCustomEventAdLoadTask() {
            Log.i("MoPub", "Performing custom event.");
            this.adTypeCustomEventName = HttpResponses.extractHeader(this.response, ResponseHeader.CUSTOM_EVENT_NAME);
            if (this.adTypeCustomEventName != null) {
                return this.createCustomEventAdLoadTask(HttpResponses.extractHeader(this.response, ResponseHeader.CUSTOM_EVENT_DATA));
            }
            return new LegacyCustomEventAdLoadTask(this.adViewController, this.response.getFirstHeader(ResponseHeader.CUSTOM_SELECTOR.getKey()));
        }
        
        private AdLoadTask extractCustomEventAdLoadTaskFromNativeParams() throws IOException {
            return this.createCustomEventAdLoadTask(HttpResponses.extractHeader(this.response, ResponseHeader.NATIVE_PARAMS));
        }
        
        private AdLoadTask extractCustomEventAdLoadTaskFromResponseBody() throws IOException {
            final HttpEntity entity = this.response.getEntity();
            String fromStream;
            if (entity != null) {
                fromStream = Strings.fromStream(entity.getContent());
            }
            else {
                fromStream = "";
            }
            this.adViewController.getAdConfiguration().setResponseString(fromStream);
            final String header = HttpResponses.extractHeader(this.response, ResponseHeader.REDIRECT_URL);
            final String header2 = HttpResponses.extractHeader(this.response, ResponseHeader.CLICKTHROUGH_URL);
            final boolean booleanHeader = HttpResponses.extractBooleanHeader(this.response, ResponseHeader.SCROLLABLE, false);
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("Html-Response-Body", Uri.encode(fromStream));
            hashMap.put("Scrollable", Boolean.toString(booleanHeader));
            if (header != null) {
                hashMap.put("Redirect-Url", header);
            }
            if (header2 != null) {
                hashMap.put("Clickthrough-Url", header2);
            }
            return this.createCustomEventAdLoadTask(Json.mapToJsonString(hashMap));
        }
        
        AdLoadTask extract() throws IOException {
            this.adType = HttpResponses.extractHeader(this.response, ResponseHeader.AD_TYPE);
            this.fullAdType = HttpResponses.extractHeader(this.response, ResponseHeader.FULL_AD_TYPE);
            Log.d("MoPub", "Loading ad type: " + AdTypeTranslator.getAdNetworkType(this.adType, this.fullAdType));
            this.adTypeCustomEventName = AdTypeTranslator.getCustomEventNameForAdType(this.adViewController.getMoPubView(), this.adType, this.fullAdType);
            if ("custom".equals(this.adType)) {
                return this.extractCustomEventAdLoadTask();
            }
            if (this.eventDataIsInResponseBody(this.adType)) {
                return this.extractCustomEventAdLoadTaskFromResponseBody();
            }
            return this.extractCustomEventAdLoadTaskFromNativeParams();
        }
    }
}
