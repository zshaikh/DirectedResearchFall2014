package com.google.ads;

import java.math.*;
import java.util.*;
import java.security.*;

public class b
{
    private static b c;
    private final BigInteger a;
    private BigInteger b;
    
    static {
        b.c = null;
    }
    
    private b() {
        super();
        this.b = BigInteger.ONE;
        this.a = d();
    }
    
    public static b a() {
        synchronized (b.class) {
            if (b.c == null) {
                b.c = new b();
            }
            return b.c;
        }
    }
    
    private static byte[] a(final long val) {
        return BigInteger.valueOf(val).toByteArray();
    }
    
    private static BigInteger d() {
        try {
            final MessageDigest instance = MessageDigest.getInstance("MD5");
            final UUID randomUUID = UUID.randomUUID();
            instance.update(a(randomUUID.getLeastSignificantBits()));
            instance.update(a(randomUUID.getMostSignificantBits()));
            final byte[] val = new byte[9];
            val[0] = 0;
            System.arraycopy(instance.digest(), 0, val, 1, 8);
            return new BigInteger(val);
        }
        catch (NoSuchAlgorithmException ex) {
            throw new RuntimeException("Cannot find MD5 message digest algorithm.");
        }
    }
    
    public BigInteger b() {
        synchronized (this) {
            return this.a;
        }
    }
    
    public BigInteger c() {
        synchronized (this) {
            final BigInteger b = this.b;
            this.b = this.b.add(BigInteger.ONE);
            return b;
        }
    }
}
