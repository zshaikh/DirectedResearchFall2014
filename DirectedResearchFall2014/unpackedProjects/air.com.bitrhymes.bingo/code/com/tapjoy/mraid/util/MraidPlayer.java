package com.tapjoy.mraid.util;

import com.tapjoy.mraid.listener.*;
import com.tapjoy.mraid.controller.*;
import android.content.*;
import android.view.*;
import android.widget.*;
import android.net.*;
import com.tapjoy.*;
import android.media.*;

public class MraidPlayer extends VideoView implements MediaPlayer$OnCompletionListener, MediaPlayer$OnErrorListener, MediaPlayer$OnPreparedListener
{
    private static String TAG;
    private static String transientText;
    private AudioManager aManager;
    private ImageButton closeImageButton;
    private String contentURL;
    private boolean isReleased;
    private Player listener;
    private int mutedVolume;
    private Abstract.PlayerProperties playProperties;
    private RelativeLayout transientLayout;
    
    static {
        MraidPlayer.transientText = "Loading. Please Wait..";
        MraidPlayer.TAG = "MRAID Player";
    }
    
    public MraidPlayer(final Context context) {
        super(context);
        this.aManager = (AudioManager)this.getContext().getSystemService("audio");
    }
    
    void addTransientMessage() {
        if (this.playProperties.inline) {
            return;
        }
        (this.transientLayout = new RelativeLayout(this.getContext())).setLayoutParams(this.getLayoutParams());
        final TextView textView = new TextView(this.getContext());
        textView.setText((CharSequence)MraidPlayer.transientText);
        textView.setTextColor(-1);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams.addRule(13);
        this.transientLayout.addView((View)textView, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        ((ViewGroup)this.getParent()).addView((View)this.transientLayout);
    }
    
    void clearTransientMessage() {
        if (this.transientLayout != null) {
            ((ViewGroup)this.getParent()).removeView((View)this.transientLayout);
        }
    }
    
    void displayControl() {
        if (this.playProperties.showControl()) {
            final MediaController mediaController = new MediaController(this.getContext());
            this.setMediaController(mediaController);
            mediaController.setAnchorView((View)this);
        }
    }
    
    public ImageButton getCloseImageButton() {
        return this.closeImageButton;
    }
    
    void loadContent() {
        this.contentURL = this.contentURL.trim();
        this.contentURL = Utils.convert(this.contentURL);
        if (this.contentURL == null && this.listener != null) {
            this.removeView();
            this.listener.onError();
            return;
        }
        this.setVideoURI(Uri.parse(this.contentURL));
        TapjoyLog.d("player", Uri.parse(this.contentURL).toString());
        this.displayControl();
        this.startContent();
    }
    
    public void onCompletion(final MediaPlayer mediaPlayer) {
        if (this.playProperties.doLoop()) {
            this.start();
        }
        else if (this.playProperties.exitOnComplete() || this.playProperties.inline) {
            this.releasePlayer();
        }
    }
    
    public boolean onError(final MediaPlayer mediaPlayer, final int i, final int n) {
        TapjoyLog.i(MraidPlayer.TAG, "Player error : " + i);
        this.clearTransientMessage();
        this.removeView();
        if (this.listener != null) {
            this.listener.onError();
        }
        return false;
    }
    
    public void onPrepared(final MediaPlayer mediaPlayer) {
        this.clearTransientMessage();
        if (this.listener != null) {
            this.listener.onPrepared();
        }
    }
    
    public void playAudio() {
        this.loadContent();
    }
    
    public void playVideo() {
        if (this.playProperties.doMute()) {
            this.mutedVolume = this.aManager.getStreamVolume(3);
            this.aManager.setStreamVolume(3, 0, 4);
        }
        this.loadContent();
    }
    
    public void releasePlayer() {
        if (!this.isReleased) {
            this.isReleased = true;
            this.stopPlayback();
            this.removeView();
            if (this.playProperties != null && this.playProperties.doMute()) {
                this.unMute();
            }
            if (this.listener != null) {
                this.listener.onComplete();
            }
        }
    }
    
    void removeView() {
        final ViewGroup viewGroup = (ViewGroup)this.getParent();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
    }
    
    public void setListener(final Player listener) {
        this.listener = listener;
    }
    
    public void setPlayData(final Abstract.PlayerProperties playProperties, final String contentURL) {
        this.isReleased = false;
        this.playProperties = playProperties;
        this.contentURL = contentURL;
    }
    
    void startContent() {
        this.setOnCompletionListener((MediaPlayer$OnCompletionListener)this);
        this.setOnErrorListener((MediaPlayer$OnErrorListener)this);
        this.setOnPreparedListener((MediaPlayer$OnPreparedListener)this);
        if (!this.playProperties.inline) {
            this.addTransientMessage();
        }
        if (this.playProperties.isAutoPlay()) {
            this.start();
        }
    }
    
    void unMute() {
        this.aManager.setStreamVolume(3, this.mutedVolume, 4);
    }
}
