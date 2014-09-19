package com.applovin.impl.adview;

import android.app.*;
import java.util.*;
import com.applovin.adview.*;
import android.content.*;
import com.applovin.sdk.*;
import com.applovin.impl.sdk.*;

class ai implements AppLovinAdLoadListener
{
    final /* synthetic */ ah a;
    
    ai(final ah a) {
        this.a = a;
        super();
    }
    
    @Override
    public void adReceived(final AppLovinAd appLovinAd) {
        this.a.a(appLovinAd);
        this.a.showAndRender(appLovinAd);
    }
    
    @Override
    public void failedToReceiveAd(final int n) {
        this.a.a(n);
    }
}
