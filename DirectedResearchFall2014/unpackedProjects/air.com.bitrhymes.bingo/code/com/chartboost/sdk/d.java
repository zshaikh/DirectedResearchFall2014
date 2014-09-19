package com.chartboost.sdk;

import com.chartboost.sdk.impl.*;
import org.json.*;

final class d
{
    private static d a;
    private j b;
    
    static {
        d.a = null;
    }
    
    private d() {
        super();
        this.b = new j("https://www.chartboost.com", null);
    }
    
    private static d a() {
        if (d.a == null) {
            d.a = new d();
        }
        return d.a;
    }
    
    protected static void a(final Chartboost.CBAPIResponseCallback cbapiResponseCallback) {
        final k k = new k("api/more");
        k.a("format", (Object)"data");
        a().a(k, cbapiResponseCallback);
    }
    
    private void a(final k k, final Chartboost.CBAPIResponseCallback cbapiResponseCallback) {
        final Chartboost sharedChartboost = Chartboost.sharedChartboost();
        k.a(sharedChartboost.a.b());
        k.b(sharedChartboost.getAppID(), sharedChartboost.getAppSignature());
        this.b.a(k, (j.b)new j.b() {
            @Override
            public void a(final k k, final String s) {
                if (cbapiResponseCallback != null) {
                    cbapiResponseCallback.onFailure(s);
                }
            }
            
            @Override
            public void a(final JSONObject jsonObject, final k k) {
                if (cbapiResponseCallback != null) {
                    cbapiResponseCallback.onSuccess(jsonObject);
                }
            }
        });
    }
    
    protected static void a(final String s, final int n, final Chartboost.CBAPIResponseCallback cbapiResponseCallback) {
        final k k = new k("api/get_batch");
        k.a("raw", 1);
        k.a("cache", 1);
        if (s != null) {
            k.a("location", (Object)s);
        }
        int i;
        if (n > 10) {
            i = 10;
        }
        else {
            i = n;
        }
        k.a("amount", i);
        a().a(k, cbapiResponseCallback);
    }
    
    protected static void a(final String s, final Chartboost.CBAPIResponseCallback cbapiResponseCallback) {
        final k k = new k("api/get");
        k.a("raw", 1);
        k.a("cache", 1);
        if (s != null) {
            k.a("location", (Object)s);
        }
        a().a(k, cbapiResponseCallback);
    }
    
    protected static void b(final String s, final Chartboost.CBAPIResponseCallback cbapiResponseCallback) {
        final k k = new k("api/show");
        k.a("ad_id", (Object)s);
        a().a(k, cbapiResponseCallback);
    }
}
