package com.fusepowered.m1.android;

import java.lang.ref.*;
import java.util.concurrent.*;
import android.webkit.*;
import android.content.*;
import android.widget.*;
import android.text.*;
import android.os.*;
import java.util.*;
import java.net.*;
import org.apache.http.*;
import java.io.*;

class MMAdImplController implements AdCacheTaskListener
{
    static final long NO_ID_RETURNED = -4L;
    private static final Map<Long, MMAdImplController> saveableControllers;
    private static final Map<Long, WeakReference<MMAdImplController>> weakUnsaveableAdRef;
    volatile WeakReference<MMAdImpl> adImplRef;
    volatile long linkedAdImplId;
    RequestAdRunnable requestAdRunnable;
    volatile MMWebView webView;
    
    static {
        saveableControllers = new ConcurrentHashMap<Long, MMAdImplController>();
        weakUnsaveableAdRef = new ConcurrentHashMap<Long, WeakReference<MMAdImplController>>();
    }
    
    private MMAdImplController(final MMAdImpl referent) {
        super();
        MMSDK.Log.d("**************** creating new controller.");
        this.adImplRef = new WeakReference<MMAdImpl>(referent);
        if (referent.linkForExpansionId != 0L) {
            this.linkForExpansion(referent);
            this.webView = getWebViewFromExistingAdImpl(referent);
        }
        else if (!(referent instanceof MMInterstitial.MMInterstitialAdImpl)) {
            if (referent.isBanner()) {
                this.webView = new MMWebView(referent.getContext().getApplicationContext(), referent.internalId);
                this.webView.requiresPreAdSizeFix = true;
                return;
            }
            this.webView = new MMWebView(referent.getContext(), referent.internalId);
        }
    }
    
    static void assignAdViewController(final MMAdImpl referent) {
        while (true) {
            synchronized (MMAdImplController.class) {
                if (referent.controller != null) {
                    if (!MMAdImplController.saveableControllers.containsValue(referent.controller)) {
                        if (referent.isLifecycleObservable()) {
                            MMAdImplController.saveableControllers.put(referent.internalId, referent.controller);
                            if (MMAdImplController.weakUnsaveableAdRef.containsKey(referent.internalId)) {
                                MMAdImplController.weakUnsaveableAdRef.remove(referent.internalId);
                            }
                        }
                        else if (!MMAdImplController.weakUnsaveableAdRef.containsKey(referent.internalId)) {
                            MMAdImplController.weakUnsaveableAdRef.put(referent.internalId, new WeakReference<MMAdImplController>(referent.controller));
                        }
                    }
                    MMSDK.Log.d(referent + " - Has a controller");
                    return;
                }
            }
            MMSDK.Log.d("*****************************************assignAdViewController for " + referent);
            MMAdImplController mmAdImplController = MMAdImplController.saveableControllers.get(referent.internalId);
            if (mmAdImplController == null) {
                final WeakReference<MMAdImplController> weakReference = MMAdImplController.weakUnsaveableAdRef.get(referent.internalId);
                if (weakReference != null) {
                    mmAdImplController = weakReference.get();
                }
                if (mmAdImplController == null) {
                    mmAdImplController = new MMAdImplController(referent);
                    if (referent.isLifecycleObservable()) {
                        MMAdImplController.saveableControllers.put(referent.internalId, mmAdImplController);
                    }
                    else {
                        MMAdImplController.weakUnsaveableAdRef.put(referent.internalId, new WeakReference<MMAdImplController>(mmAdImplController));
                    }
                }
            }
            referent.controller = mmAdImplController;
            mmAdImplController.adImplRef = new WeakReference<MMAdImpl>(referent);
            if (mmAdImplController.webView != null && !(referent instanceof MMInterstitial.MMInterstitialAdImpl)) {
                setupWebView(referent);
            }
        }
    }
    
