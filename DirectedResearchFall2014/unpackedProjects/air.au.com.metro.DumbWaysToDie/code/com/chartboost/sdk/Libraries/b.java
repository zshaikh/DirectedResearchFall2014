package com.chartboost.sdk.Libraries;

import java.security.*;
import java.util.*;
import java.math.*;

public class b
{
    public static byte[] a(final byte[] input) {
        Label_0022: {
            if (input == null) {
                break Label_0022;
            }
            try {
                final MessageDigest instance = MessageDigest.getInstance("SHA-1");
                instance.update(input);
                return instance.digest();
                return null;
            }
            catch (NoSuchAlgorithmException ex) {
                return null;
            }
        }
    }
    
    public static String b(final byte[] magnitude) {
        if (magnitude == null) {
            return null;
        }
        return String.format(Locale.US, "%0" + (magnitude.length << 1) + "x", new BigInteger(1, magnitude));
    }
}
