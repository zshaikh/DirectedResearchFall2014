package com.chartboost.sdk.impl;

import java.util.logging.*;
import java.nio.charset.*;
import java.util.*;

public class ai
{
    private static boolean a;
    private static boolean b;
    static final Logger f;
    static bf<List<ap>> g;
    static bf<List<ap>> h;
    protected static Charset i;
    static ThreadLocal<ak> j;
    static ThreadLocal<aj> k;
    
    static {
        f = Logger.getLogger("org.bson.BSON");
        ai.a = false;
        ai.b = false;
        ai.g = new bf<List<ap>>();
        ai.h = new bf<List<ap>>();
        ai.i = Charset.forName("UTF-8");
        ai.j = new ThreadLocal<ak>() {
            protected ak a() {
                return new an();
            }
        };
        ai.k = new ThreadLocal<aj>() {
            protected aj a() {
                return new am();
            }
        };
    }
    
    public static Object a(final Object o) {
        if (!a()) {
            return o;
        }
        if (ai.g.a() == 0 || o == null) {
            return o;
        }
        final List<ap> list = ai.g.a((Object)o.getClass());
        if (list != null) {
            final Iterator<ap> iterator = list.iterator();
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
        final a[] values = ai.a.values();
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
        return ai.a || ai.b;
    }
    
    private enum a
    {
        a("CANON_EQ", 0, 128, 'c', "Pattern.CANON_EQ"), 
        b("UNIX_LINES", 1, 1, 'd', "Pattern.UNIX_LINES"), 
        c("GLOBAL", 2, 256, 'g', (String)null), 
        d("CASE_INSENSITIVE", 3, 2, 'i', (String)null), 
        e("MULTILINE", 4, 8, 'm', (String)null), 
        f("DOTALL", 5, 32, 's', "Pattern.DOTALL"), 
        g("LITERAL", 6, 16, 't', "Pattern.LITERAL"), 
        h("UNICODE_CASE", 7, 64, 'u', "Pattern.UNICODE_CASE"), 
        i("COMMENTS", 8, 4, 'x', (String)null);
        
        private static final Map<Character, a> m;
        public final int j;
        public final char k;
        public final String l;
        
        static {
            int j = 0;
            n = new a[] { a.a, a.b, a.c, a.d, a.e, a.f, a.g, a.h, a.i };
            m = new HashMap<Character, a>();
            for (a[] values = values(); j < values.length; ++j) {
                final a a2 = values[j];
                a.m.put(a2.k, a2);
            }
        }
        
        private a(final String name, final int ordinal, final int j, final char k, final String l) {
            this.j = j;
            this.k = k;
            this.l = l;
        }
    }
}
