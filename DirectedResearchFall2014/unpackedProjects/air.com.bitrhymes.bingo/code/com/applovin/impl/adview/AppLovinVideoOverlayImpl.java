package com.applovin.impl.adview;

import com.applovin.sdk.*;
import java.util.concurrent.atomic.*;
import android.app.*;
import android.net.*;
import android.widget.*;
import android.content.*;
import android.media.*;
import android.view.*;

public class AppLovinVideoOverlayImpl implements AppLovinVideoOverlay
{
    private static String a;
    private final AppLovinLogger b;
    private final AppLovinVideoCallback c;
    private AppLovinVideoView d;
    private RelativeLayout e;
    private MediaPlayer f;
    private AtomicReference g;
    private AtomicReference h;
    
    static {
        AppLovinVideoOverlayImpl.a = "AppLovinVideoOverlayImpl";
    }
    
    public AppLovinVideoOverlayImpl(final int leftMargin, final int topMargin, final int n, final int n2, final Activity activity, final Uri videoURI, final AppLovinLogger b, final AppLovinVideoCallback c) {
        super();
        this.g = new AtomicReference();
        this.h = new AtomicReference();
        this.b = b;
        this.c = c;
        this.g.set(false);
        this.h.set(false);
        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(n, n2);
        layoutParams.leftMargin = leftMargin;
        layoutParams.topMargin = topMargin;
        (this.e = new RelativeLayout((Context)activity)).setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.e.setBackgroundColor(-16777216);
        this.e.setGravity(17);
        (this.d = new AppLovinVideoView((Context)activity)).setVideoURI(videoURI);
        this.d.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        this.d.setOnErrorListener((MediaPlayer$OnErrorListener)new y(this, b, c));
        this.d.setOnPreparedListener((MediaPlayer$OnPreparedListener)new z(this, c));
        this.e.addView((View)this.d);
    }
    
    private int a(final int n) {
        return n / 1000;
    }
    
    private int b(final int n) {
        return n * 1000;
    }
    
    @Override
    public int getDuration() {
        return this.a(this.d.getDuration());
    }
    
    @Override
    public int getPercentViewed() {
        return (int)Math.ceil(100.0 * (this.d.getCurrentPosition() / this.d.getDuration()));
    }
    
    @Override
    public AppLovinVideoPlaybackState getPlaybackState() {
        if (this.d.isPlaying()) {
            return AppLovinVideoPlaybackState.PLAYING;
        }
        if (this.getPercentViewed() > 98) {
            return AppLovinVideoPlaybackState.STOPPED;
        }
        return AppLovinVideoPlaybackState.PAUSED;
    }
    
    @Override
    public int getPlaybackTime() {
        return this.a(this.d.getCurrentPosition());
    }
    
    @Override
    public RelativeLayout getVideoLayout() {
        return this.e;
    }
    
    @Override
    public void requestPause() {
        if (this.d.canPause()) {
            this.d.pause();
            this.c.onPlaybackStateChanged(AppLovinVideoPlaybackState.PAUSED);
        }
    }
    
    @Override
    public void requestPlay() {
        if (this.g.get()) {
            if (!this.d.isPlaying()) {
                this.d.start();
                this.c.onPlaybackStateChanged(AppLovinVideoPlaybackState.PLAYING);
            }
            return;
        }
        this.h.set(true);
    }
    
    @Override
    public void setPercentViewed(final int n) {
        this.d.seekTo(n / 100 * this.d.getDuration());
    }
    
    @Override
    public void setPlaybackTime(final int n) {
        this.d.seekTo(this.b(n));
    }
    
    @Override
    public void stopUnderlyingMediaPlayer() {
        if (this.f != null) {
            this.f.stop();
        }
    }
}
