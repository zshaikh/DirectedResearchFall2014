package com.google.ads.util;

import android.os.*;

class d
{
    static final d d;
    static final d e;
    static final d f;
    public final String a;
    public final String b;
    public final String c;
    
    static {
        d = new d();
        e = new d("unknown", "generic", "generic");
        f = new d("unknown", "generic_x86", "Android");
    }
    
    d() {
        super();
        this.a = Build.BOARD;
        this.b = Build.DEVICE;
        this.c = Build.BRAND;
    }
    
    d(final String a, final String b, final String c) {
        super();
        this.a = a;
        this.b = b;
        this.c = c;
    }
    
    private static boolean a(final String s, final String anObject) {
        if (s != null) {
            return s.equals(anObject);
        }
        return s == anObject;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (!(o instanceof d)) {
            return false;
        }
        final d d = (d)o;
        return a(this.a, d.a) && a(this.b, d.b) && a(this.c, d.c);
    }
    
    @Override
    public int hashCode() {
        final String a = this.a;
        int n = 0;
        if (a != null) {
            n = 0 + this.a.hashCode();
        }
        if (this.b != null) {
            n += this.b.hashCode();
        }
        if (this.c != null) {
            n += this.c.hashCode();
        }
        return n;
    }
}
