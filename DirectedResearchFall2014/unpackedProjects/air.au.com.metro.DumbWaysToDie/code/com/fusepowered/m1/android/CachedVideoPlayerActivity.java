package com.fusepowered.m1.android;

import android.view.animation.*;
import android.content.*;
import android.webkit.*;
import java.io.*;
import android.net.*;
import android.text.*;
import android.view.*;
import android.graphics.*;
import android.media.*;
import android.widget.*;
import java.util.*;
import java.lang.ref.*;
import android.os.*;
import org.apache.http.*;

class CachedVideoPlayerActivity extends VideoPlayerActivity implements Handler$Callback
{
    private static final int STATIC_HUD_ID = 402;
    private static final int STATIC_HUD_SECONDS_ID = 401;
    private RelativeLayout buttonsLayout;
    private boolean hasCountdownHud;
    boolean hasLoadedCompletionUrl;
    boolean hasWebOverlay;
    private TextView hudSeconds;
    private TextView hudStaticText;
    private int lastVideoPosition;
    private Handler logTimeAndEventhandler;
    private MMWebView mWebView;
    private VideoAd videoAd;
    
    CachedVideoPlayerActivity() {
        super();
        this.hasCountdownHud = true;
    }
    
    private String calculateHudSecondsText() {
        if (this.currentVideoPosition != 0) {
            return String.valueOf(this.currentVideoPosition / 1000);
        }
        if (this.videoAd != null) {
            return String.valueOf(this.videoAd.duration / 1000L);
        }
        return "";
    }
    
    private void dismissAfter(final long n) {
        this.logTimeAndEventhandler.postDelayed((Runnable)new Runnable() {
            @Override
            public void run() {
                CachedVideoPlayerActivity.this.dismiss();
            }
        }, n);
    }
    
    private void fadeButton(final VideoImage videoImage) {
        final AlphaAnimation alphaAnimation = new AlphaAnimation(videoImage.fromAlpha, videoImage.toAlpha);
        alphaAnimation.setDuration(videoImage.fadeDuration);
        alphaAnimation.setFillEnabled(true);
        alphaAnimation.setFillBefore(true);
        alphaAnimation.setFillAfter(true);
        videoImage.button.startAnimation((Animation)alphaAnimation);
    }
    
    private void fadeButtons() {
        if (this.videoAd != null && this.videoAd.buttons != null) {
            for (int i = 0; i < this.videoAd.buttons.size(); ++i) {
                final VideoImage videoImage = this.videoAd.buttons.get(i);
                if (!videoImage.isLeaveBehind) {
                    this.setButtonAlpha(videoImage.button, videoImage.fromAlpha);
                }
                if (videoImage.button.getParent() == null) {
                    this.buttonsLayout.addView((View)videoImage.button, (ViewGroup$LayoutParams)videoImage.layoutParams);
                }
                for (int j = 0; j < this.videoAd.buttons.size(); ++j) {
                    this.buttonsLayout.bringChildToFront((View)this.videoAd.buttons.get(j).button);
                }
                MMSDK.Log.v("Button: %d alpha: %f", i, videoImage.fromAlpha);
            }
        }
    }
    
    private void hideHud() {
        if (this.hudStaticText != null) {
            this.hudStaticText.setVisibility(4);
        }
        if (this.hudSeconds != null) {
            this.hudSeconds.setVisibility(4);
        }
    }
    
