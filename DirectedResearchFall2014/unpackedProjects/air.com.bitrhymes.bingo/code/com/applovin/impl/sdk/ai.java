package com.applovin.impl.sdk;

import java.net.*;
import org.apache.http.client.utils.*;
import com.applovin.sdk.*;
import org.apache.http.*;
import java.util.*;
import org.json.*;
import java.io.*;

class ai implements AppLovinAdLoadListener
{
    final /* synthetic */ ag a;
    private final List b;
    
    ai(final ag a, final List b) {
        this.a = a;
        super();
        this.b = b;
    }
    
    @Override
    public void adReceived(final AppLovinAd appLovinAd) {
        final String a = b("format", this.b);
        String s;
        String s2;
        if (a != null && a.equals("json")) {
            final String a2 = d(appLovinAd);
            s = "application/json";
            s2 = a2;
        }
        else {
            final String b = c(appLovinAd);
            s = "text/html";
            s2 = b;
        }
        this.a.a(new aj(200, s2, s, this.a.e, this.a.a), am.a);
    }
    
    @Override
    public void failedToReceiveAd(final int n) {
        this.a.a(new aj(n, this.a.e, this.a.a), am.a);
    }
}
