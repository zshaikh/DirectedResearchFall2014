package com.google.ads;

import com.google.ads.util.*;
import android.os.*;

public class m extends i
{
    private static final m d;
    public final c<String> a;
    public final b<a> b;
    public final b<Handler> c;
    
    static {
        d = new m();
    }
    
    private m() {
        super();
        this.a = (c<String>)new c("marketPackages", (Object)null);
        this.b = (b<a>)new b("constants", new a());
        this.c = (b<Handler>)new b("uiHandler", new Handler(Looper.getMainLooper()));
    }
    
    public static m a() {
        return m.d;
    }
    
    public static final class a extends i
    {
        public final c<String> a;
        public final c<Integer> b;
        public final c<Integer> c;
        public final c<Integer> d;
        public final c<String> e;
        public final c<String> f;
        public final c<String> g;
        public final c<String> h;
        public final c<Long> i;
        public final c<Long> j;
        public final c<Long> k;
        public final c<Long> l;
        public final c<Long> m;
        public final c<Long> n;
        public final c<Boolean> o;
        
        public a() {
            super();
            this.a = (c<String>)new c("ASDomains", (Object)null);
            this.b = (c<Integer>)new c("minHwAccelerationVersionBanner", 18);
            this.c = (c<Integer>)new c("minHwAccelerationVersionOverlay", 18);
            this.d = (c<Integer>)new c("minHwAccelerationVersionOverlay", 14);
            this.e = (c<String>)new c("mraidBannerPath", "http://media.admob.com/mraid/v1/mraid_app_banner.js");
            this.f = (c<String>)new c("mraidExpandedBannerPath", "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js");
            this.g = (c<String>)new c("mraidInterstitialPath", "http://media.admob.com/mraid/v1/mraid_app_interstitial.js");
            this.h = (c<String>)new c("badAdReportPath", "https://badad.googleplex.com/s/reportAd");
            this.i = (c<Long>)new c("appCacheMaxSize", 0L);
            this.j = (c<Long>)new c("appCacheMaxSizePaddingInBytes", 131072L);
            this.k = (c<Long>)new c("maxTotalAppCacheQuotaInBytes", 5242880L);
            this.l = (c<Long>)new c("maxTotalDatabaseQuotaInBytes", 5242880L);
            this.m = (c<Long>)new c("maxDatabaseQuotaPerOriginInBytes", 1048576L);
            this.n = (c<Long>)new c("databaseQuotaIncreaseStepInBytes", 131072L);
            this.o = (c<Boolean>)new c("isInitialized", false);
        }
    }
}
