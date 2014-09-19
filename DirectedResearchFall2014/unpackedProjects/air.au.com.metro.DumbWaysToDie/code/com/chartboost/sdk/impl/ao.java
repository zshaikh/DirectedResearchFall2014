package com.chartboost.sdk.impl;

import java.io.*;

public class ao extends ap
{
    private int a;
    private int b;
    private byte[] c;
    
    public ao() {
        super();
        this.c = new byte[512];
    }
    
    @Override
    public int a() {
        return this.a;
    }
    
    @Override
    public int a(final OutputStream outputStream) throws IOException {
        outputStream.write(this.c, 0, this.b);
        return this.b;
    }
    
    @Override
    public void a(final int a) {
        this.a = a;
    }
    
    @Override
    public int b() {
        return this.b;
    }
    
    void b(final int n) {
        final int n2 = n + this.a;
        if (n2 < this.c.length) {
            return;
        }
        final int n3 = 2 * this.c.length;
        int n4;
        if (n3 <= n2) {
            n4 = n2 + 128;
        }
        else {
            n4 = n3;
        }
        final byte[] c = new byte[n4];
        System.arraycopy(this.c, 0, c, 0, this.b);
        this.c = c;
    }
    
    @Override
    public void write(final int n) {
        this.b(1);
        this.c[this.a++] = (byte)(n & 0xFF);
        this.b = Math.max(this.a, this.b);
    }
    
    @Override
    public void write(final byte[] array) {
        this.write(array, 0, array.length);
    }
    
    @Override
    public void write(final byte[] array, final int n, final int n2) {
        this.b(n2);
        System.arraycopy(array, n, this.c, this.a, n2);
        this.a += n2;
        this.b = Math.max(this.a, this.b);
    }
}
