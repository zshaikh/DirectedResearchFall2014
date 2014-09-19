package com.fusepowered.m1.android;

import android.os.*;
import java.util.concurrent.*;
import android.graphics.*;
import android.text.*;
import com.fusepowered.m1.google.gson.*;
import android.util.*;
import org.json.*;
import java.util.*;
import java.lang.ref.*;
import android.content.pm.*;
import android.app.*;
import android.content.*;
import android.widget.*;
import android.webkit.*;
import android.view.*;

class MMWebView extends WebView
{
    static final String JS_INTERFACE_NAME = "interface";
    static final String PROPERTY_BANNER_TYPE = "PROPERTY_BANNER_TYPE";
    static final String PROPERTY_EXPANDING = "PROPERTY_EXPANDING";
    static final String PROPERTY_STATE = "PROPERTY_STATE";
    private HttpMMHeaders _lastHeaders;
    long creatorAdImplId;
    int currentColor;
    String currentUrl;
    boolean hadFirstRecordingCreation;
    boolean hadFirstSpeechKitCreation;
    volatile boolean isExpanding;
    boolean isSendingSize;
    volatile boolean isUserClosedResize;
    volatile boolean isVisible;
    volatile String mraidState;
    int oldHeight;
    int oldWidth;
    volatile boolean requiresPreAdSizeFix;
    final GestureDetector tapDetector;
    final String userAgent;
    
    public MMWebView(final Context context, final long creatorAdImplId) {
        super(context);
        this.isSendingSize = true;
        this.oldHeight = -50;
        this.oldWidth = -50;
        this.isVisible = false;
        this.hadFirstSpeechKitCreation = false;
        this.hadFirstRecordingCreation = false;
        MMSDK.Log.d("Setting isExpanding in constructor to " + this.isExpanding);
        this.setWillNotDraw(false);
        this.setHorizontalScrollBarEnabled(false);
        this.setVerticalScrollBarEnabled(false);
        this.setOnTouchListener((View$OnTouchListener)new WebTouchListener(this));
        this.mraidState = "loading";
        this.creatorAdImplId = creatorAdImplId;
        MMSDK.Log.v("Assigning WebView internal id: %d", this.creatorAdImplId);
        this.setId((int)(15063L + this.creatorAdImplId));
        if (HandShake.sharedHandShake(context).hardwareAccelerationEnabled) {
            this.enableHardwareAcceleration();
        }
        else {
            this.disableAllAcceleration();
        }
        this.setMediaPlaybackRequiresUserGesture(false);
        this.setWebChromeClient((WebChromeClient)new MyWebChromeClient(this));
        final WebSettings settings = this.getSettings();
        this.userAgent = settings.getUserAgentString();
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(-1);
        settings.setDefaultTextEncodingName("UTF-8");
        settings.setLoadWithOverviewMode(true);
        settings.setGeolocationEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        this.tapDetector = new GestureDetector(context.getApplicationContext(), (GestureDetector$OnGestureListener)new WebGestureListener(this));
    }
    
    private boolean hasDefaultResizeParams() {
        return this.oldWidth == -50 && this.oldHeight == -50;
    }
    
    private boolean isInterstitial() {
        return this.getBanner() == null;
    }
    
    private boolean needsSamsungJBOpenGlFixNoAcceleration() {
        final int int1 = Integer.parseInt(Build$VERSION.SDK);
        return "Nexus S".equals(Build.MODEL) && "samsung".equals(Build.MANUFACTURER) && (int1 == 16 || int1 == 17);
    }
    
    boolean allowMicrophoneCreationCommands() {
        if (this.hadFirstRecordingCreation) {
            return this.allowRecordingCommands();
        }
        this.hadFirstRecordingCreation = true;
        return this.isInterstitial() && this.isVisible;
    }
    
    boolean allowRecordingCommands() {
        return this.hasWindowFocus() && this.isInterstitial();
    }
    
    boolean allowSpeechCreationCommands() {
        if (this.hadFirstSpeechKitCreation) {
            return this.allowRecordingCommands();
        }
        this.hadFirstSpeechKitCreation = true;
        return this.isInterstitial() && this.isVisible;
    }
    
