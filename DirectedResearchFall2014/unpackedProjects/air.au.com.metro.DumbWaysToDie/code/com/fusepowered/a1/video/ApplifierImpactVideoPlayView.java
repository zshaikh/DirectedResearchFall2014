package com.fusepowered.a1.video;

import com.fusepowered.a1.view.*;
import android.content.*;
import android.util.*;
import android.widget.*;
import com.fusepowered.a1.*;
import com.fusepowered.a1.properties.*;
import java.util.*;
import com.fusepowered.a1.webapp.*;
import android.media.*;
import android.view.*;

public class ApplifierImpactVideoPlayView extends RelativeLayout
{
    private static final int FILL_PARENT = -1;
    private long _bufferingCompledtedMillis;
    private long _bufferingStartedMillis;
    private RelativeLayout _bufferingText;
    private ApplifierImpactBufferingView _bufferingView;
    private RelativeLayout _countDownText;
    private IApplifierImpactVideoPlayerListener _listener;
    private MediaPlayer _mediaPlayer;
    private ApplifierImpactMuteVideoButton _muteButton;
    private boolean _muted;
    private ApplifierImpactVideoPausedView _pausedView;
    private Map<ApplifierImpactWebData.ApplifierVideoPosition, Boolean> _sentPositionEvents;
    private RelativeLayout _skipText;
    private TextView _skipTextView;
    private int _skipTimeInSeconds;
    private TextView _timeLeftInSecondsText;
    private String _videoFileName;
    private Timer _videoPausedTimer;
    private boolean _videoPlaybackErrors;
    private boolean _videoPlaybackStartedSent;
    private boolean _videoPlayheadPrepared;
    private long _videoStartedPlayingMillis;
    private VideoView _videoView;
    private float _volumeBeforeMute;
    
    public ApplifierImpactVideoPlayView(final Context context, final AttributeSet set) {
        super(context, set);
        this._countDownText = null;
        this._timeLeftInSecondsText = null;
        this._skipText = null;
        this._skipTextView = null;
        this._skipTimeInSeconds = 0;
        this._bufferingText = null;
        this._bufferingStartedMillis = 0L;
        this._bufferingCompledtedMillis = 0L;
        this._videoStartedPlayingMillis = 0L;
        this._videoPausedTimer = null;
        this._videoView = null;
        this._videoFileName = null;
        this._bufferingView = null;
        this._pausedView = null;
        this._muteButton = null;
        this._videoPlayheadPrepared = false;
        this._sentPositionEvents = new HashMap<ApplifierImpactWebData.ApplifierVideoPosition, Boolean>();
        this._videoPlaybackStartedSent = false;
        this._videoPlaybackErrors = false;
        this._mediaPlayer = null;
        this._muted = false;
        this._volumeBeforeMute = 0.5f;
        this.createView();
    }
    
