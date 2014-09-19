package com.fusepowered.m1.android;

import java.lang.ref.*;
import android.content.*;
import org.json.*;
import android.widget.*;
import java.util.*;
import android.graphics.*;
import android.net.*;
import android.app.*;

abstract class MMAdImpl implements MMAd
{
    static final String BANNER = "b";
    static final String INTERSTITIAL = "i";
    private static long nextAdViewId;
    AdProperties adProperties;
    String adType;
    String apid;
    WeakReference<Context> contextRef;
    MMAdImplController controller;
    boolean ignoreDensityScaling;
    long internalId;
    boolean isFinishing;
    long lastAdRequest;
    long linkForExpansionId;
    protected MMRequest mmRequest;
    MMWebViewClient mmWebViewClient;
    MMWebViewClient.MMWebViewClientListener mmWebViewClientListener;
    JSONObject obj;
    RequestListener requestListener;
    String userData;
    boolean xmlLayout;
    
    static {
        MMAdImpl.nextAdViewId = 1L;
    }
    
    public MMAdImpl(final Context referent) {
        super();
        this.ignoreDensityScaling = false;
        this.apid = "28911";
        this.xmlLayout = false;
        this.contextRef = new WeakReference<Context>(referent);
        this.mmWebViewClientListener = new BasicWebViewClientListener(this);
        synchronized (MMAdImpl.class) {
            this.internalId = MMAdImpl.nextAdViewId;
            ++MMAdImpl.nextAdViewId;
            MMSDK.Log.v("Assigning MMAdImpl internal id: %d", this.internalId);
        }
    }
    
    static String[] getAdTypes() {
        return new String[] { "b", "i" };
    }
    
    void addView(final MMWebView mmWebView, final RelativeLayout$LayoutParams relativeLayout$LayoutParams) {
    }
    
    void animateTransition() {
    }
    
    JSONObject getAdProperties() {
        if (this.adProperties != null) {
            return this.adProperties.getAdProperties();
        }
        return null;
    }
    
    @Override
    public String getApid() {
        return this.apid;
    }
    
    String getCachedName() {
        if (this.adType != null && this.apid != null) {
            return this.adType + "_" + this.apid;
        }
        return null;
    }
    
    abstract MMAd getCallingAd();
    
    Context getContext() {
        if (this.contextRef != null) {
            return this.contextRef.get();
        }
        return null;
    }
    
    int getId() {
        return -1;
    }
    
    @Override
    public boolean getIgnoresDensityScaling() {
        return this.ignoreDensityScaling;
    }
    
    @Override
    public RequestListener getListener() {
        return this.requestListener;
    }
    
    @Override
    public MMRequest getMMRequest() {
        return this.mmRequest;
    }
    
    MMWebViewClient getMMWebViewClient() {
        MMSDK.Log.d("Returning a client for user: DefaultWebViewClient, adimpl=" + this);
        return new BannerWebViewClient(this.mmWebViewClientListener, new MMAdImplRedirectionListenerImpl(this));
    }
    
    String getReqType() {
        return "fetch";
    }
    
    String getRequestCompletedAction() {
        return "millennialmedia.action.ACTION_FETCH_SUCCEEDED";
    }
    
    String getRequestFailedAction() {
        return "millennialmedia.action.ACTION_FETCH_FAILED";
    }
    
    public boolean hasCachedVideoSupport() {
        return true;
    }
    
    void insertUrlAdMetaValues(final Map<String, String> map) {
        final Context context = this.getContext();
        map.put("ar", "manual");
        map.put("sdkapid", this.apid);
        map.put("do", MMSDK.getOrientation(context));
        map.put("olock", MMSDK.getOrientationLocked(context));
        if (!this.hasCachedVideoSupport()) {
            map.put("cachedvideo", "false");
        }
        map.put("reqtype", this.getReqType());
        if (this.mmRequest != null) {
            this.mmRequest.getUrlParams(map);
        }
        if (HandShake.sharedHandShake(context).canRequestVideo(context, this.adType)) {
            map.put("video", "true");
        }
        else {
            map.put("video", "false");
        }
        if (this.adType == null) {
            MMSDK.Log.e("******* SDK DEFAULTED TO MMBannerAdBottom. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********");
            map.put("at", "b");
            return;
        }
        if (this.adType.equals("b") || this.adType.equals("i")) {
            map.put("at", this.adType);
            return;
        }
        MMSDK.Log.e("******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS (" + this.adType + ") **********");
    }
    
    public boolean isBanner() {
        return false;
    }
    
    boolean isExpandingToUrl() {
        return false;
    }
    
    boolean isLifecycleObservable() {
        return false;
    }
    