    void animateTransition(final MMAdImpl mmAdImpl) {
        final FutureTask futureTask = new FutureTask((Callable<V>)new Callable<Void>() {
            @Override
            public Void call() {
                try {
                    MMWebView.this.buildDrawingCache();
                    final Bitmap drawingCache = MMWebView.this.getDrawingCache();
                    if (drawingCache != null) {
                        mmAdImpl.prepareTransition(Bitmap.createBitmap(drawingCache));
                    }
                    MMWebView.this.destroyDrawingCache();
                    return null;
                }
                catch (Exception ex) {
                    MMSDK.Log.d(ex);
                    return null;
                }
            }
        });
        MMSDK.runOnUiThread(futureTask);
        try {
            futureTask.get();
        }
        catch (InterruptedException ex) {}
        catch (ExecutionException ex2) {}
    }
    
    boolean canScroll() {
        return this.getParent() instanceof MMAdView;
    }
    
    public void destroy() {
        while (true) {
            try {
                this.resetSpeechKit();
                super.destroy();
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    void disableAllAcceleration() {
        try {
            WebView.class.getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, 0, null);
            MMSDK.Log.d("Remove allAcceleration");
        }
        catch (Exception ex) {}
    }
    
    void enableHardwareAcceleration() {
        if (this.needsSamsungJBOpenGlFixNoAcceleration()) {
            return;
        }
        try {
            WebView.class.getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, 2, null);
            MMSDK.Log.d("Enabled hardwareAcceleration");
        }
        catch (Exception ex) {}
    }
    
    void enableSendingSize() {
        this.isSendingSize = true;
    }
    
    void enableSoftwareAcceleration() {
        if (this.needsSamsungJBOpenGlFixNoAcceleration()) {
            return;
        }
        try {
            WebView.class.getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, 1, null);
            MMSDK.Log.d("Enable softwareAcceleration");
        }
        catch (Exception ex) {}
    }
    
    Activity getActivity() {
        synchronized (this) {
            final ViewParent parent = this.getParent();
            if (parent == null || !(parent instanceof ViewGroup)) {
                return null;
            }
            final Context context = ((ViewGroup)parent).getContext();
            if (context == null || !(context instanceof MMActivity)) {
                return null;
            }
            return (MMActivity)context;
            mmActivity = null;
            return mmActivity;
        }
    }
    
    String getAdId() {
        if (this._lastHeaders != null && !TextUtils.isEmpty((CharSequence)this._lastHeaders.acid)) {
            return this._lastHeaders.acid;
        }
        return "DEFAULT_AD_ID";
    }
    
    AdViewOverlayView getAdViewOverlayView() {
        synchronized (this) {
            final ViewParent parent = this.getParent();
            AdViewOverlayView adViewOverlayView;
            if (parent != null && parent instanceof AdViewOverlayView) {
                adViewOverlayView = (AdViewOverlayView)parent;
            }
            else {
                adViewOverlayView = null;
            }
            return adViewOverlayView;
        }
    }
    
    MMAdView getBanner() {
        synchronized (this) {
            final ViewParent parent = this.getParent();
            MMAdView mmAdView;
            if (parent != null && parent instanceof MMAdView) {
                mmAdView = (MMAdView)parent;
            }
            else {
                mmAdView = null;
            }
            return mmAdView;
        }
    }
    
    HttpMMHeaders getLastHeaders() {
        return this._lastHeaders;
    }
    
    MMAdView getMMAdView() {
        if (this.getParent() instanceof MMAdView) {
            return (MMAdView)this.getParent();
        }
        return null;
    }
    
    MMLayout getMMLayout() {
        if (this.getParent() instanceof MMLayout) {
            return (MMLayout)this.getParent();
        }
        return null;
    }
    
    String getUserAgent() {
        return this.userAgent;
    }
    
    boolean isCurrentParent(final long lng) {
        final ViewParent parent = this.getParent();
        if (parent == null) {
            return false;
        }
        MMSDK.Log.w("Id check for parent: " + lng + " versus " + ((MMLayout)parent).adImpl.internalId);
        return lng == ((MMLayout)parent).adImpl.internalId;
    }
    
