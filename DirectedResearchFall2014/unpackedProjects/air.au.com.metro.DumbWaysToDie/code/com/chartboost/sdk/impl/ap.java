package com.chartboost.sdk.impl;

import java.io.*;

public abstract class ap extends OutputStream
{
    public abstract int a();
    
    public abstract int a(final OutputStream p0) throws IOException;
    
    public void a(final double n) {
        this.a(Double.doubleToRawLongBits(n));
    }
    
    public abstract void a(final int p0);
    
    public void a(final int n, final int n2) {
        final int a = this.a();
        this.a(n);
        this.c(n2);
        this.a(a);
    }
    
    public void a(final long n) {
        this.write((byte)(0xFFL & n >> 0));
        this.write((byte)(0xFFL & n >> 8));
        this.write((byte)(0xFFL & n >> 16));
        this.write((byte)(0xFFL & n >> 24));
        this.write((byte)(0xFFL & n >> 32));
        this.write((byte)(0xFFL & n >> 40));
        this.write((byte)(0xFFL & n >> 48));
        this.write((byte)(0xFFL & n >> 56));
    }
    
    public abstract int b();
    
    public void c(final int n) {
        this.write(n >> 0);
        this.write(n >> 8);
        this.write(n >> 16);
        this.write(n >> 24);
    }
    
    public byte[] c() {
        try {
            final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(this.b());
            this.a(byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        }
        catch (IOException cause) {
            throw new RuntimeException("should be impossible", cause);
        }
    }
    
    public void d(final int n) {
        this.write(n >> 24);
        this.write(n >> 16);
        this.write(n >> 8);
        this.write(n);
    }
    
    @Override
    public String toString() {
        return this.getClass().getName() + " size: " + this.b() + " pos: " + this.a();
    }
    
    @Override
    public abstract void write(final int p0);
    
    @Override
    public abstract void write(final byte[] p0);
}
