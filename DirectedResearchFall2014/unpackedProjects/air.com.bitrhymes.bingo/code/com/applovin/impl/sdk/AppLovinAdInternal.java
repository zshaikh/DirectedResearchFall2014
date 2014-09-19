package com.applovin.impl.sdk;

import com.applovin.sdk.*;

public class AppLovinAdInternal extends AppLovinAd
{
    private final AppLovinAdInternal$AdTarget a;
    
    public AppLovinAdInternal(final String s, final AppLovinAdSize appLovinAdSize, final String s2, final String s3, final String s4, final AppLovinAdInternal$AdTarget a) {
        super(s, appLovinAdSize, s2, s3, s4);
        this.a = a;
    }
    
    public AppLovinAdInternal$AdTarget getTarget() {
        return this.a;
    }
}
