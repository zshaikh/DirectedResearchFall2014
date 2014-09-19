package com.google.ads;

import com.google.ads.util.*;
import android.app.*;
import android.content.*;
import com.google.ads.internal.*;
import android.view.*;

public class n extends i
{
    public final b<Ad> a;
    public final b<com.google.ads.internal.d> b;
    public final d<Activity> c;
    public final b<m> d;
    public final b<ActivationOverlay> e;
    public final b<Context> f;
    public final b<h> g;
    public final b<String> h;
    public final b<ViewGroup> i;
    public final b<AdView> j;
    public final b<InterstitialAd> k;
    public final c<l> l;
    public final c<l> m;
    public final c<AdSize[]> n;
    public final c<AdListener> o;
    public final c<AppEventListener> p;
    public final c<SwipeableAdListener> q;
    public final c<ak> r;
    public final c<al> s;
    public final c<Boolean> t;
    
    public n(final m m, final Ad ad, final AdView adView, final InterstitialAd interstitialAd, final String s, final Activity activity, final Context context, final ViewGroup viewGroup, final h h, final com.google.ads.internal.d d) {
        super();
        this.l = (c<l>)new c("currentAd", (Object)null);
        this.m = (c<l>)new c("nextAd", (Object)null);
        this.o = (c<AdListener>)new c(this, "adListener");
        this.p = (c<AppEventListener>)new c(this, "appEventListener");
        this.q = (c<SwipeableAdListener>)new c(this, "swipeableEventListener");
        this.r = (c<ak>)new c("spamSignals", (Object)null);
        this.s = (c<al>)new c("spamSignalsUtil", (Object)null);
        this.t = (c<Boolean>)new c("usesManualImpressions", false);
        this.d = (b<m>)new b("appState", m);
        this.a = (b<Ad>)new b("ad", ad);
        this.j = (b<AdView>)new b("adView", adView);
        this.g = (b<h>)new b("adType", h);
        this.h = (b<String>)new b("adUnitId", s);
        this.c = (d<Activity>)new d("activity", activity);
        this.k = (b<InterstitialAd>)new b("interstitialAd", interstitialAd);
        this.i = (b<ViewGroup>)new b("bannerContainer", viewGroup);
        this.f = (b<Context>)new b("applicationContext", context);
        this.n = (c<AdSize[]>)new c("adSizes", (Object)null);
        this.b = (b<com.google.ads.internal.d>)new b("adManager", d);
        ActivationOverlay activationOverlay;
        if (h != null && h.b()) {
            activationOverlay = new ActivationOverlay(this);
        }
        else {
            activationOverlay = null;
        }
        this.e = (b<ActivationOverlay>)new b("activationOverlay", activationOverlay);
    }
    
    public boolean a() {
        return !this.b();
    }
    
    public boolean b() {
        return this.g.a().a();
    }
}
