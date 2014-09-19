package com.chartboost.sdk.impl;

import java.util.*;
import java.io.*;

public class as extends ar
{
    private static bj<byte[]> g;
    final byte[] a;
    final char[] b;
    final List<byte[]> c;
    final at d;
    private final a e;
    private final a f;
    
    static {
        as.g = new bj<byte[]>() {
            protected byte[] a() {
                return new byte[16384];
            }
        };
    }
    
    public as() {
        super();
        this.a = new byte[16384];
        this.b = new char[16384];
        this.c = new ArrayList<byte[]>();
        this.d = new at();
        this.e = new a();
        this.f = new a();
        this.d();
    }
    
    @Override
    public int a() {
        return this.e.b();
    }
    
    @Override
    public int a(final OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new NullPointerException("out is null");
        }
        int i = -1;
        int n = 0;
        while (i < this.c.size()) {
            final byte[] b = this.b(i);
            final int c = this.f.c(i);
            outputStream.write(b, 0, c);
            n += c;
            ++i;
        }
        return n;
    }
    
    @Override
    public void a(final int n) {
        this.e.a(n);
    }
    
    @Override
    public int b() {
        return this.f.b();
    }
    
    byte[] b(final int n) {
        if (n < 0) {
            return this.a;
        }
        return this.c.get(n);
    }
    
    public void d() {
        this.e.a();
        this.f.a();
        for (int i = 0; i < this.c.size(); ++i) {
            as.g.b(this.c.get(i));
        }
        this.c.clear();
    }
    
    void e() {
        if (this.e.b() < this.f.b()) {
            if (this.e.b == 16384) {
                this.e.d();
            }
        }
        else {
            this.f.a(this.e);
            if (this.f.b >= 16384) {
                this.c.add(as.g.c());
                this.f.d();
                this.e.a(this.f);
            }
        }
    }
    
    byte[] f() {
        return this.b(this.e.a);
    }
    
    @Override
    public void write(final int n) {
        this.f()[this.e.c()] = (byte)(n & 0xFF);
        this.e();
    }
    
    @Override
    public void write(final byte[] array) {
        this.write(array, 0, array.length);
    }
    
    @Override
    public void write(final byte[] array, int n, int i) {
        while (i > 0) {
            final byte[] f = this.f();
            final int min = Math.min(f.length - this.e.b, i);
            System.arraycopy(array, n, f, this.e.b, min);
            this.e.b(min);
            i -= min;
            n += min;
            this.e();
        }
    }
    
    static class a
    {
        int a;
        int b;
        
        a() {
            super();
            this.a();
        }
        
        void a() {
            this.a = -1;
            this.b = 0;
        }
        
        void a(final int n) {
            this.a = n / 16384 - 1;
            this.b = n % 16384;
        }
        
        void a(final a a) {
            this.a = a.a;
            this.b = a.b;
        }
        
        int b() {
            return 16384 * (1 + this.a) + this.b;
        }
        
        void b(final int n) {
            this.b += n;
            if (this.b > 16384) {
                throw new IllegalArgumentException("something is wrong");
            }
        }
        
        int c() {
            return this.b++;
        }
        
        int c(final int n) {
            if (n < this.a) {
                return 16384;
            }
            return this.b;
        }
        
        void d() {
            if (this.b != 16384) {
                throw new IllegalArgumentException("broken");
            }
            ++this.a;
            this.b = 0;
        }
        
        @Override
        public String toString() {
            return String.valueOf(this.a) + "," + this.b;
        }
    }
}
