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

class a implements AppLovinAdDisplayListener
{
    final /* synthetic */ AppLovinInterstitialActivity a;
    
    a(final AppLovinInterstitialActivity a) {
        this.a = a;
        super();
    }
    
    @Override
    public void adDisplayed(final AppLovinAd appLovinAd) {
        final AppLovinAdDisplayListener c = this.a.b.c();
        if (c != null) {
            c.adDisplayed(appLovinAd);
        }
    }
    
    @Override
    public void adHidden(final AppLovinAd appLovinAd) {
        final AppLovinAdDisplayListener c = this.a.b.c();
        if (c != null) {
            c.adHidden(appLovinAd);
        }
        this.a.b.a(false);
        this.a.b.f();
        this.a.finish();
    }
}
