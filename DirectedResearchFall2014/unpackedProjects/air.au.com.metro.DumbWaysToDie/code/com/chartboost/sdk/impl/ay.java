package com.chartboost.sdk.impl;

import java.io.*;
import java.util.concurrent.atomic.*;
import java.net.*;
import java.util.logging.*;
import java.lang.management.*;
import java.util.*;
import java.nio.*;

public class ay implements Serializable, Comparable<ay>
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
        ay.f = new AtomicInteger(new Random().nextInt());
        Label_0292: {
            int n;
            try {
                final StringBuilder sb = new StringBuilder();
                final Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    sb.append(networkInterfaces.nextElement().toString());
                }
                break Label_0292;
            }
            catch (Throwable thrown) {
                ay.a.log(Level.WARNING, thrown.getMessage(), thrown);
                n = new Random().nextInt() << 16;
            }
            catch (Exception cause) {
                throw new RuntimeException(cause);
            }
            while (true) {
                try {
                    final int hashCode = ManagementFactory.getRuntimeMXBean().getName().hashCode();
                    final ClassLoader classLoader = ay.class.getClassLoader();
                    int identityHashCode;
                    if (classLoader != null) {
                        identityHashCode = System.identityHashCode(classLoader);
                    }
                    else {
                        identityHashCode = 0;
                    }
                    final StringBuilder sb2 = new StringBuilder();
                    sb2.append(Integer.toHexString(hashCode));
                    sb2.append(Integer.toHexString(identityHashCode));
                    final int i = 0xFFFF & sb2.toString().hashCode();
                    ay.a.fine("process piece: " + Integer.toHexString(i));
                    g = (n | i);
                    ay.a.fine("machine : " + Integer.toHexString(ay.g));
                    return;
                    final StringBuilder sb;
                    n = sb.toString().hashCode() << 16;
                    goto Label_0101;
                }
                catch (Throwable t) {
                    continue;
                }
                break;
            }
        }
    }
    
    public ay() {
        super();
        this.b = (int)(System.currentTimeMillis() / 1000L);
        this.c = ay.g;
        this.d = ay.f.getAndIncrement();
        this.e = true;
    }
    
    public ay(final int b, final int c, final int d) {
        super();
        this.b = b;
        this.c = c;
        this.d = d;
        this.e = false;
    }
    
    public ay(final String s) {
        this(s, false);
    }
    
    public ay(final String str, final boolean b) {
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
    
    public static ay a(final Object o) {
        if (o == null) {
            return null;
        }
        if (o instanceof ay) {
            return (ay)o;
        }
        if (o instanceof String) {
            final String string = o.toString();
            if (a(string)) {
                return new ay(string);
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
    
    public int a(final ay ay) {
        int n;
        if (ay == null) {
            n = -1;
        }
        else {
            n = this.a(this.b, ay.b);
            if (n == 0) {
                n = this.a(this.c, ay.c);
                if (n == 0) {
                    return this.a(this.d, ay.d);
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
        final ay a = a(o);
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