    static boolean attachWebViewFromOverlay(final MMAdImpl obj) {
        // monitorenter(MMAdImplController.class)
        boolean b;
        if (obj == null) {
            b = false;
        }
        else {
            try {
                MMSDK.Log.d("attachWebViewFromOverlay with " + obj);
                if (obj.controller != null && obj.controller.webView != null) {
                    obj.controller.webView.resetSpeechKit();
                }
                final MMAdImpl adImplWithId = getAdImplWithId(obj.linkForExpansionId);
                if (adImplWithId != null && adImplWithId.controller != null) {
                    if (adImplWithId.controller.webView == null) {
                        adImplWithId.controller.webView = obj.controller.webView;
                        obj.removeView(obj.controller.webView);
                        obj.controller.webView = null;
                    }
                    adImplWithId.controller.webView.setMraidDefault();
                    adImplWithId.controller.webView.setWebViewClient((WebViewClient)adImplWithId.getMMWebViewClient());
                    b = true;
                }
                else {
                    b = false;
                }
            }
            finally {
            }
            // monitorexit(MMAdImplController.class)
        }
        // monitorexit(MMAdImplController.class)
        return b;
    }
    
    static String controllersToString() {
        return MMAdImplController.weakUnsaveableAdRef.toString() + " SAVED:" + MMAdImplController.saveableControllers.toString();
    }
    
    static void destroyOtherInlineVideo(final Context context) {
        final java.util.Iterator<Map.Entry<Long, MMAdImplController>> iterator = MMAdImplController.saveableControllers.entrySet().iterator();
        while (iterator.hasNext()) {
            final MMAdImplController mmAdImplController = iterator.next().getValue();
            if (mmAdImplController != null) {
                final MMAdImpl mmAdImpl = mmAdImplController.adImplRef.get();
                if (mmAdImpl == null) {
                    continue;
                }
                final MMAd callingAd = mmAdImpl.getCallingAd();
                if (callingAd == null || !(callingAd instanceof MMLayout)) {
                    continue;
                }
                ((MMLayout)callingAd).removeVideo();
            }
        }
    }
    
    static MMAdImpl getAdImplWithId(final long n) {
        // monitorenter(MMAdImplController.class)
        MMAdImpl mmAdImpl;
        if (n == -4L) {
            mmAdImpl = null;
        }
        else {
            try {
                MMAdImplController mmAdImplController = MMAdImplController.saveableControllers.get(n);
                if (mmAdImplController == null) {
                    final WeakReference<MMAdImplController> weakReference = MMAdImplController.weakUnsaveableAdRef.get(n);
                    if (weakReference != null) {
                        mmAdImplController = (MMAdImplController)weakReference.get();
                    }
                }
                if (mmAdImplController != null) {
                    mmAdImpl = (MMAdImpl)mmAdImplController.adImplRef.get();
                }
                else {
                    mmAdImpl = null;
                }
            }
            finally {
            }
            // monitorexit(MMAdImplController.class)
        }
        // monitorexit(MMAdImplController.class)
        return mmAdImpl;
    }
    
    static MMWebView getWebViewFromExistingAdImpl(final MMAdImpl mmAdImpl) {
        synchronized (MMAdImplController.class) {
            MMSDK.Log.i("getWebViewFromExistingLayout(" + mmAdImpl.internalId + " taking from " + mmAdImpl.linkForExpansionId + ")");
            final MMAdImpl adImplWithId = getAdImplWithId(mmAdImpl.linkForExpansionId);
            MMWebView webView = null;
            if (adImplWithId != null) {
                final MMAdImplController controller = adImplWithId.controller;
                webView = null;
                if (controller != null) {
                    webView = adImplWithId.controller.webView;
                    adImplWithId.controller.webView = null;
                }
            }
            return webView;
        }
    }
    
    private boolean isDownloadingCachedAd(final MMAdImpl mmAdImpl) {
        synchronized (this) {
            final Context context = mmAdImpl.getContext();
            boolean b;
            if (HandShake.sharedHandShake(context).isAdTypeDownloading(mmAdImpl.adType)) {
                MMSDK.Log.i("There is a download in progress. Defering call for new ad");
                MMSDK.Event.requestFailed(mmAdImpl, new MMException(12));
                b = true;
            }
            else {
                MMSDK.Log.d("No download in progress.");
                final CachedAd loadIncompleteDownload = AdCache.loadIncompleteDownload(context, mmAdImpl.getCachedName());
                if (loadIncompleteDownload != null) {
                    MMSDK.Log.i("Last ad wasn't fully downloaded. Download again.");
                    MMSDK.Event.fetchStartedCaching(mmAdImpl);
                    AdCache.startDownloadTask(context, mmAdImpl.getCachedName(), loadIncompleteDownload, (AdCache.AdCacheTaskListener)this);
                    b = true;
                }
                else {
                    MMSDK.Log.i("No incomplete downloads.");
                    b = false;
                }
            }
            return b;
        }
    }
    
