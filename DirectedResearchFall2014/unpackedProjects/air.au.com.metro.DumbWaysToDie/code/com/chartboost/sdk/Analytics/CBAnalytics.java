package com.chartboost.sdk.Analytics;

import java.math.*;
import java.util.*;
import com.chartboost.sdk.*;
import com.chartboost.sdk.impl.*;
import org.json.*;

public class CBAnalytics
{
    public static final String TAG = "Chartboost Analytics";
    private static CBAnalytics a;
    private j b;
    
    static {
        CBAnalytics.a = null;
    }
    
    private CBAnalytics() {
        super();
        (this.b = new j(null, null, "CBAnalytics")).a();
    }
    
    private String a(final double val, final int newScale, final int roundingMode) {
        return new StringBuilder(String.valueOf(new BigDecimal(val).setScale(newScale, roundingMode).doubleValue())).toString();
    }
    
    public static CBAnalytics sharedAnalytics() {
        synchronized (CBAnalytics.class) {
            if (CBAnalytics.a == null) {
                CBAnalytics.a = new CBAnalytics();
            }
            return CBAnalytics.a;
        }
    }
    
    public Boolean recordPaymentTransaction(final String s, final String s2, final double n, final String s3, final int i, final Map<String, Object> map) {
        final Chartboost sharedChartboost = Chartboost.sharedChartboost();
        if (sharedChartboost.getContext() == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling recordPaymentTransaction().");
        }
        if (sharedChartboost.getAppID() == null || sharedChartboost.getAppSignature() == null) {
            return false;
        }
        final k k = new k("api", "purchase");
        k.a(sharedChartboost.getContext());
        k.a("product_id", s);
        k.a("title", s2);
        k.a("price", this.a(n, 2, 4));
        k.a("currency", s3);
        k.a("quantity", new StringBuilder(String.valueOf(i)).toString());
        k.a("timestamp", new StringBuilder(String.valueOf(System.currentTimeMillis() / 1000.0)).toString());
        if (map != null) {
            k.a("meta", new JSONObject((Map)map).toString());
        }
        k.c(sharedChartboost.getAppID(), sharedChartboost.getAppSignature());
        this.b.a(k);
        return true;
    }
    
    public Boolean trackEvent(final String s) {
        return this.trackEvent(s, 1.0, null);
    }
    
    public Boolean trackEvent(final String s, final double n) {
        return this.trackEvent(s, n, null);
    }
    
    public Boolean trackEvent(final String s, final double d, final Map<String, Object> map) {
        final Chartboost sharedChartboost = Chartboost.sharedChartboost();
        if (sharedChartboost.getContext() == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling trackEvent().");
        }
        if (sharedChartboost.getAppID() == null || sharedChartboost.getAppSignature() == null) {
            return false;
        }
        final k k = new k("api", "event");
        k.a(sharedChartboost.getContext());
        k.a("key", s);
        k.a("value", new StringBuilder(String.valueOf(d)).toString());
        k.a("timestamp", new StringBuilder(String.valueOf(System.currentTimeMillis() / 1000.0)).toString());
        if (map != null) {
            k.a("meta", new JSONObject((Map)map).toString());
        }
        k.c(sharedChartboost.getAppID(), sharedChartboost.getAppSignature());
        k.i = true;
        this.b.a(k);
        return true;
    }
}
