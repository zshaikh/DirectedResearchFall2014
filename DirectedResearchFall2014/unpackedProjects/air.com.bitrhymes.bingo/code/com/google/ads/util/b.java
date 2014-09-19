package com.google.ads.util;

import android.util.*;

public final class b
{
    public static b a;
    private static int b;
    
    static {
        com.google.ads.util.b.a = null;
        com.google.ads.util.b.b = 5;
    }
    
    private static void a(final a a, final String s) {
        a(a, s, null);
    }
    
    private static void a(final a a, final String s, final Throwable t) {
        if (com.google.ads.util.b.a != null) {
            com.google.ads.util.b.a.a(a, s, t);
        }
    }
    
    public static void a(final String s) {
        if (a("Ads", 3)) {
            Log.d("Ads", s);
        }
        a(com.google.ads.util.b.a.b, s);
    }
    
    public static void a(final String s, final Throwable t) {
        if (a("Ads", 3)) {
            Log.d("Ads", s, t);
        }
        a(com.google.ads.util.b.a.b, s, t);
    }
    
    private static boolean a(final int n) {
        return n >= com.google.ads.util.b.b;
    }
    
    public static boolean a(final String s, final int n) {
        return a(n) || Log.isLoggable(s, n);
    }
    
    public static void b(final String s) {
        if (a("Ads", 6)) {
            Log.e("Ads", s);
        }
        a(com.google.ads.util.b.a.e, s);
    }
    
    public static void b(final String s, final Throwable t) {
        if (a("Ads", 6)) {
            Log.e("Ads", s);
            Log.i("Ads", "The following was caught and handled:", t);
        }
        a(com.google.ads.util.b.a.e, s, t);
    }
    
    public static void c(final String s) {
        if (a("Ads", 4)) {
            Log.i("Ads", s);
        }
        a(com.google.ads.util.b.a.c, s);
    }
    
    public static void c(final String s, final Throwable t) {
        if (a("Ads", 4)) {
            Log.i("Ads", s, t);
        }
        a(com.google.ads.util.b.a.c, s, t);
    }
    
    public static void d(final String s) {
        if (a("Ads", 2)) {
            Log.v("Ads", s);
        }
        a(com.google.ads.util.b.a.a, s);
    }
    
    public static void d(final String s, final Throwable t) {
        if (a("Ads", 5)) {
            Log.w("Ads", s);
            Log.i("Ads", "The following was caught and handled:", t);
        }
        a(com.google.ads.util.b.a.d, s, t);
    }
    
    public static void e(final String s) {
        if (a("Ads", 5)) {
            Log.w("Ads", s);
        }
        a(com.google.ads.util.b.a.d, s);
    }
    
    public enum a
    {
        a(2), 
        b(3), 
        c(4), 
        d(5), 
        e(6);
        
        public final int f;
        
        private a(final int f) {
            this.f = f;
        }
    }
    
    public interface b
    {
        void a(a p0, String p1, Throwable p2);
    }
}
