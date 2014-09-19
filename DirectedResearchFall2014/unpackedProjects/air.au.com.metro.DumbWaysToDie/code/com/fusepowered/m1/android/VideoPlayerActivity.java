package com.fusepowered.m1.android;

import android.net.*;
import android.content.*;
import java.lang.ref.*;
import android.media.*;
import android.view.*;
import android.widget.*;
import android.view.animation.*;
import android.os.*;
import org.json.*;

class VideoPlayerActivity extends MMBaseActivity implements MediaPlayer$OnCompletionListener, MediaPlayer$OnErrorListener, MediaPlayer$OnPreparedListener
{
    private static final int CONTROLS_ID = 83756563;
    private static final String END_VIDEO = "endVideo";
    protected static final int MESSAGE_CHECK_PLAYING_VIDEO = 4;
    protected static final int MESSAGE_DELAYED_BUTTON = 3;
    protected static final int MESSAGE_INACTIVITY_ANIMATION = 1;
    protected static final int MESSAGE_ONE_SECOND_CHECK = 2;
    protected static final int MESSAGE_SET_TRANSPARENCY = 5;
    private static final String RESTART_VIDEO = "restartVideo";
    AdProperties adProperties;
    View blackView;
    protected int currentVideoPosition;
    protected boolean hasBottomBar;
    private boolean hasFocus;
    boolean isPaused;
    boolean isUserPausing;
    protected boolean isVideoCompleted;
    private boolean isVideoCompletedOnce;
    String lastOverlayOrientation;
    protected VideoView mVideoView;
    Button pausePlay;
    ProgressBar progBar;
    HttpRedirection.RedirectionListenerImpl redirectListenerImpl;
    private boolean shouldSetUri;
    TransparentHandler transparentHandler;
    RelativeLayout videoLayout;
    
    VideoPlayerActivity() {
        super();
        this.shouldSetUri = true;
        this.hasBottomBar = true;
        this.currentVideoPosition = 0;
        this.transparentHandler = new TransparentHandler(this);
        this.isUserPausing = false;
    }
    
