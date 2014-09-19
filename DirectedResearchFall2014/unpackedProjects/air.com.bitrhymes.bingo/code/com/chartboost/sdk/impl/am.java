package com.chartboost.sdk.impl;

public class am implements aj
{
    static final String[] a;
    private byte[] b;
    private byte[] c;
    private as d;
    
    static {
        a = new String[128];
        a((byte)48, (byte)57);
        a((byte)97, (byte)122);
        a((byte)65, (byte)90);
    }
    
    public am() {
        super();
        this.b = new byte[1024];
        this.c = new byte[1024];
        this.d = new as();
    }
    
    static void a(final byte b, final byte b2) {
        for (byte b3 = b; b3 < b2; ++b3) {
            am.a[b3] = String.valueOf("") + (char)b3;
        }
    }
}
