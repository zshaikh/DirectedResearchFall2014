package com.google.ads;

import java.io.*;

public final class au
{
    private final byte[] a;
    private final int b;
    private int c;
    private int d;
    private final OutputStream e;
    
    private au(final OutputStream e, final byte[] a) {
        super();
        this.d = 0;
        this.e = e;
        this.a = a;
        this.c = 0;
        this.b = a.length;
    }
    
    public static au a(final OutputStream outputStream) {
        return a(outputStream, 4096);
    }
    
    public static au a(final OutputStream outputStream, final int n) {
        return new au(outputStream, new byte[n]);
    }
    
    private void b() throws IOException {
        if (this.e == null) {
            throw new a();
        }
        this.e.write(this.a, 0, this.c);
        this.c = 0;
    }
    
    public void a() throws IOException {
        if (this.e != null) {
            this.b();
        }
    }
    
    public void a(final byte b) throws IOException {
        if (this.c == this.b) {
            this.b();
        }
        this.a[this.c++] = b;
        ++this.d;
    }
    
    public void a(final int n) throws IOException {
        this.a((byte)n);
    }
    
    public void a(final int n, final int n2) throws IOException {
        this.b(av.a(n, n2));
    }
    
    public void a(final int n, final long n2) throws IOException {
        this.a(n, 0);
        this.a(n2);
    }
    
    public void a(final int n, final String s) throws IOException {
        this.a(n, 2);
        this.a(s);
    }
    
    public void a(final long n) throws IOException {
        this.b(n);
    }
    
    public void a(final String s) throws IOException {
        final byte[] bytes = s.getBytes("UTF-8");
        this.b(bytes.length);
        this.a(bytes);
    }
    
    public void a(final byte[] array) throws IOException {
        this.a(array, 0, array.length);
    }
    
    public void a(final byte[] b, final int n, final int n2) throws IOException {
        if (this.b - this.c >= n2) {
            System.arraycopy(b, n, this.a, this.c, n2);
            this.c += n2;
            this.d += n2;
            return;
        }
        final int n3 = this.b - this.c;
        System.arraycopy(b, n, this.a, this.c, n3);
        final int off = n + n3;
        final int n4 = n2 - n3;
        this.c = this.b;
        this.d += n3;
        this.b();
        if (n4 <= this.b) {
            System.arraycopy(b, off, this.a, 0, n4);
            this.c = n4;
        }
        else {
            this.e.write(b, off, n4);
        }
        this.d += n4;
    }
    
    public void b(final int n) throws IOException {
        int n2;
        for (n2 = n; (n2 & 0xFFFFFF80) != 0x0; n2 >>>= 7) {
            this.a(0x80 | (n2 & 0x7F));
        }
        this.a(n2);
    }
    
    public void b(final long n) throws IOException {
        long n2;
        for (n2 = n; (0xFFFFFFFFFFFFFF80L & n2) != 0x0L; n2 >>>= 7) {
            this.a(0x80 | (0x7F & (int)n2));
        }
        this.a((int)n2);
    }
    
    public static class a extends IOException
    {
        a() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }
}