    boolean isMraidResized() {
        return "resized".equals(this.mraidState);
    }
    
    boolean isOriginalUrl(final String s) {
        return (!TextUtils.isEmpty((CharSequence)this.currentUrl) && s.equals(this.currentUrl + "?")) || s.equals(this.currentUrl + "#");
    }
    
    boolean isParentBannerAd() {
        return this.getParent() != null && ((ViewGroup)this.getParent()) instanceof MMAdView;
    }
    
    public void loadDataWithBaseURL(final String currentUrl, final String s, final String s2, final String s3, final String s4) {
        super.loadDataWithBaseURL(this.currentUrl = currentUrl, s, s2, s3, s4);
    }
    
    public void loadUrl(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return;
        }
        if (s.startsWith("http")) {
            this.currentUrl = s;
        }
        MMSDK.Log.v("loadUrl @@" + s);
        if (MMSDK.isUiThread()) {
            try {
                super.loadUrl(s);
                return;
            }
            catch (Exception ex) {
                return;
            }
        }
        MMSDK.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                MMWebView.this.loadUrl(s);
            }
        });
    }
    
    protected void onMeasure(final int n, final int n2) {
        super.onMeasure(n, n2);
        final int size = View$MeasureSpec.getSize(n2);
        final int size2 = View$MeasureSpec.getSize(n);
        int measuredHeight = this.getMeasuredHeight();
        if (measuredHeight == 0) {
            measuredHeight = size;
        }
        if (this.requiresPreAdSizeFix) {
            this.setMeasuredDimension(1, 1);
            return;
        }
        this.setMeasuredDimension(size2, measuredHeight);
    }
    
    public void onPauseWebView() {
        if (Build$VERSION.SDK_INT < 11) {
            return;
        }
        try {
            WebView.class.getMethod("onPause", (Class<?>[])new Class[0]).invoke(this, new Object[0]);
        }
        catch (Exception ex) {
            MMSDK.Log.w("No onPause()");
        }
    }
    
    public void onResumeWebView() {
        if (Build$VERSION.SDK_INT < 11) {
            return;
        }
        try {
            WebView.class.getMethod("onResume", (Class<?>[])new Class[0]).invoke(this, new Object[0]);
        }
        catch (Exception ex) {
            MMSDK.Log.w("No onResume()");
        }
    }
    
    protected void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
        final int[] array = new int[2];
        this.getLocationInWindow(array);
        final DisplayMetrics metrics = MMSDK.getMetrics(this.getContext());
        if (metrics != null) {
            final String json = new Gson().toJson(new DTOAdViewLayout((int)(array[0] / metrics.density), (int)(array[1] / metrics.density), (int)(n / metrics.density), (int)(n2 / metrics.density)));
            if (this.isSendingSize) {
                this.loadUrl("javascript:MMJS.sdk.setAdSize(" + json + ");");
                MMSDK.Log.w(" @@@ SENDING IT!!!@@@@@  adSize ! " + json);
                if (this.getHeight() != 1 || this.getWidth() != 1) {
                    MMSDK.runOnUiThreadDelayed(new Runnable() {
                        @Override
                        public void run() {
                            MMWebView.this.isSendingSize = false;
                        }
                    }, 800L);
                }
            }
            else {
                MMSDK.Log.w(" @@@ Not sending adSize ! " + json);
            }
        }
        super.onSizeChanged(n, n2, n3, n4);
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.requestFocus();
        }
        if (this.tapDetector != null) {
            this.tapDetector.onTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() == 1) {
            MMSDK.Log.v("Ad clicked: action=%d x=%f y=%f", motionEvent.getAction(), motionEvent.getX(), motionEvent.getY());
        }
        return super.onTouchEvent(motionEvent);
    }
    
    void removeFromParent() {
        final ViewParent parent = this.getParent();
        if (parent != null && parent instanceof ViewGroup) {
            ((ViewGroup)parent).removeView((View)this);
        }
    }
    
    void resetSpeechKit() {
        BridgeMMSpeechkit.releaseSpeechKit();
        this.hadFirstSpeechKitCreation = false;
        this.hadFirstRecordingCreation = false;
    }
    
    void setAdProperties(final JSONObject obj) {
        if (obj != null) {
            this.loadUrl("javascript:MMJS.sdk.setAdProperties(" + obj + ");");
        }
    }
    
    public void setBackgroundColor(final int n) {
        this.currentColor = n;
        if (n == 0) {
            this.enableSoftwareAcceleration();
        }
        super.setBackgroundColor(n);
    }
    
    void setLastHeaders(final HttpMMHeaders lastHeaders) {
        this._lastHeaders = lastHeaders;
    }
    
    void setMediaPlaybackRequiresUserGesture(final boolean b) {
        try {
            WebView.class.getMethod("setMediaPlaybackRequiresUserGesture", Boolean.TYPE).invoke(this, b);
        }
        catch (Exception ex) {}
    }
    
    void setMraidDefault() {
        this.loadUrl("javascript:MMJS.sdk.setState('default')");
        this.mraidState = "default";
        this.isSendingSize = true;
    }
    
    void setMraidExpanded() {
        MMSDK.Log.d("Changing state to EXPANDED for ---- " + this.toString() + "---- of creatorId ---" + this.creatorAdImplId + " ----");
        this.loadUrl("javascript:MMJS.sdk.setState('expanded');");
        this.mraidState = "expanded";
        this.hadFirstSpeechKitCreation = false;
        this.hadFirstRecordingCreation = false;
        this.isSendingSize = true;
    }
    
    void setMraidHidden() {
        this.loadUrl("javascript:MMJS.sdk.setState('hidden')");
        this.mraidState = "hidden";
    }
    
    void setMraidPlacementTypeInline() {
        this.loadUrl("javascript:MMJS.sdk.setPlacementType('inline');");
    }
    
    void setMraidPlacementTypeInterstitial() {
        this.loadUrl("javascript:MMJS.sdk.setPlacementType('interstitial');");
    }
    
    void setMraidReady() {
        this.loadUrl("javascript:MMJS.sdk.ready();");
    }
    
    void setMraidResize(final DTOResizeParameters obj) {
        synchronized (this) {
            if (MMSDK.hasSetTranslationMethod()) {
                final MMAdView mmAdView = this.getMMAdView();
                this.isUserClosedResize = false;
                MMSDK.Log.d("New DTOResizeParameters = " + obj);
                if (mmAdView != null) {
                    MMSDK.runOnUiThread(new Runnable() {
                        private void handleMraidResize(final DTOResizeParameters dtoResizeParameters) {
                            final MMAdView val$adView = mmAdView;
                            val$adView.getClass();
                            final MMAdView.BannerBounds bannerBounds = val$adView.new BannerBounds(dtoResizeParameters);
                            this.setUnresizeParameters();
                            bannerBounds.modifyLayoutParams(MMWebView.this.getLayoutParams());
                        }
                        
                        private void setUnresizeParameters() {
                            if (MMWebView.this.hasDefaultResizeParams()) {
                                final ViewGroup$LayoutParams layoutParams = MMWebView.this.getLayoutParams();
                                MMWebView.this.oldWidth = layoutParams.width;
                                MMWebView.this.oldHeight = layoutParams.height;
                                if (MMWebView.this.oldWidth <= 0) {
                                    MMWebView.this.oldWidth = MMWebView.this.getWidth();
                                }
                                if (MMWebView.this.oldHeight <= 0) {
                                    MMWebView.this.oldHeight = MMWebView.this.getHeight();
                                }
                            }
                        }
                        
                        @Override
                        public void run() {
                            synchronized (MMWebView.this) {
                                MMWebView.this.isSendingSize = true;
                                mmAdView.handleMraidResize(obj);
                                this.handleMraidResize(obj);
                                MMWebView.this.loadUrl("javascript:MMJS.sdk.setState('resized');");
                                MMWebView.this.mraidState = "resized";
                            }
                        }
                    });
                }
            }
        }
    }
    
    void setMraidViewableHidden() {
        this.loadUrl("javascript:MMJS.sdk.setViewable(false)");
        this.isVisible = false;
    }
    
    void setMraidViewableVisible() {
        this.loadUrl("javascript:MMJS.sdk.setViewable(true)");
        this.isVisible = true;
    }
    
    void setWebViewContent(final String s, final String s2, final Context context) {
        if (s == null || s2 == null) {
            return;
        }
        final String substring = s2.substring(0, 1 + s2.lastIndexOf("/"));
        this.resetSpeechKit();
        String injectMraidJs = s;
        if (MRaid.hasMraidLocally(context)) {
            injectMraidJs = MRaid.injectMraidJs(context, injectMraidJs);
        }
        else {
            MMSDK.Log.e("MMJS is not downloaded");
        }
        final String s3 = injectMraidJs;
        if (MMSDK.logLevel >= 5) {
            MMSDK.Log.v("Received ad with base url %s.", s2);
            MMSDK.Log.v(s);
        }
        MMSDK.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (HandShake.sharedHandShake(MMWebView.this.getContext()).hardwareAccelerationEnabled) {
                    MMWebView.this.enableHardwareAcceleration();
                }
                else if (MMWebView.this.currentColor == 0) {
                    MMWebView.this.enableSoftwareAcceleration();
                }
                else {
                    MMWebView.this.disableAllAcceleration();
                }
                MMWebView.this.isSendingSize = true;
                MMWebView.this.loadDataWithBaseURL(substring, s3, "text/html", "UTF-8", null);
            }
        });
    }
    
    void setWebViewContent(final String str, final String s, final MMAdImpl mmAdImpl) {
        if (str == null || s == null || mmAdImpl == null) {
            return;
        }
        this.unresizeToDefault(mmAdImpl);
        this.resetSpeechKit();
        final String substring = s.substring(0, 1 + s.lastIndexOf("/"));
        if (MMSDK.logLevel >= 5) {
            MMSDK.Log.v("Received ad with base url %s.", substring);
            MMSDK.Log.v(str);
        }
        if (mmAdImpl.isTransitionAnimated()) {
            this.animateTransition(mmAdImpl);
        }
        String s2;
        if (mmAdImpl.ignoreDensityScaling) {
            s2 = "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>" + str;
        }
        else {
            s2 = str;
        }
        if (MRaid.hasMraidLocally(mmAdImpl.getContext())) {
            s2 = MRaid.injectMraidJs(mmAdImpl.getContext(), s2);
        }
        else {
            MMSDK.Log.e("MMJS is not downloaded");
        }
        MMSDK.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (HandShake.sharedHandShake(MMWebView.this.getContext()).hardwareAccelerationEnabled) {
                    MMWebView.this.enableHardwareAcceleration();
                }
                else if (MMWebView.this.currentColor == 0) {
                    MMWebView.this.enableSoftwareAcceleration();
                }
                else {
                    MMWebView.this.disableAllAcceleration();
                }
                final MMAd callingAd = mmAdImpl.getCallingAd();
                if (callingAd != null && callingAd instanceof MMLayout) {
                    ((MMLayout)callingAd).removeVideo();
                }
                MMWebView.this.isSendingSize = true;
                MMWebView.this.loadDataWithBaseURL(substring, s2, "text/html", "UTF-8", null);
            }
        });
    }
    
    void setmicrophoneAudioLevelChange(final double d) {
        this.loadUrl("javascript:MMJS.sdk.microphoneAudioLevelChange(" + d + ")");
    }
    
    void setmicrophoneStateChange(final String str) {
        this.loadUrl("javascript:MMJS.sdk.microphoneStateChange('" + str + "')");
    }
    
    public String toString() {
        return "MMWebView originally from(" + this.creatorAdImplId + ") MRaidState(" + this.mraidState + ")." + super.toString();
    }
    
    void unresizeToDefault(final MMAdImpl mmAdImpl) {
        synchronized (this) {
            if (MMSDK.hasSetTranslationMethod() && this.isMraidResized() && mmAdImpl != null) {
                final MMAd callingAd = mmAdImpl.getCallingAd();
                if (callingAd instanceof MMAdView) {
                    final MMAdView mmAdView = (MMAdView)callingAd;
                    this.isUserClosedResize = true;
                    MMSDK.runOnUiThread(new Runnable() {
                        void handleUnresize() {
                            if (MMSDK.hasSetTranslationMethod() && !MMWebView.this.hasDefaultResizeParams()) {
                                final ViewGroup$LayoutParams layoutParams = MMWebView.this.getLayoutParams();
                                layoutParams.width = MMWebView.this.oldWidth;
                                layoutParams.height = MMWebView.this.oldHeight;
                                MMWebView.this.oldWidth = -50;
                                MMWebView.this.oldHeight = -50;
                                MMWebView.this.requestLayout();
                            }
                        }
                        
                        @Override
                        public void run() {
                            synchronized (MMWebView.this) {
                                mmAdView.handleUnresize();
                                this.handleUnresize();
                                MMWebView.this.setMraidDefault();
                                MMWebView.this.isSendingSize = true;
                                MMWebView.this.invalidate();
                            }
                        }
                    });
                }
            }
        }
    }
    
    void updateArgumentsWithSettings(final Map<String, String> map) {
        String s;
        if (this.isParentBannerAd()) {
            s = "true";
        }
        else {
            s = "false";
        }
        map.put("PROPERTY_BANNER_TYPE", s);
        map.put("PROPERTY_STATE", this.mraidState);
        map.put("PROPERTY_EXPANDING", String.valueOf(this.creatorAdImplId));
    }
    
    private static class MyWebChromeClient extends WebChromeClient
    {
        private static final String KEY_USE_GEO = "mm_use_geo_location";
        WeakReference<MMWebView> webRef;
        
        MyWebChromeClient(final MMWebView referent) {
            super();
            this.webRef = new WeakReference<MMWebView>(referent);
        }
        
        private String getApplicationName(final Context context) {
        Label_0036_Outer:
            while (true) {
                final PackageManager packageManager = context.getApplicationContext().getPackageManager();
                while (true) {
                    while (true) {
                        try {
                            final ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
                            if (applicationInfo != null) {
                                final CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
                                return (String)applicationLabel;
                            }
                        }
                        catch (PackageManager$NameNotFoundException ex) {
                            final ApplicationInfo applicationInfo = null;
                            continue Label_0036_Outer;
                        }
                        break;
                    }
                    final CharSequence applicationLabel = "This app";
                    continue;
                }
            }
        }
        
        private boolean isFirstGeoRequest() {
            final MMWebView mmWebView = this.webRef.get();
            return mmWebView != null && !mmWebView.getContext().getSharedPreferences("MillennialMediaSettings", 0).contains("mm_use_geo_location");
        }
        
        private boolean retrieveUseGeo() {
            final MMWebView mmWebView = this.webRef.get();
            return mmWebView != null && mmWebView.getContext().getSharedPreferences("MillennialMediaSettings", 0).getBoolean("mm_use_geo_location", false);
        }
        
        private void saveUseGeo(final boolean b) {
            final MMWebView mmWebView = this.webRef.get();
            if (mmWebView != null) {
                final SharedPreferences$Editor edit = mmWebView.getContext().getSharedPreferences("MillennialMediaSettings", 0).edit();
                edit.putBoolean("mm_use_geo_location", b);
                edit.commit();
            }
        }
        
        public void onConsoleMessage(final String s, final int n, final String s2) {
            super.onConsoleMessage(s, n, s2);
        }
        
        public void onGeolocationPermissionsShowPrompt(final String s, final GeolocationPermissions$Callback geolocationPermissions$Callback) {
            if (this.isFirstGeoRequest()) {
                if (this.retrieveUseGeo()) {
                    geolocationPermissions$Callback.invoke(s, true, true);
                }
                else {
                    final MMWebView mmWebView = this.webRef.get();
                    if (mmWebView != null) {
                        final Activity activity = mmWebView.getActivity();
                        if (activity != null) {
                            final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)activity);
                            alertDialog$Builder.setTitle((CharSequence)this.getApplicationName((Context)activity));
                            alertDialog$Builder.setMessage((CharSequence)"Would like to use your Current Location.").setPositiveButton((CharSequence)"Allow", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                                public void onClick(final DialogInterface dialogInterface, final int n) {
                                    MyWebChromeClient.this.saveUseGeo(true);
                                    geolocationPermissions$Callback.invoke(s, true, true);
                                }
                            }).setNegativeButton((CharSequence)"Don't Allow", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                                public void onClick(final DialogInterface dialogInterface, final int n) {
                                    MyWebChromeClient.this.saveUseGeo(false);
                                    geolocationPermissions$Callback.invoke(s, false, false);
                                }
                            });
                            alertDialog$Builder.create().show();
                        }
                    }
                }
                return;
            }
            geolocationPermissions$Callback.invoke(s, false, false);
        }
        
        public boolean onJsAlert(final WebView webView, final String s, final String s2, final JsResult jsResult) {
            final MMWebView mmWebView = this.webRef.get();
            if (mmWebView != null) {
                if (mmWebView.getContext() != mmWebView.getContext().getApplicationContext()) {
                    return super.onJsAlert(webView, s, s2, jsResult);
                }
                Toast.makeText(mmWebView.getContext(), (CharSequence)s2, 0).show();
            }
            return true;
        }
        
        public boolean onJsBeforeUnload(final WebView webView, final String s, final String s2, final JsResult jsResult) {
            final MMWebView mmWebView = this.webRef.get();
            if (mmWebView != null) {
                if (mmWebView.getContext() != mmWebView.getContext().getApplicationContext()) {
                    return super.onJsBeforeUnload(webView, s, s2, jsResult);
                }
                Toast.makeText(mmWebView.getContext(), (CharSequence)s2, 0).show();
            }
            return true;
        }
        
        public boolean onJsConfirm(final WebView webView, final String s, final String s2, final JsResult jsResult) {
            final MMWebView mmWebView = this.webRef.get();
            if (mmWebView != null) {
                if (mmWebView.getContext() != mmWebView.getContext().getApplicationContext()) {
                    return super.onJsConfirm(webView, s, s2, jsResult);
                }
                Toast.makeText(mmWebView.getContext(), (CharSequence)s2, 0).show();
            }
            return true;
        }
        
        public boolean onJsPrompt(final WebView webView, final String s, final String s2, final String s3, final JsPromptResult jsPromptResult) {
            final MMWebView mmWebView = this.webRef.get();
            if (mmWebView != null) {
                if (mmWebView.getContext() != mmWebView.getContext().getApplicationContext()) {
                    return super.onJsPrompt(webView, s, s2, s3, jsPromptResult);
                }
                Toast.makeText(mmWebView.getContext(), (CharSequence)s2, 0).show();
            }
            return true;
        }
    }
    
    private static class WebGestureListener extends GestureDetector$SimpleOnGestureListener
    {
        WeakReference<MMWebView> webRef;
        
        public WebGestureListener(final MMWebView referent) {
            super();
            this.webRef = new WeakReference<MMWebView>(referent);
        }
        
        public boolean onSingleTapConfirmed(final MotionEvent motionEvent) {
            final MMWebView mmWebView = this.webRef.get();
            if (mmWebView != null) {
                MMSDK.Event.adSingleTap(MMAdImplController.getAdImplWithId(mmWebView.creatorAdImplId));
            }
            return false;
        }
    }
    
    private static class WebTouchListener implements View$OnTouchListener
    {
        WeakReference<MMWebView> webRef;
        
        WebTouchListener(final MMWebView referent) {
            super();
            this.webRef = new WeakReference<MMWebView>(referent);
        }
        
        public boolean onTouch(final View view, final MotionEvent motionEvent) {
            final MMWebView mmWebView = this.webRef.get();
            boolean b = motionEvent.getAction() == 2;
            if (mmWebView != null) {
                if (!b || !mmWebView.canScroll()) {
                    return false;
                }
                b = true;
            }
            return b;
        }
    }
}
