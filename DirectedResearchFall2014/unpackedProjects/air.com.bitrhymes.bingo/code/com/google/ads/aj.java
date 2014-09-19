package com.google.ads;

import android.view.*;
import android.util.*;
import android.content.*;
import java.io.*;
import java.nio.*;
import java.security.*;

public abstract class aj implements ai
{
    protected MotionEvent a;
    protected DisplayMetrics b;
    private au c;
    private ByteArrayOutputStream d;
    
    protected aj(final Context context) {
        super();
        this.c = null;
        this.d = null;
        this.a = null;
        this.b = null;
        try {
            this.b = context.getResources().getDisplayMetrics();
        }
        catch (UnsupportedOperationException ex) {
            this.b = new DisplayMetrics();
            this.b.density = 1.0f;
        }
    }
    
    private String a(final Context context, final String s, final boolean b) {
        try {
            this.a();
            if (b) {
                this.c(context);
            }
            else {
                this.b(context);
            }
            if (this.b().length == 0) {
                return Integer.toString(5);
            }
            goto Label_0046;
        }
        catch (NoSuchAlgorithmException ex) {
            return Integer.toString(7);
        }
        catch (UnsupportedEncodingException ex2) {
            return Integer.toString(7);
        }
        catch (IOException ex3) {
            return Integer.toString(3);
        }
    }
    
    private void a() {
        this.d = new ByteArrayOutputStream();
        this.c = au.a(this.d);
    }
    
    private byte[] b() throws IOException {
        this.c.a();
        return this.d.toByteArray();
    }
    
    @Override
    public String a(final Context context) {
        return this.a(context, null, false);
    }
    
    @Override
    public String a(final Context context, final String s) {
        return this.a(context, s, true);
    }
    
    String a(final byte[] array, final String s) throws NoSuchAlgorithmException, UnsupportedEncodingException, IOException {
        byte[] b;
        if (array.length > 239) {
            this.a();
            this.a(20, 1L);
            b = this.b();
        }
        else {
            b = array;
        }
        byte[] array3;
        if (b.length < 239) {
            final byte[] array2 = new byte[239 - b.length];
            new SecureRandom().nextBytes(array2);
            array3 = ByteBuffer.allocate(240).put((byte)b.length).put(b).put(array2).array();
        }
        else {
            array3 = ByteBuffer.allocate(240).put((byte)b.length).put(b).array();
        }
        final MessageDigest instance = MessageDigest.getInstance("MD5");
        instance.update(array3);
        final byte[] array4 = ByteBuffer.allocate(256).put(instance.digest()).put(array3).array();
        final byte[] array5 = new byte[256];
        new ag().a(array4, array5);
        if (s != null && s.length() > 0) {
            this.a(s, array5);
        }
        return aq.a(array5, false);
    }
    
    public void a(final int n, final int n2, final int n3) {
        if (this.a != null) {
            this.a.recycle();
        }
        this.a = MotionEvent.obtain(0L, (long)n3, 1, n * this.b.density, n2 * this.b.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
    }
    
    protected void a(final int n, final long n2) throws IOException {
        this.c.a(n, n2);
    }
    
    protected void a(final int n, final String s) throws IOException {
        this.c.a(n, s);
    }
    
    public void a(final MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (this.a != null) {
                this.a.recycle();
            }
            this.a = MotionEvent.obtain(motionEvent);
        }
    }
    
    void a(final String s, final byte[] array) throws UnsupportedEncodingException {
        String substring;
        if (s.length() > 32) {
            substring = s.substring(0, 32);
        }
        else {
            substring = s;
        }
        new ar(substring.getBytes("UTF-8")).a(array);
    }
    
    protected abstract void b(final Context p0);
    
    protected abstract void c(final Context p0);
}
