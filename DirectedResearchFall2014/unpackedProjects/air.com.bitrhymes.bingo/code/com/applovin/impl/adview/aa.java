package com.applovin.impl.adview;

import android.media.*;

class aa implements MediaPlayer$OnCompletionListener
{
    final /* synthetic */ z a;
    
    aa(final z a) {
        this.a = a;
        super();
    }
    
    public void onCompletion(final MediaPlayer mediaPlayer) {
        this.a.a.onPlaybackStateChanged(AppLovinVideoPlaybackState.STOPPED);
    }
}
