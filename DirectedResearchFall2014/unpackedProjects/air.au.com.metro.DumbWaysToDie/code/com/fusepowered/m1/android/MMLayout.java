package com.fusepowered.m1.android;

import android.content.*;
import android.util.*;
import android.widget.*;
import android.os.*;
import android.app.*;
import android.webkit.*;
import android.view.*;
import java.lang.ref.*;

abstract class MMLayout extends RelativeLayout implements MMAd, TransparentFix
{
    static final String BOTTOM_CENTER = "bottom-center";
    static final String BOTTOM_LEFT = "bottom-left";
    static final String BOTTOM_RIGHT = "bottom-right";
    static final String CENTER = "center";
    private static final int CLOSE_AREA_SIZE = 50;
    public static final String KEY_HEIGHT = "height";
    public static final String KEY_WIDTH = "width";
    static final String TOP_CENTER = "top-center";
    static final String TOP_LEFT = "top-left";
    static final String TOP_RIGHT = "top-right";
    private static boolean appInit;
    MMAdImpl adImpl;
    View blackView;
    View closeAreaView;
    private GestureDetector diagnosticDetector;
    String goalId;
    RelativeLayout inlineVideoLayout;
    InlineVideoView inlineVideoView;
    boolean isResizing;
    
    protected MMLayout(final Context context) {
        super(context);
        this.initLayout(context);
    }
    
    protected MMLayout(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.initLayout(context);
    }
    
    private void initInlineVideoTransparentFix() {
        if (this.blackView != null) {
            final ViewParent parent = this.blackView.getParent();
            if (parent != null && parent instanceof ViewGroup) {
                ((ViewGroup)parent).removeView(this.blackView);
                this.blackView = null;
            }
        }
        (this.blackView = new View(this.getContext())).setBackgroundColor(-16777216);
        this.blackView.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        if (this.inlineVideoLayout != null && this.blackView.getParent() == null) {
            this.inlineVideoLayout.addView(this.blackView);
        }
    }
    
