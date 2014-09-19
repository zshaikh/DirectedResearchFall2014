package com.applovin.impl.adview;

import com.applovin.adview.*;
import android.app.*;
import java.util.concurrent.atomic.*;
import android.content.*;
import android.os.*;
import java.lang.reflect.*;
import android.widget.*;
import android.view.*;
import android.webkit.*;
import com.applovin.sdk.*;
import java.util.*;
import android.util.*;

class f implements AppLovinAdVideoPlaybackListener
{
    final /* synthetic */ AdViewControllerImpl a;
    
    f(final AdViewControllerImpl a) {
        this.a = a;
        super();
    }
    
    @Override
    public void videoPlaybackBegan(final AppLovinAd appLovinAd) {
        if (this.a.v != null) {
            this.a.v.videoPlaybackBegan(appLovinAd);
        }
    }
    
    @Override
    public void videoPlaybackEnded(final AppLovinAd appLovinAd, final double n, final Boolean b) {
        if (this.a.v != null) {
            this.a.v.videoPlaybackEnded(appLovinAd, n, b);
        }
    }
}
