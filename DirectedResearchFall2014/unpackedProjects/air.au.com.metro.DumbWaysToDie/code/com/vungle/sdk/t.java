package com.vungle.sdk;

import org.json.*;
import java.util.*;

abstract class t
{
    private static double a;
    private static double b;
    private static Timer c;
    private static boolean d;
    
    static {
        t.a = 0.0;
        t.b = 0.0;
        t.c = null;
        t.d = false;
    }
    
    private static String a(final boolean b, final String s) {
        final JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("start", t.a);
            if (b) {
                jsonObject.put("end", t.b);
            }
            jsonObject.put("isu", (Object)VungleUtil.b(n.e()));
            jsonObject.put("pubAppId", (Object)s);
            return jsonObject.toString();
        }
        catch (JSONException ex) {
            r.a(IVungleConstants.b, "JSONException", (Throwable)ex);
            return null;
        }
    }
    
    public static void a() {
        synchronized (t.class) {
            if (t.d) {
                if (t.c != null) {
                    t.c.cancel();
                    t.c = null;
                }
            }
            else if (t.c == null) {
                (t.c = new Timer()).schedule(new c((byte)0), 10000L);
                t.a = System.currentTimeMillis() / 1000.0;
            }
        }
    }
    
    private static void a(final String a, final String b) {
        final b target = new b((byte)0);
        target.a = a;
        target.b = b;
        new Thread(target, "VungleSessionThread").start();
    }
    
    public static void b() {
        synchronized (t.class) {
            if (t.d) {
                if (t.c == null) {
                    (t.c = new Timer()).schedule(new a((byte)0), 10000L);
                    t.b = System.currentTimeMillis() / 1000.0;
                }
            }
            else if (t.c != null) {
                t.c.cancel();
                t.c = null;
            }
        }
    }
    
    private static void e() {
        synchronized (t.class) {
            t.d = true;
            t.c = null;
            a(IVungleConstants.d(), a(false, ab.a().b()));
        }
    }
    
    private static void f() {
        synchronized (t.class) {
            t.d = false;
            t.c = null;
            a(IVungleConstants.e(), a(true, ab.a().b()));
        }
    }
    
    static final class a extends TimerTask
    {
        @Override
        public final void run() {
            f();
        }
    }
    
    static final class b implements Runnable
    {
        public String a;
        public String b;
        
        @Override
        public final void run() {
            new StringBuilder("POST-ing to: ").append(this.a).append(" with: ").append(this.b);
            q.a(this.a, this.b);
        }
    }
    
    static final class c extends TimerTask
    {
        @Override
        public final void run() {
            e();
        }
    }
}
