package com.google.ads;

import java.nio.*;
import javax.crypto.*;
import java.security.*;

public class an
{
    static void a(final byte[] array) {
        for (int i = 0; i < array.length; ++i) {
            array[i] ^= 0x44;
        }
    }
    
    public static byte[] a(final String s) throws ap, a {
        final byte[] a = aq.a(s);
        if (a.length != 32) {
            throw new a();
        }
        final ByteBuffer wrap = ByteBuffer.wrap(a, 4, 16);
        final byte[] dst = new byte[16];
        wrap.get(dst);
        a(dst);
        return dst;
    }
    
    public static byte[] a(final byte[] array, final String s) throws a, ap {
        if (array.length != 16) {
            throw new a();
        }
        try {
            if (aq.a(s).length <= 16) {
                throw new a();
            }
            goto Label_0049;
        }
        catch (NoSuchAlgorithmException ex) {
            throw new a(ex);
        }
        catch (InvalidKeyException ex2) {
            throw new a(ex2);
        }
        catch (IllegalBlockSizeException ex3) {
            throw new a(ex3);
        }
        catch (NoSuchPaddingException ex4) {
            throw new a(ex4);
        }
        catch (BadPaddingException ex5) {
            throw new a(ex5);
        }
        catch (InvalidAlgorithmParameterException ex6) {
            throw new a(ex6);
        }
    }
    
    public static class a extends Exception
    {
        public a() {
            super();
        }
        
        public a(final Throwable cause) {
            super(cause);
        }
    }
}
