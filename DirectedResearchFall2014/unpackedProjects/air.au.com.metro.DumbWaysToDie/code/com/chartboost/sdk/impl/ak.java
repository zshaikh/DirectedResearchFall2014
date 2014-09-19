package com.chartboost.sdk.impl;

public class ak implements ah
{
    static final String[] a;
    private byte[] b;
    private byte[] c;
    private aq d;
    
    static {
        a = new String[128];
        a((byte)48, (byte)57);
        a((byte)97, (byte)122);
        a((byte)65, (byte)90);
    }
    
    public ak() {
        super();
        this.b = new byte[1024];
        this.c = new byte[1024];
        this.d = new aq();
    }
    
    static void a(final byte b, final byte b2) {
        for (byte b3 = b; b3 < b2; ++b3) {
            ak.a[b3] = "" + (char)b3;
        }
    }
}
