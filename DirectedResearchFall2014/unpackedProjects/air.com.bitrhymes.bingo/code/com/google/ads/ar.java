package com.google.ads;

public class ar
{
    private final byte[] a;
    private int b;
    private int c;
    
    public ar(final byte[] array) {
        super();
        this.a = new byte[256];
        for (int i = 0; i < 256; ++i) {
            this.a[i] = (byte)i;
        }
        int n = 0;
        for (int j = 0; j < 256; ++j) {
            n = (0xFF & n + this.a[j] + array[j % array.length]);
            final byte b = this.a[j];
            this.a[j] = this.a[n];
            this.a[n] = b;
        }
        this.b = 0;
        this.c = 0;
    }
    
    public void a(final byte[] array) {
        final int b = this.b;
        int c = this.c;
        int b2 = b;
        for (int i = 0; i < array.length; ++i) {
            b2 = (0xFF & b2 + 1);
            c = (0xFF & c + this.a[b2]);
            final byte b3 = this.a[b2];
            this.a[b2] = this.a[c];
            this.a[c] = b3;
            array[i] ^= this.a[0xFF & this.a[b2] + this.a[c]];
        }
        this.b = b2;
        this.c = c;
    }
}
