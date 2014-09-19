package com.applovin.impl.adview;

import android.app.*;
import com.applovin.adview.*;
import android.content.*;
import android.widget.*;
import android.view.*;
import com.applovin.sdk.*;
import android.os.*;

class ac implements AppLovinAdDisplayListener
{
    final /* synthetic */ ah a;
    final /* synthetic */ ab b;
    
    ac(final ab b, final ah a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public void adDisplayed(final AppLovinAd appLovinAd) {
        ab.c(this.b);
        final AppLovinAdDisplayListener c = this.a.c();
        if (c != null) {
            c.adDisplayed(appLovinAd);
        }
    }
    
    @Override
    public void adHidden(final AppLovinAd appLovinAd) {
        this.b.a.runOnUiThread(this.b.d);
        final AppLovinAdDisplayListener c = this.a.c();
        if (c != null) {
            c.adHidden(appLovinAd);
        }
    }
}
