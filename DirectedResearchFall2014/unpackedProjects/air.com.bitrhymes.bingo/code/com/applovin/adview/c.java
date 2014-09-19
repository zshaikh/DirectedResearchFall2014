package com.applovin.adview;

import android.app.*;
import android.util.*;
import android.os.*;
import com.applovin.impl.sdk.*;
import android.content.*;
import android.widget.*;
import android.view.*;
import java.util.*;
import com.applovin.impl.adview.*;
import com.applovin.sdk.*;

class c implements AppLovinAdVideoPlaybackListener
{
    final /* synthetic */ AppLovinInterstitialActivity a;
    
    c(final AppLovinInterstitialActivity a) {
        this.a = a;
        super();
    }
    
    @Override
    public void videoPlaybackBegan(final AppLovinAd appLovinAd) {
        final AppLovinAdVideoPlaybackListener b = this.a.b.b();
        if (b != null) {
            b.videoPlaybackBegan(appLovinAd);
        }
    }
    
    @Override
    public void videoPlaybackEnded(final AppLovinAd appLovinAd, final double n, final Boolean b) {
        final AppLovinAdVideoPlaybackListener b2 = this.a.b.b();
        if (b2 != null) {
            b2.videoPlaybackEnded(appLovinAd, n, b);
        }
    }
}
