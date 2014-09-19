package com.vungle.sdk;

import java.net.*;
import java.io.*;

public final class z
{
    public Integer a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public int l;
    public int m;
    public long n;
    public long o;
    public int p;
    public int q;
    public int r;
    public aa s;
    private long t;
    private int u;
    
    public z() {
        super();
        this.g = IVungleConstants.i;
        this.i = IVungleConstants.i;
        this.l = 3;
        this.n = 0L;
        this.o = 0L;
        this.p = 0;
        this.q = 0;
        this.t = -1L;
        this.u = -1;
        this.r = 0;
    }
    
    public final Long a() {
        if (this.a == null) {
            return null;
        }
        return 1000L * this.a;
    }
    
    public final void a(final int u) {
        if (u > 0) {
            this.u = u;
        }
        else {
            this.u = 3;
        }
        com.vungle.sdk.n.a(this.u);
    }
    
    public final void a(final long t) {
        if (t == 0L || t >= 30000L) {
            this.t = t;
        }
        else {
            this.t = 30000L;
        }
        com.vungle.sdk.n.b(this.t);
    }
    
    public final void a(final String c) {
        this.c = c;
        if (VungleUtil.b(this.c)) {
            return;
        }
        com.vungle.sdk.n.g = this.c.substring(1 + this.c.lastIndexOf(File.separator), this.c.length());
        try {
            final String d = IVungleConstants.d;
            new StringBuilder("before encoding: ").append(com.vungle.sdk.n.g);
            com.vungle.sdk.n.g = URLDecoder.decode(com.vungle.sdk.n.g, "UTF-8");
            final String d2 = IVungleConstants.d;
            new StringBuilder("After encoding: ").append(com.vungle.sdk.n.g);
        }
        catch (UnsupportedEncodingException ex) {
            com.vungle.sdk.r.a(IVungleConstants.b, "UnsupportedEncodingException", ex);
        }
    }
    
    public final void b(final String j) {
        this.j = j;
        if (!VungleUtil.b(this.j)) {
            com.vungle.sdk.n.d = this.j.substring(1 + this.j.lastIndexOf(File.separator), this.j.lastIndexOf("."));
        }
    }
    
    public final void c(final String i) {
        this.i = i;
        if (!VungleUtil.b(this.i)) {
            com.vungle.sdk.n.e = this.i.substring(1 + this.i.lastIndexOf(File.separator), this.i.lastIndexOf("."));
            return;
        }
        this.i = IVungleConstants.i;
        com.vungle.sdk.n.e = IVungleConstants.i;
    }
}
