package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import java.util.*;

public class ad extends ae
{
    private final String a;
    
    ad(final String a, final AppLovinAdLoadListener appLovinAdLoadListener, final AppLovinSdkImpl appLovinSdkImpl) {
        super(AppLovinAdSize.BANNER, appLovinAdLoadListener, appLovinSdkImpl);
        this.a = a;
    }
    
    @Override
    protected void a(final Map map) {
        map.put("inter_id", String.valueOf(this.a));
    }
}
