package com.fusepowered.m1.android;

import android.content.res.*;
import android.os.*;
import android.graphics.drawable.*;
import android.widget.*;
import android.content.*;
import android.net.*;
import android.view.*;

class AdViewOverlayActivity extends MMBaseActivity
{
    private AdViewOverlayView adViewOverlayView;
    boolean hasFocus;
    boolean isPaused;
    private OverlaySettings settings;
    
    private void lockOrientation() {
        if (this.activity.getRequestedOrientation() == 0) {
            this.setRequestedOrientation(0);
            return;
        }
        if (this.activity.getRequestedOrientation() == 8) {
            this.setRequestedOrientation(8);
            return;
        }
        if (this.activity.getRequestedOrientation() == 9) {
            this.setRequestedOrientation(9);
            return;
        }
        this.setRequestedOrientation(1);
    }
    
    private void setRequestedOrientation(final String s) {
        if ("landscape".equalsIgnoreCase(s)) {
            this.setRequestedOrientation(0);
        }
        else if ("portrait".equalsIgnoreCase(s)) {
            this.setRequestedOrientation(1);
        }
    }
    
    @Override
    public void finish() {
        if (this.adViewOverlayView != null) {
            if (!this.adViewOverlayView.attachWebViewToLink()) {
                this.adViewOverlayView.killWebView();
            }
            this.adViewOverlayView.removeSelfAndAll();
        }
        this.adViewOverlayView = null;
        super.finish();
    }
    
    @Override
    public void onConfigurationChanged(final Configuration configuration) {
        if (this.adViewOverlayView != null) {
            this.adViewOverlayView.inlineConfigChange();
        }
        super.onConfigurationChanged(configuration);
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        this.setTheme(16973840);
        super.onCreate(bundle);
        this.requestWindowFeature(1);
        this.getWindow().setBackgroundDrawable((Drawable)new ColorDrawable(0));
        this.getWindow().clearFlags(1024);
        this.getWindow().addFlags(2048);
        this.getWindow().addFlags(16777216);
        final Intent intent = this.getIntent();
        this.settings = (OverlaySettings)intent.getParcelableExtra("settings");
        if (this.settings == null) {
            this.settings = new OverlaySettings();
        }
        this.settings.log();
        if (this.settings.orientation != null) {
            this.setRequestedOrientation(this.settings.orientation);
        }
        if (this.settings.allowOrientationChange) {
            this.unlockScreenOrientation();
        }
        else {
            this.lockOrientation();
        }
        if (intent != null) {
            final Uri data = intent.getData();
            if (data != null) {
                MMSDK.Log.v("Path: %s", data.getLastPathSegment());
            }
        }
        final RelativeLayout contentView = new RelativeLayout((Context)this.activity);
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-2, -2);
        layoutParams.addRule(13);
        contentView.setId(885394873);
        contentView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        contentView.addView((View)(this.adViewOverlayView = new AdViewOverlayView(this, this.settings)));
        this.setContentView((View)contentView);
        if (this.getLastNonConfigurationInstance() == null) {
            if (this.settings.isExpanded()) {
                if (this.adViewOverlayView.adImpl != null && this.adViewOverlayView.adImpl.controller != null && this.adViewOverlayView.adImpl.controller.webView != null) {
                    this.adViewOverlayView.adImpl.controller.webView.setMraidExpanded();
                }
                if (this.settings.hasExpandUrl()) {
                    this.adViewOverlayView.getWebContent(this.settings.urlToLoad);
                }
            }
            else if (!this.settings.isExpanded()) {
                this.adViewOverlayView.loadWebContent(this.settings.content, this.settings.adUrl);
            }
        }
        this.settings.orientation = null;
    }
    
    @Override
    protected void onDestroy() {
        super.onDestroy();
        MMSDK.Log.d("Overlay onDestroy");
    }
    
    @Override
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (n == 4 && keyEvent.getRepeatCount() == 0) {
            this.adViewOverlayView.finishOverlayWithAnimation();
            return true;
        }
        return super.onKeyDown(n, keyEvent);
    }
    
    @Override
    protected void onPause() {
        this.isPaused = true;
        MMSDK.Log.d("Overlay onPause");
        final BridgeMMMedia.Audio sharedAudio = BridgeMMMedia.Audio.sharedAudio((Context)this.activity);
        Label_0031: {
            if (sharedAudio == null) {
                break Label_0031;
            }
            synchronized (this) {
                sharedAudio.stop();
                // monitorexit(this)
                BridgeMMMicrophone.Recorder.getInstance().stopRecording();
                if (this.adViewOverlayView != null) {
                    this.adViewOverlayView.pauseVideo();
                    if (this.adViewOverlayView.adImpl != null && this.adViewOverlayView.adImpl.controller != null && this.adViewOverlayView.adImpl.controller.webView != null) {
                        this.adViewOverlayView.adImpl.controller.webView.onPauseWebView();
                    }
                }
                this.setResult(0);
                super.onPause();
            }
        }
    }
    
    @Override
    protected void onRestoreInstanceState(final Bundle bundle) {
        super.onRestoreInstanceState(bundle);
    }
    
    @Override
    protected void onResume() {
        this.isPaused = false;
        MMSDK.Log.d("Overlay onResume");
        if (this.adViewOverlayView != null) {
            if (this.hasFocus) {
                this.adViewOverlayView.resumeVideo();
            }
            this.adViewOverlayView.addBlackView();
            if (this.adViewOverlayView.adImpl != null && this.adViewOverlayView.adImpl.controller != null && this.adViewOverlayView.adImpl.controller.webView != null) {
                this.adViewOverlayView.adImpl.controller.webView.onResumeWebView();
            }
        }
        super.onResume();
    }
    
    @Override
    public Object onRetainNonConfigurationInstance() {
        return this.adViewOverlayView.getNonConfigurationInstance();
    }
    
    @Override
    protected void onSaveInstanceState(final Bundle bundle) {
        bundle.putInt("adViewId", this.adViewOverlayView.getId());
        super.onSaveInstanceState(bundle);
    }
    
    @Override
    protected void onStop() {
        super.onStop();
    }
    
    @Override
    public void onWindowFocusChanged(final boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        this.hasFocus = hasFocus;
        if (!this.isPaused && hasFocus) {
            this.adViewOverlayView.resumeVideo();
        }
    }
    
    void setAllowOrientationChange(final boolean allowOrientationChange) {
        this.settings.allowOrientationChange = allowOrientationChange;
        if (allowOrientationChange) {
            this.unlockScreenOrientation();
            return;
        }
        this.lockOrientation();
    }
    
    void setRequestedOrientationLandscape() {
        this.settings.orientation = "landscape";
        this.settings.allowOrientationChange = false;
        this.setRequestedOrientation(0);
    }
    
    void setRequestedOrientationPortrait() {
        this.settings.orientation = "portrait";
        this.settings.allowOrientationChange = false;
        this.setRequestedOrientation(1);
    }
    
    void unlockScreenOrientation() {
        this.setRequestedOrientation(-1);
    }
}
