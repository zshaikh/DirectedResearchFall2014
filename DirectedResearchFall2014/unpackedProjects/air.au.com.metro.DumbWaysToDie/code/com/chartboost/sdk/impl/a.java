package com.chartboost.sdk.impl;

import org.json.*;
import java.util.*;
import com.chartboost.sdk.*;
import android.net.*;
import android.content.*;
import android.view.*;

public class a
{
    public JSONObject a;
    public Date b;
    public b c;
    public c d;
    public String e;
    public com.chartboost.sdk.b f;
    public a g;
    public s h;
    public boolean i;
    public boolean j;
    public boolean k;
    
    public a(final JSONObject jsonObject, final c d, final a g, final b c, final String e) {
        super();
        JSONObject a;
        if (jsonObject == null) {
            a = new JSONObject();
        }
        else {
            a = jsonObject;
        }
        this.c = c;
        this.e = e;
        this.a = a;
        this.b = new Date();
        this.g = g;
        this.d = d;
        this.i = false;
        this.j = false;
        this.k = false;
        final boolean equals = a.optString("type", "").equals("native");
        if (equals && this.d == com.chartboost.sdk.impl.a.c.b) {
            this.f = new com.chartboost.sdk.impl.b(this);
        }
        else if (equals && this.d == com.chartboost.sdk.impl.a.c.c) {
            this.f = new h(this);
        }
        else {
            this.f = new v(this);
        }
        this.f.c = (com.chartboost.sdk.b.a)new com.chartboost.sdk.b.a() {
            @Override
            public void a() {
                if (com.chartboost.sdk.impl.a.this.g != null) {
                    com.chartboost.sdk.impl.a.this.g.a(com.chartboost.sdk.impl.a.this);
                }
            }
        };
        this.f.a = (com.chartboost.sdk.b.a)new com.chartboost.sdk.b.a() {
            @Override
            public void a() {
                if (com.chartboost.sdk.impl.a.this.g != null) {
                    com.chartboost.sdk.impl.a.this.g.b(com.chartboost.sdk.impl.a.this);
                }
            }
        };
        this.f.b = (com.chartboost.sdk.b.c)new com.chartboost.sdk.b.c() {
            @Override
            public void a(final String s, final JSONObject jsonObject) {
                Label_0101: {
                    if (s == null) {
                        break Label_0101;
                    }
                    String optString = s;
                Label_0082_Outer:
                    while (true) {
                        final String optString2 = com.chartboost.sdk.impl.a.this.a.optString("deep-link");
                        while (true) {
                            if (optString2 == null || optString2.equals("")) {
                                break Label_0082;
                            }
                            try {
                                if (Chartboost.sharedChartboost().getContext().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString2)), 65536).size() > 0) {
                                    optString = optString2;
                                }
                                com.chartboost.sdk.impl.a.this.g.a(com.chartboost.sdk.impl.a.this, optString, jsonObject);
                                return;
                                optString = com.chartboost.sdk.impl.a.this.a.optString("link");
                                continue Label_0082_Outer;
                            }
                            catch (Exception ex) {
                                continue;
                            }
                            break;
                        }
                        break;
                    }
                }
            }
        };
        this.f.d = (com.chartboost.sdk.b.a)new com.chartboost.sdk.b.a() {
            @Override
            public void a() {
                com.chartboost.sdk.impl.a.this.g.c(com.chartboost.sdk.impl.a.this);
            }
        };
        this.f.a(a);
    }
    
    public boolean a() {
        this.i = true;
        this.j = true;
        this.k = true;
        this.f.a();
        if (this.f.d() != null) {
            return true;
        }
        this.i = false;
        this.j = false;
        return this.k = false;
    }
    
    public void b() {
        while (true) {
            if (this.h == null) {
                break Label_0041;
            }
            this.h.a();
            try {
                if (this.f.d().getParent() != null) {
                    this.h.removeView((View)this.f.d());
                }
                if (this.f != null) {
                    this.f.c();
                }
                this.a = null;
                this.b = null;
                this.g = null;
                this.f = null;
                this.h = null;
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    public void c() {
        while (true) {
            if (this.h == null) {
                break Label_0041;
            }
            this.h.a();
            try {
                if (this.f.d().getParent() != null) {
                    this.h.removeView((View)this.f.d());
                }
                if (this.f != null) {
                    this.f.e();
                }
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    public interface a
    {
        void a(com.chartboost.sdk.impl.a p0);
        
        void a(com.chartboost.sdk.impl.a p0, String p1, JSONObject p2);
        
        void b(com.chartboost.sdk.impl.a p0);
        
        void c(com.chartboost.sdk.impl.a p0);
    }
    
    public enum b
    {
        a("CBImpressionStateOther", 0), 
        b("CBImpressionStateWaitingForDisplay", 1), 
        c("CBImpressionStateDisplayedByDefaultController", 2), 
        d("CBImpressionStateWaitingForDismissal", 3), 
        e("CBImpressionStateWaitingForCaching", 4), 
        f("CBImpressionStateCached", 5);
        
        static {
            g = new b[] { b.a, b.b, b.c, b.d, b.e, b.f };
        }
    }
    
    public enum c
    {
        a("CBImpressionTypeOther", 0), 
        b("CBImpressionTypeInterstitial", 1), 
        c("CBImpressionTypeMoreApps", 2);
        
        static {
            d = new c[] { c.a, c.b, c.c };
        }
    }
}
