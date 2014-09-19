package com.google.ads.internal;

import com.google.ads.*;
import android.os.*;
import com.google.ads.util.*;
import java.util.*;
import java.io.*;

public class g
{
    private static long f;
    private static long g;
    private static long h;
    private static long i;
    private static long j;
    private final LinkedList<Long> a;
    private long b;
    private long c;
    private long d;
    private final LinkedList<Long> e;
    private boolean k;
    private boolean l;
    private String m;
    private long n;
    private final LinkedList<Long> o;
    private final LinkedList<com.google.ads.g.a> p;
    
    static {
        com.google.ads.internal.g.f = 0L;
        com.google.ads.internal.g.g = 0L;
        com.google.ads.internal.g.h = 0L;
        com.google.ads.internal.g.i = 0L;
        com.google.ads.internal.g.j = -1L;
    }
    
    public g() {
        super();
        this.k = false;
        this.l = false;
        this.a = new LinkedList<Long>();
        this.e = new LinkedList<Long>();
        this.o = new LinkedList<Long>();
        this.p = new LinkedList<com.google.ads.g.a>();
        this.a();
    }
    
    public static long E() {
        if (com.google.ads.internal.g.j == -1L) {
            com.google.ads.internal.g.j = SystemClock.elapsedRealtime();
            return 0L;
        }
        return SystemClock.elapsedRealtime() - com.google.ads.internal.g.j;
    }
    
    protected boolean A() {
        return this.l;
    }
    
    protected void B() {
        com.google.ads.util.b.d("Interstitial no fill.");
        this.l = true;
    }
    
    public void C() {
        com.google.ads.util.b.d("Landing page dismissed.");
        this.e.add(SystemClock.elapsedRealtime());
    }
    
    protected String D() {
        return this.m;
    }
    
    protected void a() {
        synchronized (this) {
            this.a.clear();
            this.b = 0L;
            this.c = 0L;
            this.d = 0L;
            this.e.clear();
            this.n = -1L;
            this.o.clear();
            this.p.clear();
            this.k = false;
            this.l = false;
        }
    }
    
    public void a(final com.google.ads.g.a e) {
        synchronized (this) {
            this.o.add(SystemClock.elapsedRealtime() - this.n);
            this.p.add(e);
        }
    }
    
    public void a(final String s) {
        com.google.ads.util.b.d("Prior impression ticket = " + s);
        this.m = s;
    }
    
    public void b() {
        synchronized (this) {
            this.o.clear();
            this.p.clear();
        }
    }
    
    public void c() {
        synchronized (this) {
            this.n = SystemClock.elapsedRealtime();
        }
    }
    
    public String d() {
        final StringBuilder sb;
        synchronized (this) {
            sb = new StringBuilder();
            for (final long longValue : this.o) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(longValue);
            }
        }
        // monitorexit(this)
        return sb.toString();
    }
    
    public String e() {
        final StringBuilder sb;
        synchronized (this) {
            sb = new StringBuilder();
            for (final com.google.ads.g.a a : this.p) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(a.ordinal());
            }
        }
        // monitorexit(this)
        return sb.toString();
    }
    
    protected void f() {
        com.google.ads.util.b.d("Ad clicked.");
        this.a.add(SystemClock.elapsedRealtime());
    }
    
    protected void g() {
        com.google.ads.util.b.d("Ad request loaded.");
        this.b = SystemClock.elapsedRealtime();
    }
    
    protected void h() {
        synchronized (this) {
            com.google.ads.util.b.d("Ad request before rendering.");
            this.c = SystemClock.elapsedRealtime();
        }
    }
    
    protected void i() {
        com.google.ads.util.b.d("Ad request started.");
        this.d = SystemClock.elapsedRealtime();
        ++com.google.ads.internal.g.f;
    }
    
    protected long j() {
        if (this.a.size() != this.e.size()) {
            return -1L;
        }
        return this.a.size();
    }
    
    protected String k() {
        if (this.a.isEmpty() || this.a.size() != this.e.size()) {
            return null;
        }
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.a.size(); ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(this.e.get(i) - this.a.get(i)));
        }
        return sb.toString();
    }
    
    protected String l() {
        if (this.a.isEmpty()) {
            return null;
        }
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.a.size(); ++i) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(this.a.get(i) - this.b));
        }
        return sb.toString();
    }
    
    protected long m() {
        return this.b - this.d;
    }
    
    protected long n() {
        synchronized (this) {
            return this.c - this.d;
        }
    }
    
    protected long o() {
        return com.google.ads.internal.g.f;
    }
    
    protected long p() {
        synchronized (this) {
            return com.google.ads.internal.g.g;
        }
    }
    
    protected void q() {
        synchronized (this) {
            com.google.ads.util.b.d("Ad request network error");
            ++com.google.ads.internal.g.g;
        }
    }
    
    protected void r() {
        synchronized (this) {
            com.google.ads.internal.g.g = 0L;
        }
    }
    
    protected long s() {
        synchronized (this) {
            return com.google.ads.internal.g.h;
        }
    }
    
    protected void t() {
        synchronized (this) {
            ++com.google.ads.internal.g.h;
        }
    }
    
    protected void u() {
        synchronized (this) {
            com.google.ads.internal.g.h = 0L;
        }
    }
    
    protected long v() {
        synchronized (this) {
            return com.google.ads.internal.g.i;
        }
    }
    
    protected void w() {
        synchronized (this) {
            ++com.google.ads.internal.g.i;
        }
    }
    
    protected void x() {
        synchronized (this) {
            com.google.ads.internal.g.i = 0L;
        }
    }
    
    protected boolean y() {
        return this.k;
    }
    
    protected void z() {
        com.google.ads.util.b.d("Interstitial network error.");
        this.k = true;
    }
}
