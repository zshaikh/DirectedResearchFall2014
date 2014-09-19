package com.google.ads.util;

import android.util.*;
import android.text.*;

public class a
{
    private static boolean a;
    
    static {
        com.google.ads.util.a.a = Log.isLoggable("GoogleAdsAssertion", 3);
    }
    
    public static void a(final Object o) {
        c(o == null, "Assertion that an object is null failed.");
    }
    
    public static void a(final Object obj, final Object obj2) {
        c(obj == obj2, "Assertion that 'a' and 'b' refer to the same object failed.a: " + obj + ", b: " + obj2);
    }
    
    public static void a(final String str) {
        c(!TextUtils.isEmpty((CharSequence)str), "Expected a non empty string, got: " + str);
    }
    
    public static void a(final boolean b) {
        c(b, "Assertion failed.");
    }
    
    public static void a(final boolean b, final String s) {
        c(b, s);
    }
    
    public static void b(final Object o) {
        c(o != null, "Assertion that an object is not null failed.");
    }
    
    public static void b(final boolean b) {
        c(!b, "Assertion failed.");
    }
    
    public static void b(final boolean b, final String s) {
        c(!b, s);
    }
    
    private static void c(final boolean b, final String s) {
        if ((Log.isLoggable("GoogleAdsAssertion", 3) || com.google.ads.util.a.a) && !b) {
            final a a = new a(s);
            Log.d("GoogleAdsAssertion", s, (Throwable)a);
            throw a;
        }
    }
    
    public static class a extends Error
    {
        public a(final String message) {
            super(message);
        }
    }
}
