package com.vungle.sdk;

import android.content.*;

public final class n
{
    public static float A;
    public static int B;
    public static int C;
    public static boolean D;
    public static String E;
    public static boolean F;
    private static Context G;
    private static boolean H;
    private static int I;
    private static int J;
    private static int K;
    private static long L;
    private static long M;
    private static long N;
    public static String a;
    public static String b;
    public static String c;
    public static String d;
    public static String e;
    public static String f;
    public static String g;
    public static String h;
    public static boolean i;
    public static boolean j;
    public static Boolean k;
    public static Boolean l;
    public static boolean m;
    public static boolean n;
    public static boolean o;
    public static boolean p;
    public static boolean q;
    public static boolean r;
    public static boolean s;
    public static boolean t;
    public static boolean u;
    public static float v;
    public static float w;
    public static float x;
    public static float y;
    public static float z;
    
    static {
        com.vungle.sdk.n.a = "";
        com.vungle.sdk.n.b = "";
        com.vungle.sdk.n.c = "";
        com.vungle.sdk.n.d = "";
        com.vungle.sdk.n.e = "";
        com.vungle.sdk.n.f = "";
        com.vungle.sdk.n.g = "";
        com.vungle.sdk.n.h = "";
        com.vungle.sdk.n.i = false;
        com.vungle.sdk.n.j = false;
        com.vungle.sdk.n.k = false;
        com.vungle.sdk.n.l = false;
        com.vungle.sdk.n.H = false;
        com.vungle.sdk.n.m = false;
        com.vungle.sdk.n.n = false;
        com.vungle.sdk.n.o = false;
        com.vungle.sdk.n.p = true;
        com.vungle.sdk.n.q = true;
        com.vungle.sdk.n.r = false;
        com.vungle.sdk.n.s = true;
        com.vungle.sdk.n.t = false;
        com.vungle.sdk.n.u = false;
        com.vungle.sdk.n.v = 960.0f;
        com.vungle.sdk.n.w = 540.0f;
        com.vungle.sdk.n.x = 960.0f;
        com.vungle.sdk.n.y = 540.0f;
        com.vungle.sdk.n.z = 1.0f;
        com.vungle.sdk.n.A = 1.0f;
        com.vungle.sdk.n.I = 3;
        com.vungle.sdk.n.J = 5;
        com.vungle.sdk.n.B = 0;
        com.vungle.sdk.n.C = 0;
        com.vungle.sdk.n.K = -1;
        com.vungle.sdk.n.D = false;
        com.vungle.sdk.n.E = null;
        com.vungle.sdk.n.F = true;
        com.vungle.sdk.n.L = 15000L;
        com.vungle.sdk.n.M = 15000L;
        com.vungle.sdk.n.N = 30000L;
    }
    
    public static long a() {
        if (com.vungle.sdk.n.L < 15000L) {
            com.vungle.sdk.n.L = 300000L;
        }
        return com.vungle.sdk.n.L;
    }
    
    public static void a(final int i) {
        com.vungle.sdk.n.I = i;
    }
    
    public static void a(final long l) {
        if (l < 15000L) {
            com.vungle.sdk.n.L = 300000L;
        }
        com.vungle.sdk.n.L = l;
    }
    
    public static void a(final Context context) {
        com.vungle.sdk.n.G = context.getApplicationContext();
    }
    
    public static void a(final boolean h) {
        if (com.vungle.sdk.n.H && !h) {
            IVungleConstants.a(System.currentTimeMillis());
            IVungleConstants.j();
        }
        else if (!com.vungle.sdk.n.H && h) {
            IVungleConstants.i();
        }
        com.vungle.sdk.n.H = h;
    }
    
    public static long b() {
        return com.vungle.sdk.n.M;
    }
    
    public static void b(final long n) {
        n.N = n;
    }
    
    public static int c() {
        return com.vungle.sdk.n.I;
    }
    
    public static boolean d() {
        return com.vungle.sdk.n.H;
    }
    
    public static Context e() {
        return com.vungle.sdk.n.G;
    }
}
