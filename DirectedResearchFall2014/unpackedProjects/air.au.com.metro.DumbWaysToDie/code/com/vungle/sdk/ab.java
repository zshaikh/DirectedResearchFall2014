package com.vungle.sdk;

import com.vungle.sdk.model.*;
import java.util.*;
import ccom.vungle.sdk.model.*;
import android.util.*;

public final class ab
{
    private static RequestAd a;
    private static y b;
    private static String c;
    private static x d;
    private static ArrayList<String> e;
    private static DownloadStats f;
    
    static {
        ab.e = null;
        ab.f = null;
    }
    
    public static RequestAd a() {
        return ab.a;
    }
    
    public static void a(final RequestAd a) {
        ab.a = a;
    }
    
    public static void a(final x d) {
        ab.d = d;
    }
    
    public static void a(final y b) {
        ab.b = b;
    }
    
    public static void a(final String e) {
        if (ab.e == null) {
            ab.e = new ArrayList<String>(0);
        }
        ab.e.add(e);
    }
    
    public static void a(final Throwable t) {
        ab.c = Log.getStackTraceString(t);
    }
    
    public static void a(final ArrayList<String> e) {
        ab.e = e;
    }
    
    public static ArrayList<String> b() {
        return ab.e;
    }
    
    public static x c() {
        return ab.d;
    }
    
    public static y d() {
        return ab.b;
    }
    
    public static DownloadStats e() {
        return ab.f;
    }
    
    public static void f() {
        ab.f = null;
    }
    
    public static String g() {
        final String c = ab.c;
        ab.c = null;
        return c;
    }
}
