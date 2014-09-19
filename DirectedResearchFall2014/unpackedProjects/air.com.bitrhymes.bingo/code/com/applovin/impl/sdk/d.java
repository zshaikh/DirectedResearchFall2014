package com.applovin.impl.sdk;

import java.util.*;
import com.applovin.sdk.*;
import android.os.*;

class d implements AppLovinAdLoadListener
{
    final /* synthetic */ b a;
    private final e b;
    
    private d(final b a, final e b) {
        this.a = a;
        super();
        this.b = b;
    }
    
    @Override
    public void adReceived(final AppLovinAd c) {
        HashSet<Object> set2;
        while (true) {
            while (true) {
                synchronized (this.b.b) {
                    if (this.a.a(this.b.a)) {
                        final long b = this.a.b(this.b.a);
                        if (b > 0L) {
                            this.b.d = System.currentTimeMillis() + b * 1000L;
                        }
                        else if (b == 0L) {
                            this.b.d = Long.MAX_VALUE;
                        }
                        this.b.c = c;
                        final HashSet<Object> set = new HashSet<Object>(this.b.g);
                        this.b.g.clear();
                        set2 = new HashSet<Object>(this.b.f);
                        this.b.e = false;
                        // monitorexit(this.b.b)
                        this.a.d(this.b.a);
                        for (final AppLovinAdLoadListener appLovinAdLoadListener : set) {
                            try {
                                appLovinAdLoadListener.adReceived(c);
                            }
                            catch (Throwable t) {
                                this.a.b.e("AppLovinAdService", "Unable to notify listener about a newly loaded ad", t);
                            }
                        }
                        break;
                    }
                }
                this.b.c = null;
                this.b.d = 0L;
                continue;
            }
        }
        for (final AppLovinAdUpdateListener appLovinAdUpdateListener : set2) {
            try {
                appLovinAdUpdateListener.adUpdated(c);
            }
            catch (Throwable t2) {
                this.a.b.e("AppLovinAdService", "Unable to notify listener about an updated loaded ad", t2);
            }
        }
    }
    
    @Override
    public void failedToReceiveAd(final int n) {
        synchronized (this.b.b) {
            final HashSet<Object> set = new HashSet<Object>(this.b.g);
            this.b.g.clear();
            this.b.e = false;
            // monitorexit(this.b.b)
            for (final AppLovinAdLoadListener appLovinAdLoadListener : set) {
                try {
                    appLovinAdLoadListener.failedToReceiveAd(n);
                }
                catch (Throwable t) {
                    this.a.b.e("AppLovinAdService", "Unable to notify listener about ad load failure", t);
                }
            }
        }
    }
}
