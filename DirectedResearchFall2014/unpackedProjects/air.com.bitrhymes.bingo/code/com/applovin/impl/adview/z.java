package com.applovin.impl.adview;

import com.applovin.sdk.*;
import java.util.concurrent.atomic.*;
import android.app.*;
import android.net.*;
import android.widget.*;
import android.content.*;
import android.media.*;
import android.view.*;

class z implements MediaPlayer$OnPreparedListener
{
    final /* synthetic */ AppLovinVideoCallback a;
    final /* synthetic */ AppLovinVideoOverlayImpl b;
    
    z(final AppLovinVideoOverlayImpl b, final AppLovinVideoCallback a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    public void onPrepared(final MediaPlayer mediaPlayer) {
        this.b.f = mediaPlayer;
        mediaPlayer.setOnCompletionListener((MediaPlayer$OnCompletionListener)new aa(this));
        this.b.d.setVideoSize(mediaPlayer.getVideoWidth(), mediaPlayer.getVideoHeight());
        mediaPlayer.setDisplay(this.b.d.getHolder());
        this.b.g.set(true);
        if (this.b.h.get()) {
            mediaPlayer.start();
            this.a.onPlaybackStateChanged(AppLovinVideoPlaybackState.PLAYING);
        }
    }
}
