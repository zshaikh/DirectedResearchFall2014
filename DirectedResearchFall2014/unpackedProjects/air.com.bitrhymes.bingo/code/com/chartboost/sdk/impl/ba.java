package com.chartboost.sdk.impl;

import java.io.*;
import java.util.concurrent.atomic.*;
import java.net.*;
import java.util.logging.*;
import java.util.*;
import java.nio.*;

public class ba implements Serializable, Comparable<ba>
{
    static final Logger a;
    private static AtomicInteger f;
    private static final int g;
    final int b;
    final int c;
    final int d;
    boolean e;
    
    static {
        a = Logger.getLogger("org.bson.ObjectId");
        ba.f = new AtomicInteger(new Random().nextInt());
        try {
        Label_0124_Outer:
            while (true) {
                while (true) {
                    while (true) {
                        try {
                            final StringBuilder sb = new StringBuilder();
                            final Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                            while (networkInterfaces.hasMoreElements()) {
                                sb.append(networkInterfaces.nextElement().toString());
                            }
                            final int i = sb.toString().hashCode() << 16;
                            ba.a.fine("machine piece post: " + Integer.toHexString(i));
                            final int nextInt = new Random().nextInt();
                            final ClassLoader classLoader = ba.class.getClassLoader();
                            if (classLoader != null) {
                                final int identityHashCode = System.identityHashCode(classLoader);
                                final StringBuilder sb2 = new StringBuilder();
                                sb2.append(Integer.toHexString(nextInt));
                                sb2.append(Integer.toHexString(identityHashCode));
                                final int j = 0xFFFF & sb2.toString().hashCode();
                                ba.a.fine("process piece: " + Integer.toHexString(j));
                                g = (i | j);
                                ba.a.fine("machine : " + Integer.toHexString(ba.g));
                                return;
                            }
                        }
                        catch (Throwable thrown) {
                            ba.a.log(Level.WARNING, thrown.getMessage(), thrown);
                            final int i = new Random().nextInt() << 16;
                            continue Label_0124_Outer;
                        }
                        break;
                    }
                    final int identityHashCode = 0;
                    continue;
                }
            }
        }
        catch (Exception cause) {
            throw new RuntimeException(cause);
        }
    }
    
    public ba() {
        super();
        this.b = (int)(System.currentTimeMillis() / 1000L);
        this.c = ba.g;
        this.d = ba.f.getAndIncrement();
        this.e = true;
    }
    
    public ba(final int b, final int c, final int d) {
        super();
        this.b = b;
        this.c = c;
        this.d = d;
        this.e = false;
    }
    
    public ba(final String s) {
        this(s, false);
    }
    
    public ba(final String str, final boolean b) {
        super();
        if (!a(str)) {
            throw new IllegalArgumentException("invalid ObjectId [" + str + "]");
        }
        String b2;
        if (b) {
            b2 = b(str);
        }
        else {
            b2 = str;
        }
        final byte[] array = new byte[12];
        for (int i = 0; i < array.length; ++i) {
            array[i] = (byte)Integer.parseInt(b2.substring(i * 2, 2 + i * 2), 16);
        }
        final ByteBuffer wrap = ByteBuffer.wrap(array);
        this.b = wrap.getInt();
        this.c = wrap.getInt();
        this.d = wrap.getInt();
        this.e = false;
    }
    
    public static ba a(final Object o) {
        if (o == null) {
            return null;
        }
        if (o instanceof ba) {
            return (ba)o;
        }
        if (o instanceof String) {
            final String string = o.toString();
            if (a(string)) {
                return new ba(string);
            }
        }
        return null;
    }
    
    static String a(final String s, final int n) {
        return s.substring(n * 2, 2 + n * 2);
    }
    
    public static boolean a(final String s) {
        if (s == null) {
            return false;
        }
        final int length = s.length();
        if (length != 24) {
            return false;
        }
        for (int i = 0; i < length; ++i) {
            final char char1 = s.charAt(i);
            if ((char1 < '0' || char1 > '9') && (char1 < 'a' || char1 > 'f') && (char1 < 'A' || char1 > 'F')) {
                return false;
            }
        }
        return true;
    }
    
    public static String b(final String str) {
        if (!a(str)) {
            throw new IllegalArgumentException("invalid object id: " + str);
        }
        final StringBuilder sb = new StringBuilder(24);
        for (int i = 7; i >= 0; --i) {
            sb.append(a(str, i));
        }
        for (int j = 11; j >= 8; --j) {
            sb.append(a(str, j));
        }
        return sb.toString();
    }
    
    int a(final int n, final int n2) {
        final long n3 = (0xFFFFFFFFL & n) - (0xFFFFFFFFL & n2);
        if (n3 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        if (n3 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int)n3;
    }
    
    public int a(final ba ba) {
        int n;
        if (ba == null) {
            n = -1;
        }
        else {
            n = this.a(this.b, ba.b);
            if (n == 0) {
                n = this.a(this.c, ba.c);
                if (n == 0) {
                    return this.a(this.d, ba.d);
                }
            }
        }
        return n;
    }
    
    public String a() {
        final byte[] b = this.b();
        final StringBuilder sb = new StringBuilder(24);
        for (int i = 0; i < b.length; ++i) {
            final String hexString = Integer.toHexString(0xFF & b[i]);
            if (hexString.length() == 1) {
                sb.append("0");
            }
            sb.append(hexString);
        }
        return sb.toString();
    }
    
    public byte[] b() {
        final byte[] array = new byte[12];
        final ByteBuffer wrap = ByteBuffer.wrap(array);
        wrap.putInt(this.b);
        wrap.putInt(this.c);
        wrap.putInt(this.d);
        return array;
    }
    
    public int c() {
        return this.b;
    }
    
    public int d() {
        return this.c;
    }
    
    public int e() {
        return this.d;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        final ba a = a(o);
        return a != null && (this.b == a.b && this.c == a.c && this.d == a.d);
    }
    
    @Override
    public int hashCode() {
        return this.b + 111 * this.c + 17 * this.d;
    }
    
    @Override
    public String toString() {
        return this.a();
    }
}
