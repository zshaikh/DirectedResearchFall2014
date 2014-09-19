package com.applovin.impl.adview;

import com.applovin.sdk.*;

class ad implements AppLovinAdClickListener
{
    final /* synthetic */ ah a;
    final /* synthetic */ ab b;
    
    ad(final ab b, final ah a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public void adClicked(final AppLovinAd appLovinAd) {
        final AppLovinAdClickListener d = this.a.d();
        if (d != null) {
            d.adClicked(appLovinAd);
        }
    }
}
