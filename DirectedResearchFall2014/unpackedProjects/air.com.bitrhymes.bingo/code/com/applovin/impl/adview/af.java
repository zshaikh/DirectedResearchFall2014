package com.applovin.impl.adview;

import android.app.*;
import com.applovin.adview.*;
import android.content.*;
import android.widget.*;
import android.view.*;
import com.applovin.sdk.*;
import android.os.*;

class af implements Runnable
{
    final /* synthetic */ AppLovinAd a;
    final /* synthetic */ ab b;
    
    af(final ab b, final AppLovinAd a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        this.b.c.renderAd(this.a);
    }
}