    private void internalSetCloseArea(final String s) {
        if (this.closeAreaView == null) {
            this.closeAreaView = new View(this.getContext());
            final float density = this.getContext().getResources().getDisplayMetrics().density;
            final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int)(50.0f * density), (int)(50.0f * density));
            if ("top-right".equals(s)) {
                relativeLayout$LayoutParams.addRule(11);
            }
            else if ("top-center".equals(s)) {
                relativeLayout$LayoutParams.addRule(14);
            }
            else if ("bottom-left".equals(s)) {
                relativeLayout$LayoutParams.addRule(12);
            }
            else if ("bottom-center".equals(s)) {
                relativeLayout$LayoutParams.addRule(12);
                relativeLayout$LayoutParams.addRule(14);
            }
            else if ("bottom-right".equals(s)) {
                relativeLayout$LayoutParams.addRule(12);
                relativeLayout$LayoutParams.addRule(11);
            }
            else if ("center".equals(s)) {
                relativeLayout$LayoutParams.addRule(13);
            }
            this.closeAreaView.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
                public void onClick(final View view) {
                    MMLayout.this.closeAreaTouched();
                }
            });
            this.addView(this.closeAreaView, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        }
    }
    
    public void addBlackView() {
        this.initInlineVideoTransparentFix();
        if (this.blackView != null) {
            this.blackView.setVisibility(0);
        }
    }
    
    void addInlineVideo() {
        if (this.inlineVideoLayout != null && this.inlineVideoLayout.getParent() != null) {
            ((ViewGroup)this.inlineVideoLayout.getParent()).removeView((View)this.inlineVideoLayout);
        }
        (this.inlineVideoLayout = new RelativeLayout(this.getContext())).setId(892934232);
        if (this.inlineVideoView.getParent() != null) {
            ((ViewGroup)this.inlineVideoView.getParent()).removeView((View)this.inlineVideoView);
        }
        this.inlineVideoLayout.addView((View)this.inlineVideoView);
        if (this.blackView != null) {
            if (this.blackView.getParent() == null) {
                this.inlineVideoLayout.addView(this.blackView);
            }
            this.blackView.bringToFront();
        }
        this.addView((View)this.inlineVideoLayout, (ViewGroup$LayoutParams)this.inlineVideoView.getCustomLayoutParams());
    }
    
    boolean adjustVideo(final InlineParams inlineParams) {
        MMSDK.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (MMLayout.this.inlineVideoView != null) {
                    MMLayout.this.inlineVideoView.adjustVideo(inlineParams);
                }
            }
        });
        return false;
    }
    
    void closeAreaTouched() {
    }
    
    protected void finalize() throws Throwable {
        if (this.getId() == -1) {
            this.adImpl.isFinishing = true;
            MMSDK.Log.d("finalize() for " + this.adImpl);
            MMAdImplController.removeAdViewController(this.adImpl);
        }
    }
    
    void fullScreenVideoLayout() {
    }
    
    public String getApid() {
        return this.adImpl.getApid();
    }
    
    public boolean getIgnoresDensityScaling() {
        return this.adImpl.getIgnoresDensityScaling();
    }
    
    public RequestListener getListener() {
        return this.adImpl.getListener();
    }
    
    public MMRequest getMMRequest() {
        return this.adImpl.getMMRequest();
    }
    
    void initInlineVideo(final InlineParams inlineParams) {
        if (this.inlineVideoView != null) {
            final ViewGroup viewGroup = (ViewGroup)this.inlineVideoView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView((View)this.inlineVideoView);
            }
            if (this.inlineVideoView.isPlaying()) {
                this.inlineVideoView.stopPlayback();
            }
            this.inlineVideoView = null;
        }
        (this.inlineVideoView = new InlineVideoView(this)).initInlineVideo(inlineParams);
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        this.inlineVideoView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.addInlineVideo();
    }
    
    protected final void initLayout(final Context context) {
        while (true) {
            try {
                MMSDK.Log.i("Initializing MMLayout.");
                MMSDK.checkPermissions(context);
                MMSDK.checkActivity(context);
                this.diagnosticDetector = new GestureDetector(context.getApplicationContext(), (GestureDetector$OnGestureListener)new LayoutGestureListener(this));
                if (!MMLayout.appInit) {
                    MMSDK.Log.d("********** Millennial Device Id *****************");
                    MMSDK.Log.d(MMSDK.getMMdid(context));
                    MMSDK.Log.d("Use the above identifier to register this device and receive test ads. Test devices can be registered and administered through your account at http://mmedia.com.");
                    MMSDK.Log.d("*************************************************");
                    AdCache.cleanCache(context);
                    MMLayout.appInit = true;
                }
            }
            catch (Exception ex) {
                MMSDK.Log.e("There was an exception initializing the MMAdView. %s", ex.getMessage());
                ex.printStackTrace();
                continue;
            }
            break;
        }
    }
    
    boolean isVideoPlayingStreaming() {
        return this.inlineVideoView != null && this.inlineVideoView.isPlayingStreaming();
    }
    
    void loadUrl(final String s) {
        if (MMSDK.isConnected(this.getContext())) {
            if (this.adImpl.controller != null) {
                this.adImpl.controller.loadUrl(s);
            }
            return;
        }
        MMSDK.Log.e("No network available, can't load overlay.");
    }
    
    void loadWebContent(final String s, final String s2) {
        if (MMSDK.isConnected(this.getContext())) {
            if (this.adImpl.controller != null) {
                this.adImpl.controller.loadWebContent(s, s2);
            }
            return;
        }
        MMSDK.Log.e("No network available, can't load overlay.");
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.isInEditMode()) {
            MMSDK.Log.d("onAttachedToWindow for " + this.adImpl);
            if (this.getId() == -1) {
                MMSDK.Log.w("MMAd missing id from getId(). Performance will be affected for configuration changes.");
            }
            if (!this.isResizing) {
                MMAdImplController.assignAdViewController(this.adImpl);
            }
            if (this.inlineVideoLayout != null) {
                this.inlineVideoLayout.bringToFront();
            }
            if (this.adImpl != null && this.adImpl.controller != null && this.adImpl.controller.webView != null) {
                this.adImpl.controller.webView.enableSendingSize();
            }
        }
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        MMSDK.Log.d("onDetachedFromWindow for" + this.adImpl);
        if (!this.isResizing) {
            MMAdImplController.removeAdViewController(this.adImpl);
        }
    }
    
    protected void onRestoreInstanceState(final Parcelable parcelable) {
        final Bundle bundle = (Bundle)parcelable;
        final long internalId = this.adImpl.internalId;
        this.adImpl.internalId = bundle.getLong("MMAdImplId");
        this.adImpl.linkForExpansionId = bundle.getLong("MMAdImplLinkedId");
        MMSDK.Log.d("onRestoreInstanceState replacing adImpl-" + internalId + " with " + this.adImpl + " id=" + this.getId());
        final String string = bundle.getString("inlineVideoViewGson");
        if (string != null) {
            this.initInlineVideo(InlineVideoView.InlineParams.getInlineParams(string));
        }
        super.onRestoreInstanceState(bundle.getParcelable("super"));
    }
    
    protected Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        MMSDK.Log.d("onSaveInstanceState saving - " + this.adImpl + " id=" + this.getId());
        final Bundle bundle = new Bundle();
        bundle.putParcelable("super", super.onSaveInstanceState());
        bundle.putLong("MMAdImplId", this.adImpl.internalId);
        bundle.putLong("MMAdImplLinkedId", this.adImpl.linkForExpansionId);
        if (this.inlineVideoView != null) {
            if (this.inlineVideoView.isPlaying()) {
                this.inlineVideoView.inlineParams.currentPosition = this.inlineVideoView.getCurrentPosition();
            }
            bundle.putString("inlineVideoViewGson", this.inlineVideoView.getGsonState());
        }
        return (Parcelable)bundle;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        return this.diagnosticDetector.onTouchEvent(motionEvent) || !this.isClickable() || super.onTouchEvent(motionEvent);
    }
    
    @Deprecated
    public void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        Label_0263: {
            if (!b) {
                break Label_0263;
            }
            if (this.inlineVideoView != null) {
                this.inlineVideoView.resumeVideo();
            }
        Label_0115_Outer:
            while (true) {
                MMSDK.Log.d("Window Focus Changed. For %s, Window in focus?: %b Controllers: %s", this.adImpl, b, MMAdImplController.controllersToString());
                Label_0280: {
                    if (this.adImpl != null && this.adImpl.controller != null && this.adImpl.controller.webView != null) {
                        if (!b) {
                            break Label_0280;
                        }
                        this.adImpl.controller.webView.onResumeWebView();
                        this.adImpl.controller.webView.setMraidViewableVisible();
                    }
                Block_16_Outer:
                    while (true) {
                        if (!b && this.getContext() instanceof Activity) {
                            final Activity activity = (Activity)this.getContext();
                            if (activity == null || (activity.isFinishing() && this.adImpl != null)) {
                                this.adImpl.isFinishing = true;
                                MMSDK.Log.d("Window Focus Changed.removing " + this.adImpl);
                                if (this.adImpl.controller != null && this.adImpl.controller.webView != null) {
                                    this.adImpl.controller.webView.setMraidHidden();
                                }
                                MMAdImplController.removeAdViewController(this.adImpl);
                            }
                        }
                        final BridgeMMMedia.Audio sharedAudio = BridgeMMMedia.Audio.sharedAudio(this.getContext());
                        Label_0256: {
                            if (sharedAudio == null) {
                                break Label_0256;
                            }
                            synchronized (this) {
                                sharedAudio.stop();
                                // monitorexit(this)
                                BridgeMMMicrophone.Recorder.getInstance().stopRecording();
                                return;
                                while (true) {
                                    this.inlineVideoView.pauseVideo();
                                    continue Label_0115_Outer;
                                    BridgeMMSpeechkit.releaseSpeechKit();
                                    this.adImpl.controller.webView.setMraidViewableHidden();
                                    this.adImpl.controller.webView.onPauseWebView();
                                    continue Block_16_Outer;
                                    continue;
                                }
                            }
                            // iftrue(Label_0023:, this.inlineVideoView == null)
                        }
                        break;
                    }
                }
                break;
            }
        }
    }
    
    void pauseVideo() {
        if (this.inlineVideoView != null) {
            this.inlineVideoView.pauseVideo();
        }
    }
    
    void playVideo() {
        if (this.inlineVideoView != null) {
            this.inlineVideoView.playVideo();
        }
    }
    
    public void removeBlackView() {
        if (this.blackView != null) {
            this.blackView.setVisibility(4);
        }
    }
    
    void removeCloseTouchDelegate() {
        if (this.closeAreaView != null && this.closeAreaView.getParent() != null && this.closeAreaView.getParent() instanceof ViewGroup) {
            ((ViewGroup)this.closeAreaView.getParent()).removeView(this.closeAreaView);
            this.closeAreaView = null;
        }
    }
    
    void removeVideo() {
        if (this.inlineVideoView != null) {
            this.inlineVideoView.removeVideo();
            this.inlineVideoView = null;
        }
    }
    
    void repositionVideoLayout() {
    }
    
    void resumeVideo() {
        if (this.inlineVideoView != null) {
            this.inlineVideoView.resumeVideo();
        }
    }
    
    public void setApid(final String apid) {
        this.adImpl.setApid(apid);
    }
    
    void setCloseArea(final String s) {
        this.post((Runnable)new Runnable() {
            @Override
            public void run() {
                MMLayout.this.internalSetCloseArea(s);
            }
        });
    }
    
    public void setIgnoresDensityScaling(final boolean ignoresDensityScaling) {
        this.adImpl.setIgnoresDensityScaling(ignoresDensityScaling);
    }
    
    public void setListener(final RequestListener listener) {
        this.adImpl.setListener(listener);
    }
    
    public void setMMRequest(final MMRequest mmRequest) {
        this.adImpl.setMMRequest(mmRequest);
    }
    
    void setMediaPlaybackRequiresUserGesture(final boolean b) {
        try {
            WebView.class.getMethod("setMediaPlaybackRequiresUserGesture", Boolean.TYPE).invoke(this, b);
        }
        catch (Exception ex) {}
    }
    
    void setVideoSource(final String videoSource) {
        if (this.inlineVideoView != null) {
            this.inlineVideoView.setVideoSource(videoSource);
        }
    }
    
    void stopVideo() {
        if (this.inlineVideoView != null) {
            this.inlineVideoView.stopVideo();
        }
    }
    
    class LayoutAdProperties extends AdProperties
    {
        LayoutAdProperties(final Context context) {
            super(context);
        }
        
        @Override
        String getAdDpiIndependentHeight() {
            return String.valueOf((int)(MMLayout.this.getHeight() / MMSDK.getDensity(this.getContext())));
        }
        
        @Override
        String getAdDpiIndependentWidth() {
            return String.valueOf((int)(MMLayout.this.getWidth() / MMSDK.getDensity(this.getContext())));
        }
    }
    
    private static class LayoutGestureListener extends GestureDetector$SimpleOnGestureListener
    {
        WeakReference<MMLayout> layoutRef;
        
        public LayoutGestureListener(final MMLayout referent) {
            super();
            this.layoutRef = new WeakReference<MMLayout>(referent);
        }
        
        public boolean onFling(final MotionEvent motionEvent, final MotionEvent motionEvent2, final float a, final float a2) {
            if (motionEvent == null || motionEvent2 == null) {
                return false;
            }
            if (Math.abs((int)(motionEvent2.getX() - motionEvent.getX())) > 200 && Math.abs(a) > Math.abs(a2)) {
                if (a > 0.0f) {
                    if (MMSDK.logLevel == 0) {
                        MMSDK.Log.i("Enabling debug and verbose logging.");
                        MMSDK.logLevel = 3;
                    }
                    else {
                        MMSDK.Log.i("Disabling debug and verbose logging.");
                        MMSDK.logLevel = 0;
                    }
                }
                else {
                    final MMLayout mmLayout = this.layoutRef.get();
                    if (mmLayout != null) {
                        MMSDK.printDiagnostics(mmLayout.adImpl);
                    }
                }
                return true;
            }
            return false;
        }
    }
    
    class MMLayoutMMAdImpl extends MMAdImpl
    {
        public MMLayoutMMAdImpl(final Context context) {
            super(context);
            this.adProperties = new LayoutAdProperties(this.getContext());
        }
        
        public void addView(final MMWebView obj, final RelativeLayout$LayoutParams relativeLayout$LayoutParams) {
            MMSDK.Log.w("MMLayout adding view (" + obj + ") to " + this);
            MMLayout.this.addView((View)obj, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        }
        
        @Override
        MMLayout getCallingAd() {
            return MMLayout.this;
        }
        
        @Override
        int getId() {
            return MMLayout.this.getId();
        }
        
        public void removeView(final MMWebView mmWebView) {
            MMLayout.this.removeView((View)mmWebView);
        }
        
        public void setClickable(final boolean clickable) {
            MMLayout.this.setClickable(clickable);
        }
    }
}
