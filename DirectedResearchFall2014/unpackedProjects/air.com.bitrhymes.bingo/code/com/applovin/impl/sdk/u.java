package com.applovin.impl.sdk;

import java.util.*;
import com.applovin.sdk.*;

class u implements AppLovinAdLoadListener
{
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;
    private final String c;
    private final Map d;
    private final Object e;
    
    u(final AppLovinSdkImpl a) {
        super();
        this.c = "PreloadManager";
        this.a = a;
        this.b = a.getLogger();
        this.e = new Object();
        this.d = new HashMap();
    }
    
    public void a(final AppLovinAdSize obj) {
        if (this.a.a(v.K)) {
            this.b.d("PreloadManager", "Preloading ad for size " + obj + "...");
            final ae ae = new ae(obj, this, this.a);
            ae.a(true);
            this.a.a().a(ae, am.b, 500L);
        }
    }
    
    @Override
    public void adReceived(final AppLovinAd obj) {
        synchronized (this.e) {
            this.d.put(obj.getSize(), obj);
            // monitorexit(this.e)
            this.b.d("PreloadManager", "Pulled ad from network and saved to preload cache: " + obj);
        }
    }
    
    public boolean b(final AppLovinAdSize appLovinAdSize) {
        while (true) {
            synchronized (this.e) {
                if (this.d.get(appLovinAdSize) != null) {
                    return true;
                }
            }
            return false;
        }
    }
    
    public AppLovinAd c(final AppLovinAdSize appLovinAdSize) {
        synchronized (this.e) {
            return this.d.remove(appLovinAdSize);
        }
    }
    
    @Override
    public void failedToReceiveAd(final int i) {
        this.b.d("PreloadManager", "Failed to pre-load an ad, error code " + i);
    }
}
