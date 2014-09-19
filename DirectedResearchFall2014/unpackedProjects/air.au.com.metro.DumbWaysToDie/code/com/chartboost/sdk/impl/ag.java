package com.chartboost.sdk.impl;

import java.util.logging.*;
import java.nio.charset.*;
import java.util.*;

public class ag
{
    private static boolean a;
    private static boolean b;
    static final Logger f;
    static bd<List<an>> g;
    static bd<List<an>> h;
    protected static Charset i;
    static ThreadLocal<ai> j;
    static ThreadLocal<ah> k;
    
    static {
        f = Logger.getLogger("org.bson.BSON");
        ag.a = false;
        ag.b = false;
        ag.g = new bd<List<an>>();
        ag.h = new bd<List<an>>();
        ag.i = Charset.forName("UTF-8");
        ag.j = new ThreadLocal<ai>() {
            protected ai a() {
                return new al();
            }
        };
        ag.k = new ThreadLocal<ah>() {
            protected ah a() {
                return new ak();
            }
        };
    }
    
    public static Object a(final Object o) {
        if (!a()) {
            return o;
        }
        if (ag.g.a() == 0 || o == null) {
            return o;
        }
        final List<an> list = ag.g.a((Object)o.getClass());
        if (list != null) {
            final Iterator<an> iterator = list.iterator();
            Object a = o;
            while (iterator.hasNext()) {
                a = iterator.next().a(a);
            }
            return a;
        }
        return o;
    }
    
    public static String a(final int n) {
        final StringBuilder sb = new StringBuilder();
        final a[] values = ag.a.values();
        final int length = values.length;
        int i = 0;
        int n2 = n;
        while (i < length) {
            final a a = values[i];
            if ((n2 & a.j) > 0) {
                sb.append(a.k);
                n2 -= a.j;
            }
            ++i;
        }
        if (n2 > 0) {
            throw new IllegalArgumentException("some flags could not be recognized.");
        }
        return sb.toString();
    }
    
    private static boolean a() {
        return ag.a || ag.b;
    }
    
    private enum a
    {
        a(128, 'c', "Pattern.CANON_EQ"), 
        b(1, 'd', "Pattern.UNIX_LINES"), 
        c(256, 'g', (String)null), 
        d(2, 'i', (String)null), 
        e(8, 'm', (String)null), 
        f(32, 's', "Pattern.DOTALL"), 
        g(16, 't', "Pattern.LITERAL"), 
        h(64, 'u', "Pattern.UNICODE_CASE"), 
        i(4, 'x', (String)null);
        
        private static final Map<Character, a> m;
        public final int j;
        public final char k;
        public final String l;
        
        static {
            int j = 0;
            m = new HashMap<Character, a>();
            for (a[] values = values(); j < values.length; ++j) {
                final a a2 = values[j];
                a.m.put(a2.k, a2);
            }
        }
        
        private a(final int j, final char k, final String l) {
            this.j = j;
            this.k = k;
            this.l = l;
        }
    }
}