    private void initHudSeconds(final ViewGroup viewGroup) {
        (this.hudSeconds = new TextView((Context)this.activity)).setText((CharSequence)this.calculateHudSecondsText());
        this.hudSeconds.setTextColor(-1);
        this.hudSeconds.setId(401);
        this.hudSeconds.setShadowLayer(1.0f, 0.0f, 0.0f, -16777216);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams.addRule(10);
        relativeLayout$LayoutParams.addRule(0, 402);
        viewGroup.addView((View)this.hudSeconds, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
    }
    
    private void initHudStaticText(final ViewGroup viewGroup) {
        (this.hudStaticText = new TextView((Context)this.activity)).setText((CharSequence)" seconds remaining ...");
        this.hudStaticText.setTextColor(-1);
        this.hudStaticText.setPadding(0, 0, 5, 0);
        this.hudStaticText.setId(402);
        this.hudStaticText.setShadowLayer(1.0f, 0.0f, 0.0f, -16777216);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams.addRule(10);
        relativeLayout$LayoutParams.addRule(11);
        viewGroup.addView((View)this.hudStaticText, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
    }
    
    private void initWebOverlay() {
        (this.mWebView = new MMWebView((Context)this.activity, this.activity.creatorAdImplInternalId)).setId(413);
        this.mWebView.setWebViewClient((WebViewClient)new InterstitialWebViewClient(new CachedVideoWebViewClientListener(this), this.redirectListenerImpl));
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.mWebView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.mWebView.setBackgroundColor(0);
        this.loadUrlForMraidInjection(this.videoAd.webOverlayURL);
    }
    
    private void onPageFinished(final String s) {
        if (this.mVideoView != null && this.videoAd != null && !this.mVideoView.isPlaying() && this.videoAd.webOverlayURL != null && s.equalsIgnoreCase(this.videoAd.webOverlayURL)) {
            this.playVideo(0);
        }
    }
    
    private void showHud() {
        if (this.videoAd != null) {
            this.hudSeconds.setText((CharSequence)String.valueOf(this.videoAd.duration / 1000L));
        }
        this.hudStaticText.setVisibility(0);
        this.hudSeconds.setVisibility(0);
    }
    
    @Override
    protected boolean canFadeButtons() {
        return !this.videoAd.stayInPlayer || !super.canFadeButtons();
    }
    
    public boolean dispatchTouchEvent(final MotionEvent motionEvent) {
        if (this.videoAd != null) {
            if (this.logTimeAndEventhandler != null) {
                this.logTimeAndEventhandler.removeMessages(1);
            }
            if (!this.hasWebOverlay) {
                for (int i = 0; i < this.videoAd.buttons.size(); ++i) {
                    final VideoImage videoImage = this.videoAd.buttons.get(i);
                    this.setButtonAlpha(videoImage.button, videoImage.fromAlpha);
                    if (videoImage.inactivityTimeout > 0L) {
                        this.logTimeAndEventhandler.sendMessageDelayed(Message.obtain(this.logTimeAndEventhandler, 1, (Object)videoImage), videoImage.inactivityTimeout);
                    }
                    else if (motionEvent.getAction() == 1) {
                        if (this.canFadeButtons()) {
                            final AlphaAnimation alphaAnimation = new AlphaAnimation(videoImage.fromAlpha, videoImage.toAlpha);
                            alphaAnimation.setDuration(videoImage.fadeDuration);
                            alphaAnimation.setFillEnabled(true);
                            alphaAnimation.setFillBefore(true);
                            alphaAnimation.setFillAfter(true);
                            videoImage.button.startAnimation((Animation)alphaAnimation);
                        }
                    }
                    else if (motionEvent.getAction() == 0) {
                        this.setButtonAlpha(videoImage.button, videoImage.fromAlpha);
                    }
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }
    
    @Override
    protected void enableButtons() {
        super.enableButtons();
        if (!this.hasWebOverlay && this.videoAd != null && this.videoAd.buttons != null) {
            for (final VideoImage videoImage : this.videoAd.buttons) {
                if (videoImage.button != null) {
                    videoImage.button.setEnabled(true);
                }
            }
        }
    }
    
    @Override
    protected void errorPlayVideo(final String str) {
        if (this.videoAd != null) {
            HttpGetRequest.log(this.videoAd.videoError);
        }
        if (this.mWebView != null) {
            this.mWebView.loadUrl("javascript:MMJS.cachedVideo.setError(" + str + ");");
        }
        super.errorPlayVideo(str);
    }
    
    public boolean handleMessage(final Message message) {
        Label_0032: {
            switch (message.what) {
                case 1: {
                    if (this.canFadeButtons()) {
                        this.fadeButton((VideoImage)message.obj);
                        break;
                    }
                    break;
                }
                case 3: {
                    final VideoImage videoImage = (VideoImage)message.obj;
                    while (true) {
                        try {
                            if (this.buttonsLayout.indexOfChild((View)videoImage.button) == -1) {
                                this.buttonsLayout.addView((View)videoImage.button, (ViewGroup$LayoutParams)videoImage.layoutParams);
                            }
                            if (this.canFadeButtons()) {
                                this.fadeButton(videoImage);
                                MMSDK.Log.v("Beginning animation to visibility. Fade duration: %d Button: %d Time: %d", videoImage.fadeDuration, videoImage.button.getId(), System.currentTimeMillis());
                                break;
                            }
                            break;
                        }
                        catch (IllegalStateException ex) {
                            ex.printStackTrace();
                            continue;
                        }
                        break;
                    }
                }
                case 2: {
                Label_0233_Outer:
                    while (true) {
                        while (true) {
                        Label_0299_Outer:
                            while (true) {
                                Label_0471: {
                                    try {
                                        if (this.mVideoView != null && this.mVideoView.isPlaying()) {
                                            final int currentPosition = this.mVideoView.getCurrentPosition();
                                            if (currentPosition > this.lastVideoPosition) {
                                                if (this.videoAd != null) {
                                                    if (this.lastVideoPosition == 0) {
                                                        this.videoAd.logBeginEvent();
                                                    }
                                                    break Label_0299_Outer;
                                                }
                                                Label_0327: {
                                                    this.lastVideoPosition = currentPosition;
                                                }
                                            }
                                            if (this.hasWebOverlay && this.mWebView != null) {
                                                this.mWebView.loadUrl("javascript:MMJS.cachedVideo.updateVideoSeekTime(" + (float)Math.floor(currentPosition / 1000.0f) + ");");
                                            }
                                            if (this.hasCountdownHud) {
                                                final long l = (this.videoAd.duration - currentPosition) / 1000L;
                                                if (l <= 0L) {
                                                    break Label_0471;
                                                }
                                                if (this.hudSeconds != null) {
                                                    this.hudSeconds.setText((CharSequence)String.valueOf(l));
                                                }
                                            }
                                        }
                                        this.logTimeAndEventhandler.sendMessageDelayed(Message.obtain(this.logTimeAndEventhandler, 2), 500L);
                                        break Label_0032;
                                        // iftrue(Label_0327:, index >= this.videoAd.activities.size())
                                        // iftrue(Label_0484:, videoLogEvent == null || videoLogEvent.position < (long)this.lastVideoPosition || videoLogEvent.position >= (long)currentPosition)
                                        // iftrue(Label_0484:, n >= videoLogEvent.activities.length)
                                    Label_0299:
                                        while (true) {
                                        Block_16:
                                            while (true) {
                                                Block_13: {
                                                    break Block_13;
                                                    final VideoLogEvent videoLogEvent;
                                                    int n = 0;
                                                    MMSDK.Event.logEvent(videoLogEvent.activities[n]);
                                                    ++n;
                                                    break Label_0299;
                                                }
                                                final int index;
                                                final VideoLogEvent videoLogEvent = this.videoAd.activities.get(index);
                                                break Block_16;
                                                continue Label_0299_Outer;
                                            }
                                            int n = 0;
                                            continue Label_0299;
                                        }
                                    }
                                    catch (IllegalStateException ex2) {
                                        ex2.printStackTrace();
                                    }
                                    break Label_0032;
                                }
                                this.hideHud();
                                continue Label_0233_Outer;
                            }
                            int index = 0;
                            continue;
                            Label_0484: {
                                ++index;
                            }
                            continue;
                        }
                    }
                    break;
                }
            }
        }
        return true;
    }
    
    @Override
    protected RelativeLayout initLayout() {
        final RelativeLayout initLayout = super.initLayout();
        this.logTimeAndEventhandler = new Handler((Handler$Callback)this);
        this.setRequestedOrientation(0);
        if (this.hasCountdownHud) {
            this.initHudStaticText((ViewGroup)initLayout);
            this.initHudSeconds((ViewGroup)initLayout);
            this.showHud();
        }
        if (this.videoAd != null && this.videoAd.webOverlayURL != null) {
            this.initWebOverlay();
            if (this.mWebView != null) {
                initLayout.addView((View)this.mWebView);
                this.hasWebOverlay = true;
            }
        }
        else {
            this.hasWebOverlay = false;
            (this.buttonsLayout = new RelativeLayout((Context)this.activity)).setId(1000);
            final VideoAd videoAd = this.videoAd;
            List<VideoImage> buttons = null;
            if (videoAd != null) {
                buttons = this.videoAd.buttons;
            }
            if (buttons != null) {
                final File cacheDirectory = AdCache.getCacheDirectory((Context)this.activity);
                for (int i = 0; i < buttons.size(); ++i) {
                    VideoImage videoImage;
                    ImageButton button;
                    Bitmap decodeFile;
                    RelativeLayout$LayoutParams layoutParams = null;
                    Label_0332_Outer:Label_0404_Outer:
                    while (true) {
                        videoImage = buttons.get(i);
                        button = new ImageButton((Context)this.activity);
                        videoImage.button = button;
                        while (true) {
                        Label_0688:
                            while (true) {
                            Label_0537:
                                while (true) {
                                    try {
                                        decodeFile = BitmapFactory.decodeFile(cacheDirectory.getAbsolutePath() + File.separator + this.videoAd.getId() + Uri.parse(videoImage.imageUrl).getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat"));
                                        if (decodeFile != null) {
                                            button.setImageBitmap(decodeFile);
                                        }
                                        else {
                                            button.setImageURI(Uri.parse(cacheDirectory.getAbsolutePath() + File.separator + this.videoAd.getId() + Uri.parse(videoImage.imageUrl).getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat")));
                                        }
                                        this.setButtonAlpha(button, videoImage.fromAlpha);
                                        button.setId(i + 1);
                                        button.setPadding(0, 0, 0, 0);
                                        if (!videoImage.isLeaveBehind) {
                                            break Label_0537;
                                        }
                                        button.setScaleType(ImageView$ScaleType.FIT_CENTER);
                                        button.setBackgroundColor(-16777216);
                                        layoutParams = new RelativeLayout$LayoutParams(-1, -1);
                                        if (!TextUtils.isEmpty((CharSequence)videoImage.linkUrl)) {
                                            button.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
                                                public void onClick(final View view) {
                                                    if (button != null) {
                                                        button.setEnabled(false);
                                                    }
                                                    CachedVideoPlayerActivity.this.redirectListenerImpl.orientation = videoImage.overlayOrientation;
                                                    CachedVideoPlayerActivity.this.dispatchButtonClick(videoImage.linkUrl);
                                                    CachedVideoPlayerActivity.this.logButtonEvent(videoImage);
                                                }
                                            });
                                        }
                                        if (videoImage.appearanceDelay > 0L) {
                                            videoImage.layoutParams = layoutParams;
                                            this.logTimeAndEventhandler.sendMessageDelayed(Message.obtain(this.logTimeAndEventhandler, 3, (Object)videoImage), videoImage.appearanceDelay);
                                            if (videoImage.inactivityTimeout > 0L) {
                                                this.logTimeAndEventhandler.sendMessageDelayed(Message.obtain(this.logTimeAndEventhandler, 1, (Object)videoImage), videoImage.inactivityTimeout + videoImage.appearanceDelay + videoImage.fadeDuration);
                                            }
                                            break;
                                        }
                                        break Label_0688;
                                    }
                                    catch (Exception ex) {
                                        MMSDK.Log.e(ex);
                                        continue Label_0332_Outer;
                                    }
                                    continue Label_0332_Outer;
                                }
                                button.setBackgroundColor(0);
                                layoutParams = new RelativeLayout$LayoutParams(-2, -2);
                                MMSDK.Log.v("Button: %d Anchor: %d Position: %d Anchor2: %d Position2: %d", button.getId(), videoImage.anchor, videoImage.position, videoImage.anchor2, videoImage.position2);
                                layoutParams.addRule(videoImage.position, videoImage.anchor);
                                layoutParams.addRule(videoImage.position2, videoImage.anchor2);
                                layoutParams.setMargins(videoImage.paddingLeft, videoImage.paddingTop, videoImage.paddingRight, videoImage.paddingBottom);
                                continue Label_0404_Outer;
                            }
                            this.buttonsLayout.addView((View)button, (ViewGroup$LayoutParams)layoutParams);
                            continue;
                        }
                    }
                }
                initLayout.addView((View)this.buttonsLayout, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
            }
            if (this.buttonsLayout != null) {
                initLayout.bringChildToFront((View)this.buttonsLayout);
            }
            if (this.mWebView != null) {
                initLayout.bringChildToFront((View)this.mWebView);
                return initLayout;
            }
        }
        return initLayout;
    }
    
    @Override
    protected void initSavedInstance(final Bundle bundle) {
        super.initSavedInstance(bundle);
        if (bundle == null) {
            this.videoAd = (VideoAd)AdCache.load((Context)this.activity, this.getIntent().getStringExtra("videoId"));
            if (this.videoAd != null) {
                this.hasBottomBar = this.videoAd.showControls;
                this.hasCountdownHud = this.videoAd.showCountdown;
            }
            return;
        }
        this.videoAd = (VideoAd)bundle.getParcelable("videoAd");
        this.hasBottomBar = bundle.getBoolean("shouldShowBottomBar");
        this.lastVideoPosition = bundle.getInt("lastVideoPosition");
        this.currentVideoPosition = bundle.getInt("currentVideoPosition");
        this.hasCountdownHud = this.videoAd.showCountdown;
    }
    
    void loadUrlForMraidInjection(final String s) {
        new FetchWebViewContentTask(s).execute((Object[])new Void[0]);
    }
    
    @Override
    public void onCompletion(final MediaPlayer mediaPlayer) {
        super.onCompletion(mediaPlayer);
        if (this.hasCountdownHud) {
            this.hideHud();
        }
        if (this.videoAd != null) {
            this.videoPlayerOnCompletion(this.videoAd.onCompletionUrl);
        }
    }
    
    @Override
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.adProperties = new AdProperties((Context)this.activity);
        MMSDK.Log.v("Is Cached Ad");
    }
    
    @Override
    public boolean onError(final MediaPlayer mediaPlayer, final int i, final int j) {
        this.errorPlayVideo(String.format("Error while playing, %d - %d", i, j));
        return super.onError(mediaPlayer, i, j);
    }
    
    @Override
    protected void onRestoreInstanceState(final Bundle bundle) {
        this.videoAd = (VideoAd)bundle.getParcelable("videoAd");
        super.onRestoreInstanceState(bundle);
    }
    
    @Override
    protected void onResume() {
        super.onResume();
        if (this.mWebView != null) {
            this.mWebView.bringToFront();
        }
        if (this.buttonsLayout != null) {
            this.buttonsLayout.bringToFront();
        }
    }
    
    @Override
    protected void onSaveInstanceState(final Bundle bundle) {
        bundle.putParcelable("videoAd", (Parcelable)this.videoAd);
        super.onSaveInstanceState(bundle);
    }
    
    protected void onStart() {
        super.onStart();
        if (!this.hasWebOverlay && this.videoAd != null && this.videoAd.stayInPlayer && this.isVideoCompleted) {
            this.fadeButtons();
        }
    }
    
    @Override
    protected void pauseVideo() {
        super.pauseVideo();
        this.logTimeAndEventhandler.removeMessages(1);
        this.logTimeAndEventhandler.removeMessages(2);
        this.logTimeAndEventhandler.removeMessages(3);
    }
    
    @Override
    protected void playVideo(final int n) {
        if (this.videoAd == null) {
            Toast.makeText((Context)this.activity, (CharSequence)"Sorry. There was a problem playing the video", 1).show();
            return;
        }
        if (!this.logTimeAndEventhandler.hasMessages(2) && this.videoAd != null) {
            this.logTimeAndEventhandler.sendMessageDelayed(Message.obtain(this.logTimeAndEventhandler, 2), 1000L);
        }
        super.playVideo(n);
    }
    
    @Override
    protected void restartVideo() {
        if (this.videoAd != null) {
            if ((this.hasLoadedCompletionUrl || this.videoAd.reloadNonEndOverlayOnRestart) && this.videoAd.webOverlayURL != null && this.mWebView != null) {
                this.loadUrlForMraidInjection(this.videoAd.webOverlayURL);
                this.hasLoadedCompletionUrl = false;
            }
            final ArrayList<VideoImage> buttons = this.videoAd.buttons;
            this.logTimeAndEventhandler.removeMessages(1);
            this.logTimeAndEventhandler.removeMessages(2);
            this.logTimeAndEventhandler.removeMessages(3);
            this.lastVideoPosition = 0;
            if (!this.hasWebOverlay && this.buttonsLayout != null && buttons != null) {
                for (int i = 0; i < buttons.size(); ++i) {
                    final VideoImage videoImage = buttons.get(i);
                    if (videoImage != null) {
                        if (videoImage.appearanceDelay > 0L) {
                            this.buttonsLayout.removeView((View)videoImage.button);
                            this.logTimeAndEventhandler.sendMessageDelayed(Message.obtain(this.logTimeAndEventhandler, 3, (Object)videoImage), videoImage.appearanceDelay);
                        }
                        if (videoImage.inactivityTimeout > 0L) {
                            this.logTimeAndEventhandler.sendMessageDelayed(Message.obtain(this.logTimeAndEventhandler, 1, (Object)videoImage), videoImage.inactivityTimeout + videoImage.appearanceDelay + videoImage.fadeDuration);
                        }
                    }
                }
            }
            if (this.logTimeAndEventhandler != null) {
                this.logTimeAndEventhandler.sendMessageDelayed(Message.obtain(this.logTimeAndEventhandler, 2), 1000L);
            }
            if (this.hasCountdownHud) {
                this.showHud();
            }
        }
        super.restartVideo();
    }
    
    @Override
    protected void resumeVideo() {
        if (this.videoAd != null) {
            if (!this.logTimeAndEventhandler.hasMessages(2)) {
                this.logTimeAndEventhandler.sendMessageDelayed(Message.obtain(this.logTimeAndEventhandler, 2), 1000L);
            }
            if (!this.hasWebOverlay) {
                if (this.hasCountdownHud) {
                    final long l = (this.videoAd.duration - this.currentVideoPosition) / 1000L;
                    if (l > 0L) {
                        if (this.hudSeconds != null) {
                            this.hudSeconds.setText((CharSequence)String.valueOf(l));
                        }
                    }
                    else {
                        this.hideHud();
                    }
                }
                if (this.videoAd.buttons != null) {
                    for (int i = 0; i < this.videoAd.buttons.size(); ++i) {
                        final VideoImage videoImage = this.videoAd.buttons.get(i);
                        long n = 0L;
                        if (videoImage.appearanceDelay > 0L && this.buttonsLayout.indexOfChild((View)videoImage.button) == -1) {
                            final Message obtain = Message.obtain(this.logTimeAndEventhandler, 3, (Object)videoImage);
                            n = videoImage.appearanceDelay - this.currentVideoPosition;
                            if (n < 0L) {
                                n = 500L;
                            }
                            this.logTimeAndEventhandler.sendMessageDelayed(obtain, n);
                        }
                        if (videoImage.inactivityTimeout > 0L) {
                            this.logTimeAndEventhandler.sendMessageDelayed(Message.obtain(this.logTimeAndEventhandler, 1, (Object)videoImage), n + videoImage.inactivityTimeout + videoImage.fadeDuration);
                        }
                    }
                }
            }
        }
        super.resumeVideo();
    }
    
    protected void videoPlayerOnCompletion(final String s) {
        if (s != null) {
            this.dispatchButtonClick(s);
        }
        if (this.videoAd != null) {
            this.videoAd.logEndEvent();
            if (this.videoAd.stayInPlayer) {
                if (!this.hasWebOverlay && this.videoAd.buttons != null) {
                    this.fadeButtons();
                    if (!this.videoAd.hasEndCard()) {
                        this.dismiss();
                    }
                }
                if (this.mWebView != null && !TextUtils.isEmpty((CharSequence)this.videoAd.endOverlayURL)) {
                    this.loadUrlForMraidInjection(this.videoAd.endOverlayURL);
                    this.mWebView.bringToFront();
                }
                else if (this.hasWebOverlay) {
                    this.dismiss();
                }
                if (this.videoAd.closeDelayMillis != 0L) {
                    this.dismissAfter(this.videoAd.closeDelayMillis);
                }
                this.logTimeAndEventhandler.removeMessages(1);
                this.logTimeAndEventhandler.removeMessages(2);
                this.logTimeAndEventhandler.removeMessages(3);
                return;
            }
            this.dismiss();
        }
    }
    
    private static class CachedVideoWebViewClientListener extends MMWebViewClientListener
    {
        WeakReference<CachedVideoPlayerActivity> activityRef;
        
        CachedVideoWebViewClientListener(final CachedVideoPlayerActivity referent) {
            super();
            this.activityRef = new WeakReference<CachedVideoPlayerActivity>(referent);
        }
        
        public void onPageFinished(final String str) {
            MMSDK.Log.d("@@ ON PAGE FINISHED" + str);
            final CachedVideoPlayerActivity cachedVideoPlayerActivity = this.activityRef.get();
            if (cachedVideoPlayerActivity != null) {
                cachedVideoPlayerActivity.onPageFinished(str);
            }
        }
    }
    
    class FetchWebViewContentTask extends AsyncTask<Void, Void, String>
    {
        private String baseUrl;
        private boolean cancelVideo;
        
        public FetchWebViewContentTask(final String baseUrl) {
            super();
            this.baseUrl = baseUrl;
        }
        
        protected String doInBackground(final Void... array) {
            try {
                final HttpResponse value = new HttpGetRequest().get(this.baseUrl);
                final StatusLine statusLine = value.getStatusLine();
                if (value != null && statusLine != null && statusLine.getStatusCode() != 404) {
                    final HttpEntity entity = value.getEntity();
                    if (entity != null) {
                        return HttpGetRequest.convertStreamToString(entity.getContent());
                    }
                }
                else {
                    this.cancelVideo = true;
                }
                return null;
            }
            catch (Exception ex) {
                ex.printStackTrace();
                return null;
            }
        }
        
        protected void onPostExecute(final String s) {
            if (this.cancelVideo) {
                CachedVideoPlayerActivity.this.dismiss();
            }
            if (s != null && CachedVideoPlayerActivity.this.mWebView != null) {
                CachedVideoPlayerActivity.this.mWebView.setWebViewContent(s, this.baseUrl, (Context)CachedVideoPlayerActivity.this.activity);
                CachedVideoPlayerActivity.this.hasLoadedCompletionUrl = true;
            }
        }
    }
}