    static void removeAdViewController(final MMAdImpl obj) {
        while (true) {
            while (true) {
                Label_0270: {
                    synchronized (MMAdImplController.class) {
                        if (obj.controller != null) {
                            if (!obj.isLifecycleObservable()) {
                                break Label_0270;
                            }
                            MMAdImplController.saveableControllers.put(obj.internalId, obj.controller);
                            if (MMAdImplController.weakUnsaveableAdRef.get(obj.internalId) != null) {
                                MMAdImplController.weakUnsaveableAdRef.remove(obj.internalId);
                            }
                            MMSDK.Log.d("****************RemoveAdviewcontroller - " + obj);
                            if (obj.isFinishing) {
                                MMAdImplController.saveableControllers.remove(obj.internalId);
                                MMAdImplController.weakUnsaveableAdRef.remove(obj.internalId);
                            }
                            final MMAdImplController controller = obj.controller;
                            obj.controller = null;
                            MMSDK.Log.d("****************RemoveAdviewcontroller - controllers " + controllersToString());
                            if (controller.webView != null) {
                                MMSDK.Log.d("****************RemoveAdviewcontroller - controller!=null, expanding=" + controller.webView.isExpanding);
                                obj.removeView(controller.webView);
                                controller.webView.isExpanding = false;
                                if (obj.isFinishing && obj.linkForExpansionId == 0L) {
                                    controller.webView.destroy();
                                    controller.webView = null;
                                }
                            }
                        }
                        return;
                    }
                }
                MMAdImplController.weakUnsaveableAdRef.put(obj.internalId, new WeakReference<MMAdImplController>(obj.controller));
                continue;
            }
        }
    }
    
    private void requestAdInternal(final MMAdImpl mmAdImpl) {
        if (mmAdImpl.apid == null) {
            final MMException ex = new MMException("MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned.", 1);
            MMSDK.Log.e(ex);
            MMSDK.Event.requestFailed(mmAdImpl, ex);
        }
        else if (mmAdImpl.isBanner() || !this.isDownloadingCachedAd(mmAdImpl)) {
            synchronized (this) {
                if (this.requestAdRunnable != null) {
                    MMSDK.Log.i(MMException.getErrorCodeMessage(12));
                    MMSDK.Event.requestFailed(mmAdImpl, new MMException(12));
                    return;
                }
            }
            Utils.ThreadUtils.execute(this.requestAdRunnable = new RequestAdRunnable());
        }
        // monitorexit(this)
    }
    
