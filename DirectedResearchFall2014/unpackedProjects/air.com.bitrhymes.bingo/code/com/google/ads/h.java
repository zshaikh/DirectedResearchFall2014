package com.google.ads;

import com.google.ads.internal.*;
import android.view.*;
import java.util.*;
import android.text.*;
import android.app.*;
import android.os.*;
import com.google.ads.util.*;
import com.google.ads.mediation.*;

public class h
{
    final com.google.ads.internal.h a;
    private final f b;
    private boolean c;
    private boolean d;
    private g.a e;
    private final e f;
    private MediationAdapter<?, ?> g;
    private boolean h;
    private boolean i;
    private View j;
    private final String k;
    private final AdRequest l;
    private final HashMap<String, String> m;
    
    public h(final e f, final com.google.ads.internal.h a, final f b, final String k, final AdRequest l, final HashMap<String, String> m) {
        super();
        com.google.ads.util.a.b(TextUtils.isEmpty((CharSequence)k));
        this.f = f;
        this.a = a;
        this.b = b;
        this.k = k;
        this.l = l;
        this.m = m;
        this.c = false;
        this.d = false;
        this.e = null;
        this.g = null;
        this.h = false;
        this.i = false;
        this.j = null;
    }
    
    public f a() {
        return this.b;
    }
    
    public void a(final Activity activity) {
        synchronized (this) {
            com.google.ads.util.a.b(this.h, "startLoadAdTask has already been called.");
            this.h = true;
            com.google.ads.m.a().c.a().post((Runnable)new i(this, activity, this.k, this.l, this.m));
        }
    }
    
    void a(final View j) {
        synchronized (this) {
            this.j = j;
        }
    }
    
    void a(final MediationAdapter<?, ?> g) {
        synchronized (this) {
            this.g = g;
        }
    }
    
    void a(final boolean d, final g.a e) {
        synchronized (this) {
            this.d = d;
            this.c = true;
            this.e = e;
            this.notify();
        }
    }
    
    public void b() {
        synchronized (this) {
            com.google.ads.util.a.a(this.h, "destroy() called but startLoadAdTask has not been called.");
            com.google.ads.m.a().c.a().post((Runnable)new Runnable() {
                @Override
                public void run() {
                    if (!com.google.ads.h.this.l()) {
                        return;
                    }
                    com.google.ads.util.a.b(com.google.ads.h.this.g);
                    try {
                        com.google.ads.h.this.g.destroy();
                        com.google.ads.util.b.a("Called destroy() for adapter with class: " + com.google.ads.h.this.g.getClass().getName());
                    }
                    catch (Throwable t) {
                        com.google.ads.util.b.b("Error while destroying adapter (" + com.google.ads.h.this.h() + "):", t);
                    }
                }
            });
        }
    }
    
    public boolean c() {
        synchronized (this) {
            return this.c;
        }
    }
    
    public boolean d() {
        synchronized (this) {
            com.google.ads.util.a.a(this.c, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false.");
            return this.d;
        }
    }
    
    public g.a e() {
        synchronized (this) {
            Enum<g.a> enum1;
            if (this.e == null) {
                enum1 = com.google.ads.g.a.d;
            }
            else {
                enum1 = this.e;
            }
            return (g.a)enum1;
        }
    }
    
    public View f() {
        synchronized (this) {
            com.google.ads.util.a.a(this.c, "getAdView() called when isLoadAdTaskDone() is false.");
            return this.j;
        }
    }
    
    public void g() {
        synchronized (this) {
            com.google.ads.util.a.a(this.a.a());
            try {
                com.google.ads.m.a().c.a().post((Runnable)new Runnable() {
                    final /* synthetic */ MediationInterstitialAdapter a = (MediationInterstitialAdapter)com.google.ads.h.this.g;
                    
                    @Override
                    public void run() {
                        try {
                            this.a.showInterstitial();
                        }
                        catch (Throwable t) {
                            com.google.ads.util.b.b("Error while telling adapter (" + com.google.ads.h.this.h() + ") ad to show interstitial: ", t);
                        }
                    }
                });
            }
            catch (ClassCastException ex) {
                com.google.ads.util.b.b("In Ambassador.show(): ambassador.adapter does not implement the MediationInterstitialAdapter interface.", ex);
            }
        }
    }
    
    public String h() {
        synchronized (this) {
            String name;
            if (this.g != null) {
                name = this.g.getClass().getName();
            }
            else {
                name = "\"adapter was not created.\"";
            }
            return name;
        }
    }
    
    MediationAdapter<?, ?> i() {
        synchronized (this) {
            return this.g;
        }
    }
    
    e j() {
        return this.f;
    }
    
    void k() {
        synchronized (this) {
            this.i = true;
        }
    }
    
    boolean l() {
        synchronized (this) {
            return this.i;
        }
    }
}
