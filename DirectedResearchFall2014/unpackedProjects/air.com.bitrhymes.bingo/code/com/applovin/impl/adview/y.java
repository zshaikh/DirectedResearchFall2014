package com.applovin.impl.adview;

import com.applovin.sdk.*;
import java.util.concurrent.atomic.*;
import android.app.*;
import android.net.*;
import android.widget.*;
import android.content.*;
import android.media.*;
import android.view.*;

class y implements MediaPlayer$OnErrorListener
{
    final /* synthetic */ AppLovinLogger a;
    final /* synthetic */ AppLovinVideoCallback b;
    final /* synthetic */ AppLovinVideoOverlayImpl c;
    
    y(final AppLovinVideoOverlayImpl c, final AppLovinLogger a, final AppLovinVideoCallback b) {
        this.c = c;
        this.a = a;
        this.b = b;
        super();
    }
    
    public boolean onError(final MediaPlayer mediaPlayer, final int i, final int j) {
        this.a.e(AppLovinVideoOverlayImpl.a, "AppLovinVideoView playback failed with error (" + i + "," + j + ")");
        this.b.onPlaybackStateChanged(AppLovinVideoPlaybackState.FAILED);
        return true;
    }
}