    boolean isRefreshable() {
        if (MMSDK.disableAdMinRefresh) {
            MMSDK.Log.d("Minimum adrefresh time ignored");
            return true;
        }
        final long currentTimeMillis = System.currentTimeMillis();
        final int i = (int)((currentTimeMillis - this.lastAdRequest) / 1000L);
        final long adRefreshSecs = HandShake.sharedHandShake(this.getContext()).adRefreshSecs;
        if (i >= adRefreshSecs) {
            this.lastAdRequest = currentTimeMillis;
            return true;
        }
        MMSDK.Log.d("Cannot request ad. Last ad request was %d seconds ago. Next ad can be requested in %d seconds.", i, adRefreshSecs - i);
        return false;
    }
    
    boolean isTransitionAnimated() {
        return false;
    }
    
    boolean isUpdatingMraid() {
        return this.controller != null && this.controller.webView != null && !this.controller.webView.isExpanding;
    }
    
    void prepareTransition(final Bitmap bitmap) {
    }
    
    void removeProgressBar() {
    }
    
    void removeView(final MMWebView mmWebView) {
    }
    
    void requestAd() {
        MMAdImplController.assignAdViewController(this);
        if (this.controller != null) {
            this.controller.requestAd();
        }
    }
    
    @Override
    public void setApid(final String apid) {
        if (HandShake.apid == null || HandShake.apid.equals("28911")) {
            HandShake.apid = this.apid;
        }
        this.apid = apid;
    }
    
    void setClickable(final boolean b) {
    }
    
    @Override
    public void setIgnoresDensityScaling(final boolean ignoreDensityScaling) {
        this.ignoreDensityScaling = ignoreDensityScaling;
    }
    
    @Override
    public void setListener(final RequestListener requestListener) {
        this.requestListener = requestListener;
    }
    
    @Override
    public void setMMRequest(final MMRequest mmRequest) {
        this.mmRequest = mmRequest;
    }
    
    @Override
    public String toString() {
        return "AdType[(" + this.adType + ") InternalId(" + this.internalId + ") LinkedId(" + this.linkForExpansionId + ") isFinishing(" + this.isFinishing + ")]";
    }
    
    void unresizeToDefault() {
        if (this.controller != null) {
            this.controller.unresizeToDefault();
        }
    }
    
    static class BasicWebViewClientListener extends MMWebViewClientListener
    {
        WeakReference<MMAdImpl> adImplRef;
        
        BasicWebViewClientListener(final MMAdImpl referent) {
            super();
            this.adImplRef = new WeakReference<MMAdImpl>(referent);
        }
        
        public void onPageFinished(final String s) {
            final MMAdImpl mmAdImpl = this.adImplRef.get();
            if (mmAdImpl != null) {
                mmAdImpl.setClickable(true);
                if (mmAdImpl.controller != null && mmAdImpl.controller.webView != null) {
                    synchronized (mmAdImpl.controller.webView) {
                        if (mmAdImpl.controller.webView.hasWindowFocus()) {
                            mmAdImpl.controller.webView.setMraidViewableVisible();
                        }
                        else {
                            mmAdImpl.controller.webView.setMraidViewableHidden();
                        }
                    }
                }
            }
        }
        
        @Override
        void onPageStarted(final String s) {
            final MMAdImpl mmAdImpl = this.adImplRef.get();
            if (mmAdImpl != null) {
                mmAdImpl.setClickable(false);
            }
        }
    }
    
    static class MMAdImplRedirectionListenerImpl extends RedirectionListenerImpl
    {
        WeakReference<MMAdImpl> adImplRef;
        
        public MMAdImplRedirectionListenerImpl(final MMAdImpl referent) {
            super();
            if (referent != null) {
                this.adImplRef = new WeakReference<MMAdImpl>(referent);
                this.creatorAdImplInternalId = referent.internalId;
            }
        }
        
        @Override
        public JSONObject getAdProperties() {
            final MMAdImpl mmAdImpl = this.adImplRef.get();
            if (mmAdImpl != null) {
                return mmAdImpl.getAdProperties();
            }
            return null;
        }
        
        @Override
        public boolean isActivityStartable(final Uri uri) {
            final MMAdImpl mmAdImpl = this.adImplRef.get();
            if (mmAdImpl != null) {
                final Context context = mmAdImpl.getContext();
                if (context != null && context instanceof Activity && ((Activity)context).isFinishing()) {
                    return false;
                }
            }
            return true;
        }
        
        @Override
        public void startingActivity(final Uri uri) {
            super.startingActivity(uri);
            if (uri.getScheme().equalsIgnoreCase("http") || uri.getScheme().equalsIgnoreCase("https")) {
                final MMAdImpl mmAdImpl = this.adImplRef.get();
                if (mmAdImpl != null) {
                    MMSDK.Event.overlayOpened(mmAdImpl);
                }
            }
        }
        
        @Override
        public void updateLastVideoViewedTime() {
            final MMAdImpl mmAdImpl = this.adImplRef.get();
            if (mmAdImpl != null && mmAdImpl.adType != null) {
                HandShake.sharedHandShake(mmAdImpl.getContext()).updateLastVideoViewedTime(mmAdImpl.getContext(), mmAdImpl.adType);
            }
        }
    }
}
