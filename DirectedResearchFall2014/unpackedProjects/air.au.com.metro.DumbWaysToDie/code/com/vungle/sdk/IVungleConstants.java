package com.vungle.sdk;

import javax.inject.*;
import android.content.*;

@Singleton
public class IVungleConstants
{
    public static String A;
    public static String B;
    public static String C;
    public static String D;
    public static String E;
    public static String F;
    public static String G;
    public static String H;
    public static String I;
    public static String J;
    public static String K;
    public static int L;
    private static int M;
    private static String[] N;
    private static String[] O;
    private static String[] P;
    private static String[] Q;
    private static String[] R;
    private static String[] S;
    private static String[] T;
    private static int U;
    private static long V;
    private static VunglePub.EventListener W;
    private static Object X;
    public static String a;
    public static String b;
    public static String c;
    public static String d;
    public static String e;
    public static String f;
    public static String g;
    public static String h;
    public static String i;
    public static String j;
    public static String k;
    public static String l;
    public static String m;
    public static String n;
    public static String o;
    public static String p;
    public static String q;
    public static String r;
    public static String s;
    public static String t;
    public static String u;
    public static String v;
    public static String w;
    public static String x;
    public static String y;
    public static String z;
    
    static {
        IVungleConstants.M = 0;
        IVungleConstants.N = new String[] { "http://api.vungle.com", "http://acceptance.vungle.com", "http://localhost:3000" };
        IVungleConstants.O = new String[] { "/api/v1/requestAd", "/api/v2/requestAd" };
        IVungleConstants.P = new String[] { "/api/v1/reportAd", "/api/v2/reportAd" };
        IVungleConstants.Q = new String[] { "/api/v1/new", "/api/v2/new" };
        IVungleConstants.R = new String[] { "/api/v1/sessionStart", "/api/v2/sessionStart" };
        IVungleConstants.S = new String[] { "/api/v1/sessionEnd", "/api/v2/sessionEnd" };
        IVungleConstants.T = new String[] { "/api/v1/unfilled", "/api/v2/unfilled" };
        IVungleConstants.a = "Vungle";
        IVungleConstants.b = "VungleException";
        IVungleConstants.c = "Stats";
        IVungleConstants.d = "VungleDownload";
        IVungleConstants.e = "Vungle_Media";
        IVungleConstants.f = "adPayload";
        IVungleConstants.g = "post_";
        IVungleConstants.h = "pre_";
        IVungleConstants.i = "";
        IVungleConstants.j = "OK";
        IVungleConstants.k = "DownloadStats";
        IVungleConstants.l = "id";
        IVungleConstants.m = "url";
        IVungleConstants.n = "app_id";
        IVungleConstants.o = "chk";
        IVungleConstants.p = "campaign";
        IVungleConstants.q = "postBundle";
        IVungleConstants.r = "preBundle";
        IVungleConstants.s = "expiry";
        IVungleConstants.t = "callToActionUrl";
        IVungleConstants.u = "callToActionDest";
        IVungleConstants.v = "showClose";
        IVungleConstants.w = "countdown";
        IVungleConstants.x = "md5";
        IVungleConstants.y = "sleep";
        IVungleConstants.z = "videoHeight";
        IVungleConstants.A = "videoWidth";
        IVungleConstants.B = "size";
        IVungleConstants.C = "asyncThreshold";
        IVungleConstants.D = "retryCount";
        IVungleConstants.E = "VUNGLE_PUB_APP_INFO";
        IVungleConstants.F = "IsVgAppInstalled";
        IVungleConstants.G = "VgLastViewedTime";
        IVungleConstants.H = "VgAdDelayDuration";
        IVungleConstants.I = "ACTIVITY_LAUNCH_MODE";
        IVungleConstants.J = "webPath";
        IVungleConstants.K = "delay";
        IVungleConstants.L = 0;
        IVungleConstants.U = 0;
        IVungleConstants.V = 0L;
        IVungleConstants.W = null;
        IVungleConstants.X = new Object();
    }
    
    public static String a() {
        return IVungleConstants.N[0] + IVungleConstants.O[0];
    }
    
    public static void a(final double d, final double d2) {
        new StringBuilder("End of ad. User viewed: ").append(d).append(" / ").append(d2).append(" seconds.");
        try {
            synchronized (IVungleConstants.X) {
                if (IVungleConstants.W != null) {
                    new Thread(new a(IVungleConstants.W) {
                        private double b;
                        private double c;
                        
                        public final a a(final double b, final double c) {
                            this.b = b;
                            this.c = c;
                            return this;
                        }
                        
                        @Override
                        public final void run() {
                            this.a.onVungleView(this.b, this.c);
                        }
                    }.a(d, d2), "AdViewCallbackThread").start();
                }
            }
        }
        catch (Throwable t) {
            t.printStackTrace();
        }
    }
    
    public static void a(final int n) {
        new StringBuilder("Set to ").append(n).append(" seconds.");
        IVungleConstants.U = n;
        final SharedPreferences$Editor edit = n.e().getSharedPreferences(IVungleConstants.E, 0).edit();
        edit.putInt(IVungleConstants.H, n);
        edit.commit();
    }
    
    public static void a(final long v) {
        IVungleConstants.V = v;
        final SharedPreferences$Editor edit = com.vungle.sdk.n.e().getSharedPreferences(IVungleConstants.E, 0).edit();
        edit.putLong(IVungleConstants.G, v);
        edit.commit();
    }
    
    public static void a(final VunglePub.EventListener w) {
        synchronized (IVungleConstants.X) {
            IVungleConstants.W = w;
        }
    }
    
    public static String b() {
        return IVungleConstants.N[0] + IVungleConstants.P[0];
    }
    
    public static String c() {
        return IVungleConstants.N[0] + IVungleConstants.Q[0];
    }
    
    public static String d() {
        return IVungleConstants.N[0] + IVungleConstants.R[0];
    }
    
    public static String e() {
        return IVungleConstants.N[0] + IVungleConstants.S[0];
    }
    
    public static String f() {
        return IVungleConstants.N[0] + IVungleConstants.T[0];
    }
    
    public static int g() {
        return IVungleConstants.U;
    }
    
    public static long h() {
        return IVungleConstants.V;
    }
    
    public static void i() {
        try {
            synchronized (IVungleConstants.X) {
                if (IVungleConstants.W != null) {
                    new Thread(new a(IVungleConstants.W) {
                        @Override
                        public final void run() {
                            this.a.onVungleAdStart();
                        }
                    }, "AdStartedCallbackThread").start();
                }
            }
        }
        catch (Throwable t) {
            t.printStackTrace();
        }
    }
    
    public static void j() {
        try {
            synchronized (IVungleConstants.X) {
                if (IVungleConstants.W != null) {
                    new Thread(new a(IVungleConstants.W) {
                        @Override
                        public final void run() {
                            this.a.onVungleAdEnd();
                        }
                    }, "AdEndCallbackThread").start();
                }
            }
        }
        catch (Throwable t) {
            t.printStackTrace();
        }
    }
    
    abstract static class a implements Runnable
    {
        protected VunglePub.EventListener a;
        
        public a(final VunglePub.EventListener a) {
            super();
            this.a = a;
        }
    }
}