    public ApplifierImpactVideoPlayView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this._countDownText = null;
        this._timeLeftInSecondsText = null;
        this._skipText = null;
        this._skipTextView = null;
        this._skipTimeInSeconds = 0;
        this._bufferingText = null;
        this._bufferingStartedMillis = 0L;
        this._bufferingCompledtedMillis = 0L;
        this._videoStartedPlayingMillis = 0L;
        this._videoPausedTimer = null;
        this._videoView = null;
        this._videoFileName = null;
        this._bufferingView = null;
        this._pausedView = null;
        this._muteButton = null;
        this._videoPlayheadPrepared = false;
        this._sentPositionEvents = new HashMap<ApplifierImpactWebData.ApplifierVideoPosition, Boolean>();
        this._videoPlaybackStartedSent = false;
        this._videoPlaybackErrors = false;
        this._mediaPlayer = null;
        this._muted = false;
        this._volumeBeforeMute = 0.5f;
        this.createView();
    }
    
    public ApplifierImpactVideoPlayView(final Context context, final IApplifierImpactVideoPlayerListener listener) {
        super(context);
        this._countDownText = null;
        this._timeLeftInSecondsText = null;
        this._skipText = null;
        this._skipTextView = null;
        this._skipTimeInSeconds = 0;
        this._bufferingText = null;
        this._bufferingStartedMillis = 0L;
        this._bufferingCompledtedMillis = 0L;
        this._videoStartedPlayingMillis = 0L;
        this._videoPausedTimer = null;
        this._videoView = null;
        this._videoFileName = null;
        this._bufferingView = null;
        this._pausedView = null;
        this._muteButton = null;
        this._videoPlayheadPrepared = false;
        this._sentPositionEvents = new HashMap<ApplifierImpactWebData.ApplifierVideoPosition, Boolean>();
        this._videoPlaybackStartedSent = false;
        this._videoPlaybackErrors = false;
        this._mediaPlayer = null;
        this._muted = false;
        this._volumeBeforeMute = 0.5f;
        this._listener = listener;
        this.createView();
    }
    
    static /* synthetic */ void access$22(final ApplifierImpactVideoPlayView applifierImpactVideoPlayView, final MediaPlayer mediaPlayer) {
        applifierImpactVideoPlayView._mediaPlayer = mediaPlayer;
    }
    
    static /* synthetic */ void access$26(final ApplifierImpactVideoPlayView applifierImpactVideoPlayView, final boolean videoPlayheadPrepared) {
        applifierImpactVideoPlayView._videoPlayheadPrepared = videoPlayheadPrepared;
    }
    
    static /* synthetic */ void access$29(final ApplifierImpactVideoPlayView applifierImpactVideoPlayView, final boolean muted) {
        applifierImpactVideoPlayView._muted = muted;
    }
    
    private void createAndAddBufferingView() {
        if (this._bufferingView == null) {
            this._bufferingView = new ApplifierImpactBufferingView(this.getContext());
        }
        if (this._bufferingView != null && this._bufferingView.getParent() == null) {
            final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
            relativeLayout$LayoutParams.addRule(13);
            this.addView((View)this._bufferingView, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        }
    }
    
    private void createAndAddMuteButton() {
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        (this._muteButton = new ApplifierImpactMuteVideoButton(this.getContext())).setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        if (this._muted) {
            this._muteButton.setState(ApplifierImpactMuteVideoButton.ApplifierImpactMuteVideoButtonState.Muted);
        }
        this._muteButton.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                if (ApplifierImpactVideoPlayView.this._videoPlayheadPrepared && ApplifierImpactVideoPlayView.this._videoPlaybackStartedSent) {
                    if (!ApplifierImpactVideoPlayView.this._muted) {
                        ApplifierImpactVideoPlayView.access$29(ApplifierImpactVideoPlayView.this, true);
                        ApplifierImpactVideoPlayView.this._muteButton.setState(ApplifierImpactMuteVideoButton.ApplifierImpactMuteVideoButtonState.Muted);
                        ApplifierImpactVideoPlayView.this.storeVolume();
                        ApplifierImpactVideoPlayView.this._mediaPlayer.setVolume(0.0f, 0.0f);
                        return;
                    }
                    ApplifierImpactVideoPlayView.access$29(ApplifierImpactVideoPlayView.this, false);
                    ApplifierImpactVideoPlayView.this._muteButton.setState(ApplifierImpactMuteVideoButton.ApplifierImpactMuteVideoButtonState.UnMuted);
                    ApplifierImpactVideoPlayView.this._mediaPlayer.setVolume(ApplifierImpactVideoPlayView.this._volumeBeforeMute, ApplifierImpactVideoPlayView.this._volumeBeforeMute);
                }
            }
        });
        this.addView((View)this._muteButton);
    }
    
    private void createAndAddPausedView() {
        if (this._pausedView == null) {
            this._pausedView = new ApplifierImpactVideoPausedView(this.getContext());
        }
        if (this._pausedView != null && this._pausedView.getParent() == null) {
            final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-1, -1);
            relativeLayout$LayoutParams.addRule(13);
            this.addView((View)this._pausedView, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        }
    }
    
    private void createAndAddSkipText() {
        (this._skipText = new RelativeLayout(this.getContext())).setId(3010);
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        layoutParams.topMargin = 5;
        layoutParams.leftMargin = 5;
        this._skipText.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this._skipText.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                ApplifierImpactUtils.Log("Touching the skiptext", this);
                ApplifierImpactVideoPlayView.this._listener.onVideoSkip();
            }
        });
        (this._skipTextView = new TextView(this.getContext())).setTextColor(-1);
        this._skipTextView.setText((CharSequence)("You can skip this video in " + this._skipTimeInSeconds + " seconds"));
        this._skipTextView.setId(10010);
        this._skipText.addView((View)this._skipTextView);
        this.addView((View)this._skipText);
    }
    
    private void createView() {
        if (ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS != null && ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("muteVideoSounds") && ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("muteVideoSounds").equals(true)) {
            this._muted = true;
        }
        ApplifierImpactUtils.Log("Creating custom view", this);
        this.setBackgroundColor(-16777216);
        (this._videoView = new VideoView(this.getContext())).setId(3001);
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this._videoView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.addView((View)this._videoView, (ViewGroup$LayoutParams)layoutParams);
        this._videoView.setClickable(true);
        this._videoView.setOnCompletionListener((MediaPlayer$OnCompletionListener)this._listener);
        this._videoView.setOnPreparedListener((MediaPlayer$OnPreparedListener)new MediaPlayer$OnPreparedListener() {
            public void onPrepared(final MediaPlayer mediaPlayer) {
                ApplifierImpactUtils.Log("onPrepared", this);
                ApplifierImpactVideoPlayView.access$22(ApplifierImpactVideoPlayView.this, mediaPlayer);
                if (ApplifierImpactVideoPlayView.this._muted) {
                    ApplifierImpactVideoPlayView.this.storeVolume();
                    ApplifierImpactVideoPlayView.this._mediaPlayer.setVolume(0.0f, 0.0f);
                }
                ApplifierImpactVideoPlayView.access$26(ApplifierImpactVideoPlayView.this, true);
            }
        });
        (this._bufferingText = new RelativeLayout(this.getContext())).setId(3100);
        final RelativeLayout$LayoutParams layoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
        layoutParams2.addRule(10);
        layoutParams2.addRule(11);
        layoutParams2.topMargin = 3;
        layoutParams2.rightMargin = 3;
        this._bufferingText.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
        final TextView textView = new TextView(this.getContext());
        textView.setTextColor(-1);
        textView.setText((CharSequence)"Buffering...");
        textView.setId(3103);
        this._bufferingText.addView((View)textView);
        this.addView((View)this._bufferingText);
        (this._countDownText = new RelativeLayout(this.getContext())).setId(3002);
        final RelativeLayout$LayoutParams layoutParams3 = new RelativeLayout$LayoutParams(-2, -2);
        layoutParams3.addRule(12);
        layoutParams3.addRule(11);
        layoutParams3.bottomMargin = 3;
        layoutParams3.rightMargin = 3;
        this._countDownText.setLayoutParams((ViewGroup$LayoutParams)layoutParams3);
        final TextView textView2 = new TextView(this.getContext());
        textView2.setTextColor(-1);
        textView2.setText((CharSequence)"This video ends in ");
        textView2.setId(10001);
        (this._timeLeftInSecondsText = new TextView(this.getContext())).setTextColor(-1);
        this._timeLeftInSecondsText.setText((CharSequence)"00");
        this._timeLeftInSecondsText.setId(10002);
        final RelativeLayout$LayoutParams layoutParams4 = new RelativeLayout$LayoutParams(-2, -2);
        layoutParams4.addRule(1, 10001);
        layoutParams4.leftMargin = 1;
        this._timeLeftInSecondsText.setLayoutParams((ViewGroup$LayoutParams)layoutParams4);
        final TextView textView3 = new TextView(this.getContext());
        textView3.setTextColor(-1);
        textView3.setText((CharSequence)"seconds.");
        final RelativeLayout$LayoutParams layoutParams5 = new RelativeLayout$LayoutParams(-2, -2);
        layoutParams5.addRule(1, 10002);
        layoutParams5.leftMargin = 4;
        textView3.setLayoutParams((ViewGroup$LayoutParams)layoutParams5);
        this._countDownText.addView((View)textView2);
        this._countDownText.addView((View)this._timeLeftInSecondsText);
        this._countDownText.addView((View)textView3);
        this.addView((View)this._countDownText);
        if (this.hasSkipDuration()) {
            this._skipTimeInSeconds = this.getSkipDuration();
            this.createAndAddSkipText();
        }
        this.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                if (!ApplifierImpactVideoPlayView.this._videoView.isPlaying()) {
                    ApplifierImpactVideoPlayView.this.hideVideoPausedView();
                    ApplifierImpactVideoPlayView.this.startVideo();
                }
            }
        });
        this.setOnFocusChangeListener((View$OnFocusChangeListener)new View$OnFocusChangeListener() {
            public void onFocusChange(final View view, final boolean b) {
                if (!b) {
                    ApplifierImpactVideoPlayView.this.pauseVideo();
                }
            }
        });
        this.createAndAddMuteButton();
    }
    
    private void disableSkippingFromSkipText() {
        if (this._skipText != null) {
            this._skipText.setClickable(false);
        }
    }
    
    private void enableSkippingFromSkipText() {
        if (this._skipText != null) {
            this._skipText.setVisibility(0);
            this._skipText.setClickable(true);
            this._skipText.setBackgroundColor(33554431);
            this._skipText.setFocusable(true);
            this._skipTextView.setText((CharSequence)"Skip video");
            this._skipText.requestFocus();
        }
    }
    
    private int getSkipDuration() {
        if (this.hasSkipDuration()) {
            return ApplifierImpactProperties.ALLOW_VIDEO_SKIP;
        }
        return 0;
    }
    
    private boolean hasSkipDuration() {
        return ApplifierImpactProperties.ALLOW_VIDEO_SKIP > 0;
    }
    
    private void hideBufferingView() {
        if (this._bufferingView != null && this._bufferingView.getParent() != null) {
            this.removeView((View)this._bufferingView);
        }
    }
    
    private void hideSkipText() {
        if (this._skipText != null && this._skipText.getParent() != null) {
            this.disableSkippingFromSkipText();
            this._skipText.setVisibility(4);
        }
    }
    
    private void hideTimeRemainingLabel() {
        if (this._countDownText != null && this._countDownText.getParent() != null) {
            this._countDownText.removeAllViews();
            this.removeView((View)this._countDownText);
        }
    }
    
    private void hideVideoPausedView() {
        if (this._pausedView != null && this._pausedView.getParent() != null) {
            this.removeView((View)this._pausedView);
        }
    }
    
    private void purgeVideoPausedTimer() {
        if (this._videoPausedTimer != null) {
            this._videoPausedTimer.cancel();
            this._videoPausedTimer.purge();
            this._videoPausedTimer = null;
        }
    }
    
    private void setBufferingTextVisibility(final int n, final boolean b, final boolean b2) {
        ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)new Runnable() {
            @Override
            public void run() {
                if (ApplifierImpactVideoPlayView.this._bufferingText != null) {
                    ApplifierImpactVideoPlayView.this._bufferingText.setVisibility(n);
                }
                if (n == 0) {
                    if (ApplifierImpactVideoPlayView.this._skipText == null) {
                        ApplifierImpactVideoPlayView.this.createAndAddSkipText();
                    }
                    ApplifierImpactVideoPlayView.this.enableSkippingFromSkipText();
                    return;
                }
                if (!b) {
                    ApplifierImpactVideoPlayView.this.hideSkipText();
                    return;
                }
                if (b2) {
                    ApplifierImpactVideoPlayView.this.enableSkippingFromSkipText();
                    return;
                }
                ApplifierImpactVideoPlayView.this.disableSkippingFromSkipText();
            }
        });
    }
    
    private void startVideo() {
        if (ApplifierImpactProperties.CURRENT_ACTIVITY != null) {
            ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)new Runnable() {
                @Override
                public void run() {
                    ApplifierImpactVideoPlayView.this._videoView.start();
                    ApplifierImpactVideoPlayView.this.setKeepScreenOn(true);
                }
            });
        }
        if (this._videoPausedTimer == null) {
            (this._videoPausedTimer = new Timer()).scheduleAtFixedRate(new VideoStateChecker((VideoStateChecker)null), 500L, 500L);
        }
    }
    
    private void storeVolume() {
        final AudioManager audioManager = (AudioManager)((Context)ApplifierImpactProperties.CURRENT_ACTIVITY).getSystemService("audio");
        if (audioManager != null) {
            final int streamVolume = audioManager.getStreamVolume(3);
            final int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            final float f = 1.0f / streamMaxVolume;
            this._volumeBeforeMute = f * streamVolume;
            ApplifierImpactUtils.Log("Storing volume: " + streamVolume + ", " + streamMaxVolume + ", " + f + ", " + this._volumeBeforeMute, this);
        }
    }
    
    private void videoErrorOperations() {
        this._videoPlaybackErrors = true;
        this.purgeVideoPausedTimer();
        if (this._listener != null) {
            this._listener.onVideoPlaybackError();
        }
        ApplifierImpactInstrumentation.gaInstrumentationVideoError(ApplifierImpactProperties.SELECTED_CAMPAIGN, null);
    }
    
    public void clearVideoPlayer() {
        ApplifierImpactUtils.Log("clearVideoPlayer", this);
        this.setKeepScreenOn(false);
        this.setOnClickListener((View$OnClickListener)null);
        this.setOnFocusChangeListener((View$OnFocusChangeListener)null);
        this.hideSkipText();
        this.hideTimeRemainingLabel();
        this.hideBufferingView();
        this.hideVideoPausedView();
        this.purgeVideoPausedTimer();
        this._videoView.stopPlayback();
        this._videoView.setOnCompletionListener((MediaPlayer$OnCompletionListener)null);
        this._videoView.setOnPreparedListener((MediaPlayer$OnPreparedListener)null);
        this._videoView.setOnErrorListener((MediaPlayer$OnErrorListener)null);
        this.removeAllViews();
        this._skipText = null;
        this._skipTextView = null;
        this._bufferingText = null;
        this._bufferingView = null;
        this._countDownText = null;
        this._timeLeftInSecondsText = null;
    }
    
    public long getBufferingDuration() {
        if (this._bufferingCompledtedMillis == 0L) {
            this._bufferingCompledtedMillis = System.currentTimeMillis();
        }
        return this._bufferingCompledtedMillis - this._bufferingStartedMillis;
    }
    
    public int getSecondsUntilBackButtonAllowed() {
        int round;
        if (ApplifierImpactProperties.ALLOW_BACK_BUTTON_SKIP > 0 && this._videoStartedPlayingMillis > 0L) {
            round = Math.round(1000 * ApplifierImpactProperties.ALLOW_BACK_BUTTON_SKIP - (System.currentTimeMillis() - this._videoStartedPlayingMillis));
            if (round < 0) {
                round = 0;
            }
        }
        else {
            final int allow_BACK_BUTTON_SKIP = ApplifierImpactProperties.ALLOW_BACK_BUTTON_SKIP;
            round = 0;
            if (allow_BACK_BUTTON_SKIP > 0) {
                final long n = lcmp(this._videoStartedPlayingMillis, 0L);
                round = 0;
                if (n <= 0) {
                    return 1;
                }
            }
        }
        return round;
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.hideVideoPausedView();
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        switch (n) {
            default: {
                return false;
            }
            case 4: {
                ApplifierImpactUtils.Log("onKeyDown", this);
                if (ApplifierImpactProperties.ALLOW_BACK_BUTTON_SKIP == 0 || (ApplifierImpactProperties.ALLOW_BACK_BUTTON_SKIP > 0 && this.getSecondsUntilBackButtonAllowed() == 0)) {
                    this.clearVideoPlayer();
                    final long bufferingDuration = this.getBufferingDuration();
                    final HashMap<String, Long> hashMap = new HashMap<String, Long>();
                    hashMap.put("bufferingDuration", bufferingDuration);
                    hashMap.put("eventValue", (Long)"back");
                    ApplifierImpactInstrumentation.gaInstrumentationVideoAbort(ApplifierImpactProperties.SELECTED_CAMPAIGN, (Map<String, Object>)hashMap);
                }
                if (this._listener != null) {
                    this._listener.onBackButtonClicked((View)this);
                }
                return true;
            }
        }
    }
    
    public void pauseVideo() {
        this.purgeVideoPausedTimer();
        if (ApplifierImpactProperties.CURRENT_ACTIVITY != null && this._videoView != null && this._videoView.isPlaying()) {
            ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)new Runnable() {
                @Override
                public void run() {
                    ApplifierImpactVideoPlayView.this._videoView.pause();
                    ApplifierImpactVideoPlayView.this.setKeepScreenOn(false);
                    ApplifierImpactVideoPlayView.this.createAndAddPausedView();
                }
            });
        }
    }
    
    public void playVideo(final String videoFileName) {
        if (videoFileName != null) {
            this._videoPlayheadPrepared = false;
            this._videoFileName = videoFileName;
            ApplifierImpactUtils.Log("Playing video from: " + this._videoFileName, this);
            this._videoView.setOnErrorListener((MediaPlayer$OnErrorListener)new MediaPlayer$OnErrorListener() {
                public boolean onError(final MediaPlayer mediaPlayer, final int i, final int j) {
                    ApplifierImpactUtils.Log("For some reason the device failed to play the video (error: " + i + ", " + j + "), a crash was prevented.", this);
                    ApplifierImpactVideoPlayView.this.videoErrorOperations();
                    return true;
                }
            });
            try {
                this._videoView.setVideoPath(this._videoFileName);
                if (!this._videoPlaybackErrors) {
                    this._timeLeftInSecondsText.setText((CharSequence)new StringBuilder().append(Math.round(Math.ceil(this._videoView.getDuration() / 1000))).toString());
                    this._bufferingStartedMillis = System.currentTimeMillis();
                    this.startVideo();
                }
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("For some reason the device failed to play the video, a crash was prevented.", this);
                this.videoErrorOperations();
            }
        }
    }
    
    private class VideoStateChecker extends TimerTask
    {
        private Float _curPos;
        private int _duration;
        private Float _oldPos;
        private boolean _playHeadHasMoved;
        private Float _skipTimeLeft;
        private boolean _videoHasStalled;
        
        private VideoStateChecker() {
            super();
            this._curPos = 0.0f;
            this._oldPos = 0.0f;
            this._skipTimeLeft = 0.01f;
            this._duration = 1;
            this._playHeadHasMoved = false;
            this._videoHasStalled = false;
        }
        
        @Override
        public void run() {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: aload_0        
            //     1: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //     4: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$0:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;
            //     7: ifnull          20
            //    10: aload_0        
            //    11: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //    14: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$1:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/TextView;
            //    17: ifnonnull       25
            //    20: aload_0        
            //    21: invokevirtual   com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.cancel:()Z
            //    24: pop            
            //    25: aload_0        
            //    26: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //    29: invokevirtual   com/fusepowered/a1/video/ApplifierImpactVideoPlayView.getContext:()Landroid/content/Context;
            //    32: ldc             "power"
            //    34: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
            //    37: checkcast       Landroid/os/PowerManager;
            //    40: invokevirtual   android/os/PowerManager.isScreenOn:()Z
            //    43: ifne            53
            //    46: aload_0        
            //    47: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //    50: invokevirtual   com/fusepowered/a1/video/ApplifierImpactVideoPlayView.pauseVideo:()V
            //    53: aload_0        
            //    54: aload_0        
            //    55: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._curPos:Ljava/lang/Float;
            //    58: putfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._oldPos:Ljava/lang/Float;
            //    61: aload_0        
            //    62: aload_0        
            //    63: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //    66: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$0:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;
            //    69: invokevirtual   android/widget/VideoView.getCurrentPosition:()I
            //    72: i2f            
            //    73: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
            //    76: putfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._curPos:Ljava/lang/Float;
            //    79: fconst_0       
            //    80: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
            //    83: pop            
            //    84: iconst_1       
            //    85: istore          4
            //    87: iconst_1       
            //    88: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
            //    91: astore          5
            //    93: aload_0        
            //    94: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //    97: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$0:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;
            //   100: invokevirtual   android/widget/VideoView.getDuration:()I
            //   103: istore          18
            //   105: iload           18
            //   107: istore          4
            //   109: aload           5
            //   111: invokevirtual   java/lang/Boolean.booleanValue:()Z
            //   114: ifeq            123
            //   117: aload_0        
            //   118: iload           4
            //   120: putfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._duration:I
            //   123: aload_0        
            //   124: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._curPos:Ljava/lang/Float;
            //   127: invokevirtual   java/lang/Float.floatValue:()F
            //   130: aload_0        
            //   131: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._duration:I
            //   134: i2f            
            //   135: fdiv           
            //   136: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
            //   139: astore          7
            //   141: aload_0        
            //   142: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._curPos:Ljava/lang/Float;
            //   145: invokevirtual   java/lang/Float.floatValue:()F
            //   148: aload_0        
            //   149: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._oldPos:Ljava/lang/Float;
            //   152: invokevirtual   java/lang/Float.floatValue:()F
            //   155: fcmpl          
            //   156: ifle            775
            //   159: aload_0        
            //   160: iconst_1       
            //   161: putfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._playHeadHasMoved:Z
            //   164: aload_0        
            //   165: iconst_0       
            //   166: putfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._videoHasStalled:Z
            //   169: aload_0        
            //   170: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   173: astore          15
            //   175: aload_0        
            //   176: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   179: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$2:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Z
            //   182: istore          16
            //   184: aload_0        
            //   185: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._skipTimeLeft:Ljava/lang/Float;
            //   188: invokevirtual   java/lang/Float.floatValue:()F
            //   191: fconst_0       
            //   192: fcmpg          
            //   193: ifgt            769
            //   196: iconst_1       
            //   197: istore          17
            //   199: aload           15
            //   201: iconst_4       
            //   202: iload           16
            //   204: iload           17
            //   206: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$3:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;IZZ)V
            //   209: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
            //   212: new             Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$1;
            //   215: dup            
            //   216: aload_0        
            //   217: invokespecial   com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$1.<init>:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
            //   220: invokevirtual   android/app/Activity.runOnUiThread:(Ljava/lang/Runnable;)V
            //   223: aload_0        
            //   224: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   227: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$2:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Z
            //   230: ifeq            810
            //   233: aload_0        
            //   234: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   237: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$4:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)I
            //   240: ifle            810
            //   243: aload_0        
            //   244: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._skipTimeLeft:Ljava/lang/Float;
            //   247: invokevirtual   java/lang/Float.floatValue:()F
            //   250: fconst_0       
            //   251: fcmpl          
            //   252: ifle            810
            //   255: aload_0        
            //   256: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._duration:I
            //   259: sipush          1000
            //   262: idiv           
            //   263: aload_0        
            //   264: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   267: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$4:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)I
            //   270: if_icmple       810
            //   273: aload_0        
            //   274: sipush          1000
            //   277: aload_0        
            //   278: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   281: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$4:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)I
            //   284: imul           
            //   285: i2f            
            //   286: aload_0        
            //   287: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._curPos:Ljava/lang/Float;
            //   290: invokevirtual   java/lang/Float.floatValue:()F
            //   293: fsub           
            //   294: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
            //   297: putfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._skipTimeLeft:Ljava/lang/Float;
            //   300: aload_0        
            //   301: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._skipTimeLeft:Ljava/lang/Float;
            //   304: invokevirtual   java/lang/Float.floatValue:()F
            //   307: fconst_0       
            //   308: fcmpg          
            //   309: ifge            320
            //   312: aload_0        
            //   313: fconst_0       
            //   314: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
            //   317: putfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._skipTimeLeft:Ljava/lang/Float;
            //   320: aload_0        
            //   321: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._skipTimeLeft:Ljava/lang/Float;
            //   324: invokevirtual   java/lang/Float.floatValue:()F
            //   327: fconst_0       
            //   328: fcmpl          
            //   329: ifne            793
            //   332: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
            //   335: new             Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$2;
            //   338: dup            
            //   339: aload_0        
            //   340: invokespecial   com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$2.<init>:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
            //   343: invokevirtual   android/app/Activity.runOnUiThread:(Ljava/lang/Runnable;)V
            //   346: aload           7
            //   348: invokevirtual   java/lang/Float.floatValue:()F
            //   351: f2d            
            //   352: ldc2_w          0.25
            //   355: dcmpl          
            //   356: ifle            412
            //   359: aload_0        
            //   360: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   363: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$9:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;
            //   366: getstatic       com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition.FirstQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
            //   369: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
            //   374: ifne            412
            //   377: aload_0        
            //   378: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   381: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$10:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;
            //   384: getstatic       com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition.FirstQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
            //   387: invokeinterface com/fusepowered/a1/video/IApplifierImpactVideoPlayerListener.onEventPositionReached:(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V
            //   392: aload_0        
            //   393: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   396: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$9:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;
            //   399: getstatic       com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition.FirstQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
            //   402: iconst_1       
            //   403: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
            //   406: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
            //   411: pop            
            //   412: aload           7
            //   414: invokevirtual   java/lang/Float.floatValue:()F
            //   417: f2d            
            //   418: ldc2_w          0.5
            //   421: dcmpl          
            //   422: ifle            478
            //   425: aload_0        
            //   426: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   429: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$9:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;
            //   432: getstatic       com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition.MidPoint:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
            //   435: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
            //   440: ifne            478
            //   443: aload_0        
            //   444: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   447: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$10:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;
            //   450: getstatic       com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition.MidPoint:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
            //   453: invokeinterface com/fusepowered/a1/video/IApplifierImpactVideoPlayerListener.onEventPositionReached:(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V
            //   458: aload_0        
            //   459: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   462: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$9:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;
            //   465: getstatic       com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition.MidPoint:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
            //   468: iconst_1       
            //   469: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
            //   472: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
            //   477: pop            
            //   478: aload           7
            //   480: invokevirtual   java/lang/Float.floatValue:()F
            //   483: f2d            
            //   484: ldc2_w          0.75
            //   487: dcmpl          
            //   488: ifle            544
            //   491: aload_0        
            //   492: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   495: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$9:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;
            //   498: getstatic       com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition.ThirdQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
            //   501: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
            //   506: ifne            544
            //   509: aload_0        
            //   510: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   513: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$10:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Lcom/fusepowered/a1/video/IApplifierImpactVideoPlayerListener;
            //   516: getstatic       com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition.ThirdQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
            //   519: invokeinterface com/fusepowered/a1/video/IApplifierImpactVideoPlayerListener.onEventPositionReached:(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V
            //   524: aload_0        
            //   525: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   528: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$9:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Ljava/util/Map;
            //   531: getstatic       com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition.ThirdQuartile:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierVideoPosition;
            //   534: iconst_1       
            //   535: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
            //   538: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
            //   543: pop            
            //   544: aload_0        
            //   545: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   548: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$0:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;
            //   551: invokevirtual   android/widget/VideoView.getBufferPercentage:()I
            //   554: istore          11
            //   556: iload           11
            //   558: istore          9
            //   560: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
            //   563: ifnull          622
            //   566: aload_0        
            //   567: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._playHeadHasMoved:Z
            //   570: ifne            622
            //   573: aload_0        
            //   574: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   577: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$11:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)J
            //   580: lconst_0       
            //   581: lcmp           
            //   582: ifle            622
            //   585: invokestatic    java/lang/System.currentTimeMillis:()J
            //   588: aload_0        
            //   589: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   592: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$11:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)J
            //   595: lsub           
            //   596: ldc2_w          20000
            //   599: lcmp           
            //   600: ifle            622
            //   603: aload_0        
            //   604: invokevirtual   com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.cancel:()Z
            //   607: pop            
            //   608: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
            //   611: new             Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$5;
            //   614: dup            
            //   615: aload_0        
            //   616: invokespecial   com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$5.<init>:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
            //   619: invokevirtual   android/app/Activity.runOnUiThread:(Ljava/lang/Runnable;)V
            //   622: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
            //   625: ifnull          672
            //   628: aload_0        
            //   629: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   632: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$0:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;
            //   635: ifnull          672
            //   638: iload           9
            //   640: bipush          15
            //   642: if_icmpge       672
            //   645: aload_0        
            //   646: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   649: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$0:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Landroid/widget/VideoView;
            //   652: invokevirtual   android/widget/VideoView.getParent:()Landroid/view/ViewParent;
            //   655: ifnonnull       672
            //   658: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
            //   661: new             Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$6;
            //   664: dup            
            //   665: aload_0        
            //   666: invokespecial   com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$6.<init>:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
            //   669: invokevirtual   android/app/Activity.runOnUiThread:(Ljava/lang/Runnable;)V
            //   672: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
            //   675: ifnull          709
            //   678: aload_0        
            //   679: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   682: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$14:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)Z
            //   685: ifeq            709
            //   688: aload_0        
            //   689: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._playHeadHasMoved:Z
            //   692: ifeq            709
            //   695: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
            //   698: new             Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7;
            //   701: dup            
            //   702: aload_0        
            //   703: invokespecial   com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$7.<init>:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
            //   706: invokevirtual   android/app/Activity.runOnUiThread:(Ljava/lang/Runnable;)V
            //   709: return         
            //   710: astore_2       
            //   711: ldc             "Could not get videoView currentPosition"
            //   713: aload_0        
            //   714: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   717: aload_0        
            //   718: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._oldPos:Ljava/lang/Float;
            //   721: invokevirtual   java/lang/Float.floatValue:()F
            //   724: fconst_0       
            //   725: fcmpl          
            //   726: ifle            740
            //   729: aload_0        
            //   730: aload_0        
            //   731: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._oldPos:Ljava/lang/Float;
            //   734: putfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._curPos:Ljava/lang/Float;
            //   737: goto            79
            //   740: aload_0        
            //   741: ldc             0.01
            //   743: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
            //   746: putfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._curPos:Ljava/lang/Float;
            //   749: goto            79
            //   752: astore          6
            //   754: ldc             "Could not get videoView duration"
            //   756: aload_0        
            //   757: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   760: iconst_0       
            //   761: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
            //   764: astore          5
            //   766: goto            109
            //   769: iconst_0       
            //   770: istore          17
            //   772: goto            199
            //   775: aload_0        
            //   776: iconst_1       
            //   777: putfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._videoHasStalled:Z
            //   780: aload_0        
            //   781: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   784: iconst_0       
            //   785: iconst_1       
            //   786: iconst_1       
            //   787: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$3:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;IZZ)V
            //   790: goto            209
            //   793: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
            //   796: new             Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$3;
            //   799: dup            
            //   800: aload_0        
            //   801: invokespecial   com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$3.<init>:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
            //   804: invokevirtual   android/app/Activity.runOnUiThread:(Ljava/lang/Runnable;)V
            //   807: goto            346
            //   810: aload_0        
            //   811: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._playHeadHasMoved:Z
            //   814: ifeq            346
            //   817: aload_0        
            //   818: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker._duration:I
            //   821: sipush          1000
            //   824: idiv           
            //   825: aload_0        
            //   826: getfield        com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker.this$0:Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;
            //   829: invokestatic    com/fusepowered/a1/video/ApplifierImpactVideoPlayView.access$4:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView;)I
            //   832: if_icmpgt       346
            //   835: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
            //   838: new             Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$4;
            //   841: dup            
            //   842: aload_0        
            //   843: invokespecial   com/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker$4.<init>:(Lcom/fusepowered/a1/video/ApplifierImpactVideoPlayView$VideoStateChecker;)V
            //   846: invokevirtual   android/app/Activity.runOnUiThread:(Ljava/lang/Runnable;)V
            //   849: goto            346
            //   852: astore          8
            //   854: ldc             "Could not get videoView buffering percentage"
            //   856: aload_0        
            //   857: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   860: iconst_0       
            //   861: istore          9
            //   863: goto            560
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                 
            //  -----  -----  -----  -----  ---------------------
            //  61     79     710    752    Ljava/lang/Exception;
            //  93     105    752    769    Ljava/lang/Exception;
            //  544    556    852    866    Ljava/lang/Exception;
            // 
            // The error that occurred was:
            // 
            // java.lang.IndexOutOfBoundsException: Index: 380, Size: 380
            //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
            //     at java.util.ArrayList.get(ArrayList.java:411)
            //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
            //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
            //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
            //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
            //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
            //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
            //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
            //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
            //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
            // 
            throw new IllegalStateException("An error occurred while decompiling this method.");
        }
    }
}
