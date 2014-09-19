package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import java.net.*;
import org.apache.http.client.utils.*;
import org.apache.http.*;
import java.util.*;
import org.json.*;
import java.io.*;

class ah extends ae
{
    final /* synthetic */ List a;
    final /* synthetic */ ag b;
    
    ah(final ag b, final AppLovinAdSize appLovinAdSize, final AppLovinAdLoadListener appLovinAdLoadListener, final AppLovinSdkImpl appLovinSdkImpl, final List a) {
        this.b = b;
        this.a = a;
        super(appLovinAdSize, appLovinAdLoadListener, appLovinSdkImpl);
    }
    
    @Override
    protected void a(final Map map) {
        super.a(map);
        map.put("p", b("p", this.a));
        map.put("app_id", b("app_id", this.a));
        map.put("api_key", "");
    }
}