    private static void setupWebView(final MMAdImpl mmAdImpl) {
        synchronized (MMAdImplController.class) {
            final MMAdImplController controller = mmAdImpl.controller;
            controller.webView.setWebViewClient((WebViewClient)mmAdImpl.getMMWebViewClient());
            if (!controller.webView.isCurrentParent(mmAdImpl.internalId)) {
                RelativeLayout$LayoutParams relativeLayout$LayoutParams;
                if (mmAdImpl.isBanner()) {
                    relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
                    if (controller.webView.isMraidResized()) {
                        controller.webView.unresizeToDefault(mmAdImpl);
                    }
                }
                else {
                    relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -1);
                }
                controller.webView.removeFromParent();
                mmAdImpl.addView(controller.webView, relativeLayout$LayoutParams);
            }
        }
    }
    
    int checkReason(final MMAdImpl mmAdImpl, final CachedAd cachedAd) {
        if (cachedAd.isExpired()) {
            MMSDK.Log.d("%s is expired.", cachedAd.getId());
            return 21;
        }
        if (!cachedAd.isOnDisk(mmAdImpl.getContext())) {
            MMSDK.Log.d("%s is not on disk.", cachedAd.getId());
            return 22;
        }
        if (!HandShake.sharedHandShake(mmAdImpl.getContext()).canDisplayCachedAd(mmAdImpl.adType, cachedAd.deferredViewStart)) {
            MMSDK.Log.d("%s cannot be shown at this time.", cachedAd.getId());
            return 24;
        }
        return 100;
    }
    
    int display(final MMAdImpl mmAdImpl) {
        final CachedAd loadNextCachedAd = AdCache.loadNextCachedAd(mmAdImpl.getContext(), mmAdImpl.getCachedName());
        if (loadNextCachedAd == null) {
            return 20;
        }
        if (loadNextCachedAd.canShow(mmAdImpl.getContext(), mmAdImpl, true)) {
            MMSDK.Event.displayStarted(mmAdImpl);
            AdCache.setNextCachedAd(mmAdImpl.getContext(), mmAdImpl.getCachedName(), null);
            loadNextCachedAd.show(mmAdImpl.getContext(), mmAdImpl.internalId);
            HandShake.sharedHandShake(mmAdImpl.getContext()).updateLastVideoViewedTime(mmAdImpl.getContext(), mmAdImpl.adType);
            return 0;
        }
        return this.checkReason(mmAdImpl, loadNextCachedAd);
    }
    
    @Override
    public void downloadCompleted(final CachedAd cachedAd, final boolean b) {
        final MMAdImpl mmAdImpl = this.adImplRef.get();
        if (mmAdImpl == null) {
            MMSDK.Log.e(MMException.getErrorCodeMessage(25));
            return;
        }
        if (b) {
            AdCache.setNextCachedAd(mmAdImpl.getContext(), mmAdImpl.getCachedName(), cachedAd.getId());
        }
        if (b) {
            MMSDK.Event.requestCompleted(mmAdImpl);
            return;
        }
        MMSDK.Event.requestFailed(mmAdImpl, new MMException(15));
    }
    
    @Override
    public void downloadStart(final CachedAd cachedAd) {
    }
    
    public String getDefaultUserAgentString(final Context context) {
        return System.getProperty("http.agent");
    }
    
    HttpMMHeaders getLastHeaders() {
        if (this.webView == null) {
            return null;
        }
        return this.webView.getLastHeaders();
    }
    
    String getUserAgent() {
        final MMAdImpl mmAdImpl = this.adImplRef.get();
        String s = null;
        if (mmAdImpl != null) {
            final Context context = mmAdImpl.getContext();
            s = null;
            if (context != null) {
                s = this.getDefaultUserAgentString(context);
            }
        }
        if (TextUtils.isEmpty((CharSequence)s)) {
            s = Build.MODEL;
        }
        return s;
    }
    
    int isAdAvailable(final MMAdImpl mmAdImpl) {
        final CachedAd loadNextCachedAd = AdCache.loadNextCachedAd(mmAdImpl.getContext(), mmAdImpl.getCachedName());
        if (loadNextCachedAd == null) {
            MMSDK.Log.i("No next ad.");
            return 20;
        }
        if (loadNextCachedAd.canShow(mmAdImpl.getContext(), mmAdImpl, true)) {
            return 0;
        }
        return this.checkReason(mmAdImpl, loadNextCachedAd);
    }
    
    void linkForExpansion(final MMAdImpl mmAdImpl) {
        final MMAdImpl adImplWithId = getAdImplWithId(mmAdImpl.linkForExpansionId);
        if (adImplWithId != null) {
            this.linkedAdImplId = mmAdImpl.linkForExpansionId;
            adImplWithId.controller.linkedAdImplId = mmAdImpl.internalId;
            adImplWithId.linkForExpansionId = mmAdImpl.internalId;
        }
    }
    
    void loadUrl(final String s) {
        if (!TextUtils.isEmpty((CharSequence)s) && this.webView != null) {
            this.webView.loadUrl(s);
        }
    }
    
    void loadWebContent(final String s, final String s2) {
        final MMAdImpl mmAdImpl = this.adImplRef.get();
        if (mmAdImpl != null && this.webView != null) {
            this.webView.setWebViewContent(s, s2, mmAdImpl);
        }
    }
    
    void requestAd() {
        final MMAdImpl mmAdImpl = this.adImplRef.get();
        if (mmAdImpl == null) {
            MMSDK.Log.e(MMException.getErrorCodeMessage(25));
            MMSDK.Event.requestFailed(mmAdImpl, new MMException(25));
            return;
        }
        if (!mmAdImpl.isRefreshable()) {
            MMSDK.Event.requestFailed(mmAdImpl, new MMException(16));
            return;
        }
        if (!MMSDK.isUiThread()) {
            MMSDK.Log.e(MMException.getErrorCodeMessage(3));
            MMSDK.Event.requestFailed(mmAdImpl, new MMException(3));
            return;
        }
        if (HandShake.sharedHandShake(mmAdImpl.getContext()).kill) {
            MMSDK.Log.i("The server is no longer allowing ads.");
            MMSDK.Event.requestFailed(mmAdImpl, new MMException(16));
            return;
        }
        try {
            MMSDK.Log.d("adLayout - requestAd");
            this.requestAdInternal(mmAdImpl);
        }
        catch (Exception ex) {
            MMSDK.Log.e("There was an exception with the ad request. %s", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    void setLastHeaders(final HttpMMHeaders lastHeaders) {
        if (this.webView != null) {
            this.webView.setLastHeaders(lastHeaders);
        }
    }
    
    void setWebViewContent(final String s, final String s2) {
        if (this.webView != null) {
            this.webView.setWebViewContent(s, s2, this.adImplRef.get());
        }
    }
    
    @Override
    public String toString() {
        final MMAdImpl obj = this.adImplRef.get();
        final StringBuilder sb = new StringBuilder();
        if (obj != null) {
            sb.append(obj + "-LinkInC=" + this.linkedAdImplId);
        }
        return sb.toString() + " w/" + this.webView;
    }
    
    void unresizeToDefault() {
        if (this.webView != null) {
            this.webView.unresizeToDefault(this.adImplRef.get());
        }
    }
    
    private class RequestAdRunnable implements Runnable
    {
        String adUrl;
        HttpMMHeaders mmHeaders;
        
        private boolean isAdUrlBuildable() {
            this.adUrl = null;
            final WeakReference<MMAdImpl> adImplRef = MMAdImplController.this.adImplRef;
            MMAdImpl mmAdImpl = null;
            if (adImplRef != null) {
                mmAdImpl = MMAdImplController.this.adImplRef.get();
            }
            if (mmAdImpl != null) {
                StringBuilder sb;
                try {
                    final TreeMap<String, String> treeMap = new TreeMap<String, String>(String.CASE_INSENSITIVE_ORDER);
                    mmAdImpl.insertUrlAdMetaValues(treeMap);
                    MMSDK.insertUrlCommonValues(mmAdImpl.getContext(), treeMap);
                    treeMap.put("ua", mmAdImpl.controller.getUserAgent());
                    sb = new StringBuilder(HandShake.getAdUrl());
                    MMSDK.Log.d(treeMap.entrySet().toString());
                    for (final Map.Entry<String, String> entry : treeMap.entrySet()) {
                        sb.append(String.format("%s=%s&", entry.getKey(), URLEncoder.encode(entry.getValue(), "UTF-8")));
                    }
                }
                catch (UnsupportedEncodingException ex) {
                    return this.failWithErrorMessage(new MMException(ex));
                }
                sb.delete(sb.length() - 1, sb.length());
                this.adUrl = sb.toString();
                MMSDK.Log.d("Calling for an advertisement: %s", this.adUrl);
            }
            else {
                this.failWithInfoMessage(new MMException(25));
            }
            return true;
        }
        
        private boolean isHandledHtmlResponse(final HttpEntity httpEntity) {
            try {
                final WeakReference<MMAdImpl> adImplRef = MMAdImplController.this.adImplRef;
                MMAdImpl mmAdImpl = null;
                if (adImplRef != null) {
                    mmAdImpl = MMAdImplController.this.adImplRef.get();
                }
                if (mmAdImpl != null) {
                    if (!mmAdImpl.isBanner()) {
                        final InterstitialAd interstitialAd = new InterstitialAd();
                        interstitialAd.content = HttpGetRequest.convertStreamToString(httpEntity.getContent());
                        interstitialAd.setId(mmAdImpl.adType);
                        interstitialAd.adUrl = this.adUrl;
                        interstitialAd.mmHeaders = this.mmHeaders;
                        if (MMSDK.logLevel >= 5) {
                            MMSDK.Log.v("Received interstitial ad with url %s.", interstitialAd.adUrl);
                            MMSDK.Log.v(interstitialAd.content);
                        }
                        AdCache.save(mmAdImpl.getContext(), interstitialAd);
                        AdCache.setNextCachedAd(mmAdImpl.getContext(), mmAdImpl.getCachedName(), interstitialAd.getId());
                        MMSDK.Event.fetchStartedCaching(mmAdImpl);
                        MMSDK.Event.requestCompleted(mmAdImpl);
                    }
                    else {
                        if (mmAdImpl.controller != null) {
                            mmAdImpl.controller.setLastHeaders(this.mmHeaders);
                            mmAdImpl.controller.setWebViewContent(HttpGetRequest.convertStreamToString(httpEntity.getContent()), this.adUrl);
                        }
                        MMSDK.Event.requestCompleted(mmAdImpl);
                    }
                }
            }
            catch (IOException ex) {
                return this.failWithErrorMessage(new MMException("Exception raised in HTTP stream: " + ex.getMessage(), ex));
            }
            return true;
        }
        
        private boolean isHandledJsonResponse(final HttpEntity httpEntity) {
            final WeakReference<MMAdImpl> adImplRef = MMAdImplController.this.adImplRef;
            MMAdImpl mmAdImpl = null;
            if (adImplRef != null) {
                mmAdImpl = MMAdImplController.this.adImplRef.get();
            }
            if (mmAdImpl == null) {
                return true;
            }
            if (mmAdImpl.isBanner()) {
                return this.failWithErrorMessage(new MMException("Millennial ad return unsupported format.", 15));
            }
            while (true) {
                VideoAd videoAd = null;
                Label_0220: {
                    try {
                        videoAd = (VideoAd)CachedAd.parseJSON(HttpGetRequest.convertStreamToString(httpEntity.getContent()));
                        if (videoAd != null && videoAd.isValid()) {
                            MMSDK.Log.i("Cached video ad JSON received: " + videoAd.getId());
                            if (!videoAd.isExpired()) {
                                break Label_0220;
                            }
                            MMSDK.Log.i("New ad has expiration date in the past. Not downloading ad content.");
                            videoAd.delete(mmAdImpl.getContext());
                            MMSDK.Event.requestFailed(mmAdImpl, new MMException(15));
                        }
                        return true;
                    }
                    catch (IllegalStateException ex) {
                        ex.printStackTrace();
                        return this.failWithInfoMessage(new MMException("Millennial ad return failed. Invalid response data.", ex));
                    }
                    catch (IOException ex2) {
                        ex2.printStackTrace();
                        return this.failWithInfoMessage(new MMException("Millennial ad return failed. " + ex2.getMessage(), ex2));
                    }
                }
                if (AdCache.loadNextCachedAd(mmAdImpl.getContext(), mmAdImpl.getCachedName()) != null) {
                    MMSDK.Log.i("Previously fetched ad exists in the playback queue. Not downloading ad content.");
                    videoAd.delete(mmAdImpl.getContext());
                    MMSDK.Event.requestFailed(mmAdImpl, new MMException(17));
                    return true;
                }
                AdCache.save(mmAdImpl.getContext(), videoAd);
                if (!videoAd.isOnDisk(mmAdImpl.getContext())) {
                    MMSDK.Event.logEvent(videoAd.cacheMissURL);
                    MMSDK.Log.d("Downloading ad...");
                    MMSDK.Event.fetchStartedCaching(mmAdImpl);
                    videoAd.downloadPriority = 3;
                    AdCache.startDownloadTask(mmAdImpl.getContext(), mmAdImpl.getCachedName(), videoAd, (AdCache.AdCacheTaskListener)mmAdImpl.controller);
                    return true;
                }
                MMSDK.Log.d("Cached ad is valid. Moving it to the front of the queue.");
                AdCache.setNextCachedAd(mmAdImpl.getContext(), mmAdImpl.getCachedName(), videoAd.getId());
                MMSDK.Event.fetchStartedCaching(mmAdImpl);
                MMSDK.Event.requestCompleted(mmAdImpl);
                return true;
            }
        }
        
        private boolean isHandledResponse(final HttpResponse httpResponse) {
            final HttpEntity entity = httpResponse.getEntity();
            if (entity == null) {
                this.failWithInfoMessage(new MMException("Null HTTP entity", 14));
                return false;
            }
            if (entity.getContentLength() == 0L) {
                this.failWithInfoMessage(new MMException("Millennial ad return failed. Zero content length returned.", 14));
                return false;
            }
            this.saveMacId(httpResponse);
            final Header contentType = entity.getContentType();
            if (contentType != null && contentType.getValue() != null) {
                if (contentType.getValue().toLowerCase().startsWith("application/json")) {
                    this.isHandledJsonResponse(entity);
                }
                else {
                    if (!contentType.getValue().toLowerCase().startsWith("text/html")) {
                        this.failWithInfoMessage(new MMException("Millennial ad return failed. Invalid (JSON/HTML expected) mime type returned.", 15));
                        return false;
                    }
                    final Header firstHeader = httpResponse.getFirstHeader("X-MM-Video");
                    this.mmHeaders = new HttpMMHeaders(httpResponse.getAllHeaders());
                    if (firstHeader != null && firstHeader.getValue().equalsIgnoreCase("true")) {
                        final WeakReference<MMAdImpl> adImplRef = MMAdImplController.this.adImplRef;
                        MMAdImpl mmAdImpl = null;
                        if (adImplRef != null) {
                            mmAdImpl = MMAdImplController.this.adImplRef.get();
                        }
                        if (mmAdImpl != null) {
                            final Context context = mmAdImpl.getContext();
                            HandShake.sharedHandShake(context).updateLastVideoViewedTime(context, mmAdImpl.adType);
                        }
                    }
                    this.isHandledHtmlResponse(entity);
                }
                return true;
            }
            this.failWithInfoMessage(new MMException("Millennial ad return failed. HTTP Header value null.", 15));
            return false;
        }
        
        private void saveMacId(final HttpResponse httpResponse) {
            final Header[] headers = httpResponse.getHeaders("Set-Cookie");
            for (int length = headers.length, i = 0; i < length; ++i) {
                final String value = headers[i].getValue();
                final int index = value.indexOf("MAC-ID=");
                if (index >= 0) {
                    final int index2 = value.indexOf(59, index);
                    if (index2 > index) {
                        MMSDK.macId = value.substring(index + 7, index2);
                    }
                }
            }
        }
        
        boolean fail(final MMException ex) {
            final WeakReference<MMAdImpl> adImplRef = MMAdImplController.this.adImplRef;
            MMAdImpl mmAdImpl = null;
            if (adImplRef != null) {
                mmAdImpl = MMAdImplController.this.adImplRef.get();
            }
            MMSDK.Event.requestFailed(mmAdImpl, ex);
            return false;
        }
        
        boolean failWithErrorMessage(final MMException ex) {
            MMSDK.Log.e(ex.getMessage());
            return this.fail(ex);
        }
        
        boolean failWithInfoMessage(final MMException ex) {
            MMSDK.Log.i(ex.getMessage());
            return this.fail(ex);
        }
        
        @Override
        public void run() {
            try {
                if (MMAdImplController.this.adImplRef != null) {
                    final MMAdImpl mmAdImpl = MMAdImplController.this.adImplRef.get();
                    if (mmAdImpl == null || !MMSDK.isConnected(mmAdImpl.getContext())) {
                        this.failWithInfoMessage(new MMException("No network available, can't call for ads.", 11));
                        return;
                    }
                    if (!this.isAdUrlBuildable()) {
                        return;
                    }
                    HttpResponse value;
                    try {
                        value = new HttpGetRequest().get(this.adUrl);
                        if (value == null) {
                            this.failWithErrorMessage(new MMException("HTTP response is null.", 14));
                            return;
                        }
                    }
                    catch (Exception ex) {
                        this.failWithErrorMessage(new MMException("Ad request HTTP error. " + ex.getMessage(), 14));
                        return;
                    }
                    if (!this.isHandledResponse(value)) {
                        return;
                    }
                }
            }
            catch (Exception ex2) {
                this.failWithInfoMessage(new MMException("Request not filled, can't call for ads.", 14));
            }
            finally {
                MMAdImplController.this.requestAdRunnable = null;
            }
        }
    }
}
