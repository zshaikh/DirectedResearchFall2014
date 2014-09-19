package com.applovin.impl.adview;

import java.util.*;
import android.app.*;
import com.applovin.sdk.*;
import android.graphics.*;
import android.view.*;
import com.applovin.impl.sdk.*;
import android.content.*;
import android.net.*;
import java.io.*;

class o implements AppLovinVideoCallback
{
    final /* synthetic */ AdViewControllerJsInterface a;
    
    o(final AdViewControllerJsInterface a) {
        this.a = a;
        super();
    }
    
    @Override
    public void onPlaybackStateChanged(final AppLovinVideoPlaybackState appLovinVideoPlaybackState) {
        this.a.notifyJavaScriptOfNewState(appLovinVideoPlaybackState);
        if (appLovinVideoPlaybackState == AppLovinVideoPlaybackState.PLAYING) {
            if (this.a.adVideoPlaybackListener != null) {
                this.a.adVideoPlaybackListener.videoPlaybackBegan(this.a.currentAd);
            }
        }
        else if (appLovinVideoPlaybackState == AppLovinVideoPlaybackState.PAUSED) {
            if (this.a.adVideoPlaybackListener != null) {
                this.a.adVideoPlaybackListener.videoPlaybackEnded(this.a.currentAd, this.a.videoOverlay.getPercentViewed(), false);
            }
        }
        else {
            if (appLovinVideoPlaybackState == AppLovinVideoPlaybackState.STOPPED) {
                if (this.a.adVideoPlaybackListener != null) {
                    this.a.adVideoPlaybackListener.videoPlaybackEnded(this.a.currentAd, this.a.videoOverlay.getPercentViewed(), true);
                }
                this.a.destroyVideoOverlay();
                return;
            }
            if (appLovinVideoPlaybackState == AppLovinVideoPlaybackState.FAILED) {
                if (this.a.adVideoPlaybackListener != null) {
                    this.a.adVideoPlaybackListener.videoPlaybackEnded(this.a.currentAd, 0.0, false);
                }
                this.a.videoOverlay.stopUnderlyingMediaPlayer();
            }
        }
    }
}
