package com.applovin.impl.sdk;

import android.os.*;
import com.applovin.sdk.*;
import java.util.*;

class b implements AppLovinAdService
{
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;
    private final u c;
    private final Map d;
    
    b(final AppLovinSdkImpl a) {
        super();
        if (a == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.a = a;
        this.b = a.getLogger();
        this.c = new u(a);
        (this.d = new HashMap()).put(AppLovinAdSize.BANNER, new e(AppLovinAdSize.BANNER, null));
        this.d.put(AppLovinAdSize.MREC, new e(AppLovinAdSize.MREC, null));
        this.d.put(AppLovinAdSize.INTERSTITIAL, new e(AppLovinAdSize.INTERSTITIAL, null));
        this.d.put(AppLovinAdSize.LEADER, new e(AppLovinAdSize.LEADER, null));
    }
    
    private boolean a() {
        return ((PowerManager)this.a.getApplicationContext().getSystemService("power")).isScreenOn();
    }
    
    private boolean a(final AppLovinAdSize appLovinAdSize) {
        if (appLovinAdSize == AppLovinAdSize.BANNER) {
            return (boolean)this.a.a(v.D);
        }
        if (appLovinAdSize == AppLovinAdSize.MREC) {
            return (boolean)this.a.a(v.F);
        }
        return appLovinAdSize == AppLovinAdSize.LEADER && (boolean)this.a.a(v.H);
    }
    
    private long b(final AppLovinAdSize appLovinAdSize) {
        if (appLovinAdSize == AppLovinAdSize.BANNER) {
            return (long)this.a.a(v.E);
        }
        if (appLovinAdSize == AppLovinAdSize.MREC) {
            return (long)this.a.a(v.G);
        }
        if (appLovinAdSize == AppLovinAdSize.LEADER) {
            return (long)this.a.a(v.I);
        }
        return 0L;
    }
    
    private void c(final AppLovinAdSize obj) {
        final d d = new d(this, this.d.get(obj), null);
        final AppLovinAd c = this.c.c(obj);
        if (c != null) {
            this.b.d("AppLovinAdService", "Using pre-loaded ad: " + c + "for size " + obj);
            d.adReceived(c);
        }
        else {
            this.a.a().a(new ae(obj, d, this.a), am.a);
        }
        this.c.a(obj);
    }
    
    private void d(final AppLovinAdSize appLovinAdSize) {
        final long b = this.b(appLovinAdSize);
        if (b > 0L) {
            this.a.a().a(new f(this, appLovinAdSize), am.a, 1000L * (b + 2L));
        }
    }
    
    @Override
    public void addAdUpdateListener(final AppLovinAdUpdateListener appLovinAdUpdateListener) {
        this.addAdUpdateListener(appLovinAdUpdateListener, AppLovinAdSize.BANNER);
    }
    
    @Override
    public void addAdUpdateListener(final AppLovinAdUpdateListener obj, final AppLovinAdSize appLovinAdSize) {
        if (obj == null) {
            throw new IllegalArgumentException("No ad listener specified");
        }
        while (true) {
            final e e = this.d.get(appLovinAdSize);
            while (true) {
                synchronized (e.b) {
                    if (!e.f.contains(obj)) {
                        e.f.add(obj);
                        final int n = 1;
                        this.b.d("AppLovinAdService", "Added update listener: " + obj);
                        // monitorexit(e.b)
                        if (n != 0) {
                            this.a.a().a(new f(this, appLovinAdSize), am.a);
                        }
                        return;
                    }
                }
                final int n = 0;
                continue;
            }
        }
    }
    
    @Override
    public boolean hasPreloadedAd(final AppLovinAdSize appLovinAdSize) {
        return this.c.b(appLovinAdSize);
    }
    
    @Override
    public void loadNextAd(final AppLovinAdSize appLovinAdSize, final AppLovinAdLoadListener appLovinAdLoadListener) {
        if (appLovinAdSize == null) {
            throw new IllegalArgumentException("No ad size specified");
        }
        if (appLovinAdLoadListener == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        while (true) {
            final e e = this.d.get(appLovinAdSize);
            while (true) {
                synchronized (e.b) {
                    boolean b;
                    if (System.currentTimeMillis() > e.d) {
                        b = true;
                    }
                    else {
                        b = false;
                    }
                    if (e.c != null && !b) {
                        final AppLovinAd c = e.c;
                        // monitorexit(e.b)
                        if (c != null) {
                            appLovinAdLoadListener.adReceived(c);
                        }
                        return;
                    }
                    this.b.d("AppLovinAdService", "Loading next ad...");
                    e.g.add(appLovinAdLoadListener);
                    if (!e.e) {
                        e.e = true;
                        this.c(appLovinAdSize);
                    }
                }
                final AppLovinAd c = null;
                continue;
            }
        }
    }
    
    @Override
    public void loadNextAd(final String s, final AppLovinAdLoadListener appLovinAdLoadListener) {
        if (s == null) {
            throw new IllegalArgumentException("No ad ID specified");
        }
        if (appLovinAdLoadListener == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        this.a.a().a(new ad(s, appLovinAdLoadListener, this.a), am.a);
    }
    
    @Override
    public void preloadAd(final AppLovinAdSize appLovinAdSize) {
        this.c.a(appLovinAdSize);
    }
    
    @Override
    public void removeAdUpdateListener(final AppLovinAdUpdateListener obj, final AppLovinAdSize appLovinAdSize) {
        if (obj == null) {
            return;
        }
        final e e = this.d.get(appLovinAdSize);
        synchronized (e.b) {
            e.f.remove(obj);
            // monitorexit(e.b)
            this.b.d("AppLovinAdService", "Removed update listener: " + obj);
        }
    }
    
    @Override
    public void trackAdClick(final AppLovinAd appLovinAd) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        this.a.a().a(new au(appLovinAd, this.a), am.a, 500L);
        final e e = this.d.get(appLovinAd.getSize());
        synchronized (e.b) {
            e.c = null;
            e.d = 0L;
        }
    }
}