    private void initBottomBar(final RelativeLayout relativeLayout) {
        final RelativeLayout relativeLayout2 = new RelativeLayout((Context)this.activity);
        relativeLayout2.setId(83756563);
        relativeLayout2.setBackgroundColor(-16777216);
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-1, -2);
        relativeLayout2.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        layoutParams.addRule(12);
        final Button button = new Button((Context)this.activity);
        this.pausePlay = new Button((Context)this.activity);
        final Button button2 = new Button((Context)this.activity);
        button.setBackgroundResource(17301541);
        if (this.mVideoView.isPlaying()) {
            this.pausePlay.setBackgroundResource(17301539);
        }
        else {
            this.pausePlay.setBackgroundResource(17301540);
        }
        button2.setBackgroundResource(17301560);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams3 = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams.addRule(14);
        relativeLayout2.addView((View)this.pausePlay, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        relativeLayout$LayoutParams3.addRule(0, this.pausePlay.getId());
        relativeLayout2.addView((View)button);
        relativeLayout$LayoutParams2.addRule(11);
        relativeLayout2.addView((View)button2, (ViewGroup$LayoutParams)relativeLayout$LayoutParams2);
        button.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                if (VideoPlayerActivity.this.mVideoView != null) {
                    VideoPlayerActivity.this.mVideoView.seekTo(0);
                }
            }
        });
        this.pausePlay.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                if (VideoPlayerActivity.this.mVideoView != null) {
                    if (!VideoPlayerActivity.this.mVideoView.isPlaying()) {
                        if (VideoPlayerActivity.this.isVideoCompleted) {
                            VideoPlayerActivity.this.playVideo(0);
                        }
                        else if (VideoPlayerActivity.this.isUserPausing && !VideoPlayerActivity.this.isVideoCompleted) {
                            VideoPlayerActivity.this.resumeVideo();
                        }
                        else {
                            VideoPlayerActivity.this.playVideo(VideoPlayerActivity.this.currentVideoPosition);
                        }
                        VideoPlayerActivity.this.pausePlay.setBackgroundResource(17301539);
                        return;
                    }
                    VideoPlayerActivity.this.pauseVideoByUser();
                    VideoPlayerActivity.this.pausePlay.setBackgroundResource(17301540);
                }
            }
        });
        button2.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                if (VideoPlayerActivity.this.mVideoView != null) {
                    VideoPlayerActivity.this.shouldSetUri = true;
                    VideoPlayerActivity.this.dismiss();
                }
            }
        });
        relativeLayout.addView((View)relativeLayout2, (ViewGroup$LayoutParams)layoutParams);
    }
    
    private void initRedirectListener() {
        this.redirectListenerImpl = new VideoRedirectionListener(this);
    }
    
    private void initVideoListeners() {
        this.mVideoView.setOnCompletionListener((MediaPlayer$OnCompletionListener)this);
        this.mVideoView.setOnPreparedListener((MediaPlayer$OnPreparedListener)this);
        this.mVideoView.setOnErrorListener((MediaPlayer$OnErrorListener)this);
    }
    
    private void initWindow() {
        this.requestWindowFeature(1);
        this.getWindow().clearFlags(2048);
        this.getWindow().addFlags(1024);
    }
    
    private boolean isActionSupported(final String s) {
        return s != null && (s.equalsIgnoreCase("restartVideo") || s.equalsIgnoreCase("endVideo"));
    }
    
    private boolean isActionable(final Uri uri) {
        if (uri.getScheme().equalsIgnoreCase("mmsdk")) {
            if (this.isActionSupported(uri.getHost())) {
                return true;
            }
            MMSDK.Log.v("Unrecognized mmsdk:// URI %s.", uri);
        }
        return false;
    }
    
    private void makeTransparent() {
        if (!this.transparentHandler.hasMessages(4)) {
            this.transparentHandler.sendEmptyMessage(4);
        }
    }
    
    private void startVideo(final int n) {
        this.mVideoView.requestFocus();
        this.mVideoView.seekTo(n);
        if (((PowerManager)this.getSystemService("power")).isScreenOn()) {
            if (this.progBar != null) {
                this.progBar.bringToFront();
                this.progBar.setVisibility(0);
            }
            if (this.pausePlay != null) {
                this.pausePlay.setBackgroundResource(17301539);
            }
            this.mVideoView.start();
            this.makeTransparent();
        }
    }
    
    protected boolean canFadeButtons() {
        return !this.isVideoCompleted;
    }
    
    protected void dismiss() {
        MMSDK.Log.d("Video ad player closed");
        if (this.mVideoView != null) {
            if (this.mVideoView.isPlaying()) {
                this.mVideoView.stopPlayback();
            }
            this.mVideoView = null;
        }
        this.finish();
    }
    
    void dispatchButtonClick(final String url) {
        if (url != null) {
            MMSDK.Log.d("Button Click with URL: %s", url);
            this.redirectListenerImpl.url = url;
            this.redirectListenerImpl.weakContext = new WeakReference<Context>((Context)this.activity);
            if (!this.redirectListenerImpl.isHandlingMMVideo(Uri.parse(url))) {
                HttpRedirection.startActivityFromUri(this.redirectListenerImpl);
            }
        }
    }
    
    protected void enableButtons() {
    }
    
    protected void endVideo() {
        MMSDK.Log.d("End Video.");
        if (this.mVideoView != null) {
            this.shouldSetUri = true;
            this.dismiss();
        }
    }
    
    protected void errorPlayVideo(final String s) {
        Toast.makeText((Context)this.activity, (CharSequence)"Sorry. There was a problem playing the video", 1).show();
        if (this.mVideoView != null) {
            this.mVideoView.stopPlayback();
        }
    }
    
    void handleTransparentMessage(final Message message) {
        switch (message.what) {
            case 4: {
                if (this.mVideoView != null && this.mVideoView.isPlaying() && this.mVideoView.getCurrentPosition() > 0) {
                    this.mVideoView.setBackgroundColor(0);
                    this.transparentHandler.sendEmptyMessageDelayed(5, 100L);
                    return;
                }
                this.transparentHandler.sendEmptyMessageDelayed(4, 50L);
            }
            case 5: {
                if (this.mVideoView != null && this.mVideoView.isPlaying() && this.mVideoView.getCurrentPosition() > 0) {
                    this.blackView.setVisibility(4);
                    this.progBar.setVisibility(4);
                    return;
                }
                break;
            }
        }
    }
    
    protected RelativeLayout initLayout() {
        final RelativeLayout relativeLayout = new RelativeLayout((Context)this.activity);
        relativeLayout.setId(400);
        relativeLayout.setLayoutParams(new ViewGroup$LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(-16777216);
        (this.videoLayout = new RelativeLayout((Context)this.activity)).setBackgroundColor(-16777216);
        this.videoLayout.setId(410);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-1, -2);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams(-1, -1);
        relativeLayout$LayoutParams2.addRule(13);
        relativeLayout$LayoutParams.addRule(13);
        (this.mVideoView = new VideoView((Context)this.activity)).setId(411);
        this.mVideoView.getHolder().setFormat(-2);
        this.mVideoView.setBackgroundColor(-16777216);
        this.initVideoListeners();
        this.videoLayout.addView((View)this.mVideoView, (ViewGroup$LayoutParams)relativeLayout$LayoutParams2);
        (this.blackView = new View((Context)this.activity)).setBackgroundColor(-16777216);
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-1, -1);
        relativeLayout.addView((View)this.videoLayout, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        if (this.hasBottomBar) {
            layoutParams.addRule(2, 83756563);
            this.initBottomBar(relativeLayout);
        }
        this.blackView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        relativeLayout.addView(this.blackView);
        (this.progBar = new ProgressBar((Context)this.activity)).setIndeterminate(true);
        final RelativeLayout$LayoutParams layoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        this.progBar.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
        relativeLayout.addView((View)this.progBar);
        this.progBar.setVisibility(4);
        return relativeLayout;
    }
    
    protected void initSavedInstance(final Bundle bundle) {
        if (bundle != null) {
            this.isVideoCompleted = bundle.getBoolean("videoCompleted");
            this.isVideoCompletedOnce = bundle.getBoolean("videoCompletedOnce");
            this.currentVideoPosition = bundle.getInt("videoPosition");
            this.hasBottomBar = bundle.getBoolean("hasBottomBar");
            this.shouldSetUri = bundle.getBoolean("shouldSetUri");
        }
    }
    
    protected boolean isPlayable() {
        return this.mVideoView != null && !this.mVideoView.isPlaying() && !this.isVideoCompleted;
    }
    
    protected void logButtonEvent(final VideoImage videoImage) {
        MMSDK.Log.d("Cached video button event logged");
        for (int i = 0; i < videoImage.eventLoggingUrls.length; ++i) {
            MMSDK.Event.logEvent(videoImage.eventLoggingUrls[i]);
        }
    }
    
    public void onCompletion(final MediaPlayer mediaPlayer) {
        this.isVideoCompletedOnce = true;
        this.isVideoCompleted = true;
        if (this.pausePlay != null && !this.mVideoView.isPlaying()) {
            this.pausePlay.setBackgroundResource(17301540);
        }
        MMSDK.Log.v("Video player on complete");
    }
    
    public void onCreate(final Bundle bundle) {
        this.setTheme(16973829);
        super.onCreate(bundle);
        MMSDK.Log.d("Setting up the video player");
        this.initWindow();
        this.initSavedInstance(bundle);
        this.initRedirectListener();
        this.setContentView((View)this.initLayout());
    }
    
    public void onDestroy() {
        super.onDestroy();
    }
    
    public boolean onError(final MediaPlayer mediaPlayer, final int n, final int n2) {
        return false;
    }
    
    @Override
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        return (n == 4 && keyEvent.getRepeatCount() == 0 && !this.isVideoCompletedOnce) || super.onKeyDown(n, keyEvent);
    }
    
    @Override
    protected void onPause() {
        super.onPause();
        this.isPaused = true;
        MMSDK.Log.v("VideoPlayer - onPause");
        this.pauseVideo();
    }
    
    public void onPrepared(final MediaPlayer mediaPlayer) {
        MMSDK.Log.d("Video Prepared");
    }
    
    @Override
    protected void onRestoreInstanceState(final Bundle bundle) {
        this.currentVideoPosition = bundle.getInt("currentVideoPosition");
        this.isVideoCompleted = bundle.getBoolean("isVideoCompleted");
        this.isVideoCompletedOnce = bundle.getBoolean("isVideoCompletedOnce");
        this.hasBottomBar = bundle.getBoolean("hasBottomBar", this.hasBottomBar);
        this.shouldSetUri = bundle.getBoolean("shouldSetUri", this.shouldSetUri);
        this.isUserPausing = bundle.getBoolean("isUserPausing", this.isUserPausing);
        this.isPaused = bundle.getBoolean("isPaused", this.isPaused);
        super.onRestoreInstanceState(bundle);
    }
    
    @Override
    protected void onResume() {
        super.onResume();
        this.blackView.bringToFront();
        this.blackView.setVisibility(0);
        this.isPaused = false;
        MMSDK.Log.v("VideoPlayer - onResume");
        if (this.hasFocus && !this.isUserPausing) {
            this.resumeVideo();
        }
    }
    
    @Override
    protected void onSaveInstanceState(final Bundle bundle) {
        bundle.putInt("currentVideoPosition", this.currentVideoPosition);
        bundle.putBoolean("isVideoCompleted", this.isVideoCompleted);
        bundle.putBoolean("isVideoCompletedOnce", this.isVideoCompletedOnce);
        bundle.putBoolean("hasBottomBar", this.hasBottomBar);
        bundle.putBoolean("shouldSetUri", this.shouldSetUri);
        bundle.putBoolean("isUserPausing", this.isUserPausing);
        bundle.putBoolean("isPaused", this.isPaused);
        super.onSaveInstanceState(bundle);
    }
    
    @Override
    public void onWindowFocusChanged(final boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        this.hasFocus = hasFocus;
        if (!this.isPaused && hasFocus && !this.isUserPausing) {
            this.resumeVideo();
        }
    }
    
    protected void pauseVideo() {
        if (this.mVideoView != null && this.mVideoView.isPlaying()) {
            this.currentVideoPosition = this.mVideoView.getCurrentPosition();
            this.mVideoView.pause();
            MMSDK.Log.v("Video paused");
        }
    }
    
    protected void pauseVideoByUser() {
        this.isUserPausing = true;
        this.pauseVideo();
    }
    
    protected void playVideo(final int n) {
        try {
            this.isUserPausing = false;
            final String string = this.getIntent().getData().toString();
            MMSDK.Log.d("playVideo path: %s", string);
            if (string == null || string.length() == 0 || this.mVideoView == null) {
                this.errorPlayVideo("no name or null videoview");
                return;
            }
            this.isVideoCompleted = false;
            if (this.shouldSetUri && this.mVideoView != null) {
                this.mVideoView.setVideoURI(Uri.parse(string));
            }
            this.startVideo(n);
        }
        catch (Exception ex) {
            MMSDK.Log.e("error: " + ex.getMessage(), ex);
            this.errorPlayVideo("error: " + ex.getMessage());
        }
    }
    
    void processVideoPlayerUri(final String s) {
        this.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (s.equalsIgnoreCase("restartVideo")) {
                    VideoPlayerActivity.this.restartVideo();
                }
                else if (s.equalsIgnoreCase("endVideo")) {
                    VideoPlayerActivity.this.endVideo();
                }
            }
        });
    }
    
    protected void restartVideo() {
        MMSDK.Log.d("Restart Video.");
        if (this.mVideoView != null) {
            this.playVideo(0);
        }
    }
    
    protected void resumeVideo() {
        if (this.isPlayable()) {
            this.playVideo(this.currentVideoPosition);
        }
    }
    
    protected void setButtonAlpha(final ImageButton imageButton, final float n) {
        final AlphaAnimation alphaAnimation = new AlphaAnimation(n, n);
        alphaAnimation.setDuration(0L);
        alphaAnimation.setFillEnabled(true);
        alphaAnimation.setFillBefore(true);
        alphaAnimation.setFillAfter(true);
        imageButton.startAnimation((Animation)alphaAnimation);
    }
    
    private static class TransparentHandler extends Handler
    {
        private WeakReference<VideoPlayerActivity> activityRef;
        
        public TransparentHandler(final VideoPlayerActivity referent) {
            super();
            this.activityRef = new WeakReference<VideoPlayerActivity>(referent);
        }
        
        public void handleMessage(final Message message) {
            final VideoPlayerActivity videoPlayerActivity = this.activityRef.get();
            if (videoPlayerActivity != null) {
                videoPlayerActivity.handleTransparentMessage(message);
            }
        }
    }
    
    static class VideoRedirectionListener extends RedirectionListenerImpl
    {
        WeakReference<VideoPlayerActivity> activityRef;
        
        public VideoRedirectionListener(final VideoPlayerActivity referent) {
            super();
            if (referent != null) {
                this.activityRef = new WeakReference<VideoPlayerActivity>(referent);
                if (referent.activity != null) {
                    this.creatorAdImplInternalId = referent.activity.creatorAdImplInternalId;
                }
            }
        }
        
        @Override
        public JSONObject getAdProperties() {
            final VideoPlayerActivity videoPlayerActivity = this.activityRef.get();
            if (videoPlayerActivity != null && videoPlayerActivity.adProperties != null) {
                return videoPlayerActivity.adProperties.getAdProperties();
            }
            return null;
        }
        
        @Override
        public OverlaySettings getOverlaySettings() {
            final VideoPlayerActivity videoPlayerActivity = this.activityRef.get();
            OverlaySettings overlaySettings = null;
            if (videoPlayerActivity != null) {
                final String lastOverlayOrientation = videoPlayerActivity.lastOverlayOrientation;
                overlaySettings = null;
                if (lastOverlayOrientation != null) {
                    overlaySettings = new OverlaySettings();
                    overlaySettings.orientation = videoPlayerActivity.lastOverlayOrientation;
                }
            }
            return overlaySettings;
        }
        
        @Override
        public boolean isHandlingMMVideo(final Uri uri) {
            final VideoPlayerActivity videoPlayerActivity = this.activityRef.get();
            if (videoPlayerActivity != null) {
                videoPlayerActivity.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        videoPlayerActivity.enableButtons();
                    }
                });
                if (uri != null && videoPlayerActivity.isActionable(uri)) {
                    videoPlayerActivity.processVideoPlayerUri(uri.getHost());
                    return true;
                }
            }
            return false;
        }
    }
}
