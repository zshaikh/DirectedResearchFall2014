package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import org.json.*;

class au extends as
{
    private final AppLovinAd a;
    
    au(final AppLovinAd a, final AppLovinSdkImpl appLovinSdkImpl) {
        super("TrackClick", v.k, appLovinSdkImpl);
        if (a == null) {
            throw new IllegalArgumentException("No clicked ad specified");
        }
        this.a = a;
        appLovinSdkImpl.b().a("clk_req");
    }
    
    @Override
    public void a(final int n) {
        m.b(n, this.e);
    }
    
    @Override
    protected void a(final k k, final l l) {
        k.a(this.a.getClickTrackerUrl(), l);
    }
    
    @Override
    public void a(final JSONObject jsonObject, final int n) {
        this.e.b().a("clk_trk");
    }
}
