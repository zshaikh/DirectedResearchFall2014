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

class b implements AppLovinAdClickListener
{
    final /* synthetic */ AppLovinInterstitialActivity a;
    
    b(final AppLovinInterstitialActivity a) {
        this.a = a;
        super();
    }
    
    @Override
    public void adClicked(final AppLovinAd appLovinAd) {
        final AppLovinAdClickListener d = this.a.b.d();
        if (d != null) {
            d.adClicked(appLovinAd);
        }
    }
}
