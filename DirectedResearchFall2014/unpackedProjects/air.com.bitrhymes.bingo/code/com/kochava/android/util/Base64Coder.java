package com.kochava.android.util;

public class Base64Coder
{
    private static char[] map1;
    private static byte[] map2;
    
    static {
        Base64Coder.map1 = new char[64];
        char c = 'A';
        int n = 0;
        while (c <= 'Z') {
            final char[] map1 = Base64Coder.map1;
            final int n2 = n + 1;
            map1[n] = c;
            ++c;
            n = n2;
        }
        int n3;
        for (char c2 = 'a'; c2 <= 'z'; ++c2, n = n3) {
            final char[] map2 = Base64Coder.map1;
            n3 = n + 1;
            map2[n] = c2;
        }
        int n4;
        for (char c3 = '0'; c3 <= '9'; ++c3, n = n4) {
            final char[] map3 = Base64Coder.map1;
            n4 = n + 1;
            map3[n] = c3;
        }
        final char[] map4 = Base64Coder.map1;
        final int n5 = n + 1;
        map4[n] = '+';
        Base64Coder.map1[n5] = '/';
        Base64Coder.map2 = new byte[128];
        for (int i = 0; i < Base64Coder.map2.length; ++i) {
            Base64Coder.map2[i] = -1;
        }
        for (int j = 0; j < 64; ++j) {
            Base64Coder.map2[Base64Coder.map1[j]] = (byte)j;
        }
    }
    
    public static byte[] decode(final String s) {
        return decode(s.toCharArray());
    }
    
    public static byte[] decode(final char[] array) {
        final int length = array.length;
        if (length % 4 != 0) {
            throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
        }
        int n;
        for (n = length; n > 0 && array[n - 1] == '='; --n) {}
        final int n2 = n * 3 / 4;
        final byte[] array2 = new byte[n2];
        int i = 0;
        int n3 = 0;
        while (i < n) {
            final int n4 = i + 1;
            final char c = array[i];
            final int n5 = n4 + 1;
            final char c2 = array[n4];
            int n7;
            int n8;
            if (n5 < n) {
                final int n6 = n5 + 1;
                n7 = array[n5];
                n8 = n6;
            }
            else {
                n8 = n5;
                n7 = 65;
            }
            int n10;
            if (n8 < n) {
                final int n9 = n8 + 1;
                final char c3 = array[n8];
                n8 = n9;
                n10 = c3;
            }
            else {
                n10 = 65;
            }
            if (c > '\u007f' || c2 > '\u007f' || n7 > 127 || n10 > 127) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            final byte b = Base64Coder.map2[c];
            final byte b2 = Base64Coder.map2[c2];
            final byte b3 = Base64Coder.map2[n7];
            final byte b4 = Base64Coder.map2[n10];
            if (b < 0 || b2 < 0 || b3 < 0 || b4 < 0) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            final int n11 = b << 2 | b2 >>> 4;
            final int n12 = (b2 & 0xF) << 4 | b3 >>> 2;
            final int n13 = b4 | (b3 & 0x3) << 6;
            final int n14 = n3 + 1;
            array2[n3] = (byte)n11;
            int n16;
            if (n14 < n2) {
                final int n15 = n14 + 1;
                array2[n14] = (byte)n12;
                n16 = n15;
            }
            else {
                n16 = n14;
            }
            if (n16 < n2) {
                final int n17 = n16 + 1;
                array2[n16] = (byte)n13;
                n3 = n17;
                i = n8;
            }
            else {
                n3 = n16;
                i = n8;
            }
        }
        return array2;
    }
    
    public static String decodeString(final String s) {
        return new String(decode(s));
    }
    
    public static char[] encode(final byte[] array) {
        return encode(array, array.length);
    }
    
    public static char[] encode(final byte[] array, final int n) {
        final int n2 = (2 + n * 4) / 3;
        final char[] array2 = new char[4 * ((n + 2) / 3)];
        int i = 0;
        int n3 = 0;
        while (i < n) {
            final int n4 = i + 1;
            final int n5 = 0xFF & array[i];
            int n7;
            int n8;
            if (n4 < n) {
                final int n6 = n4 + 1;
                n7 = (0xFF & array[n4]);
                n8 = n6;
            }
            else {
                n8 = n4;
                n7 = 0;
            }
            int n11;
            if (n8 < n) {
                final int n9 = n8 + 1;
                final int n10 = 0xFF & array[n8];
                n8 = n9;
                n11 = n10;
            }
            else {
                n11 = 0;
            }
            final int n12 = n5 >>> 2;
            final int n13 = (n5 & 0x3) << 4 | n7 >>> 4;
            final int n14 = (n7 & 0xF) << 2 | n11 >>> 6;
            final int n15 = n11 & 0x3F;
            final int n16 = n3 + 1;
            array2[n3] = Base64Coder.map1[n12];
            final int n17 = n16 + 1;
            array2[n16] = Base64Coder.map1[n13];
            char c;
            if (n17 < n2) {
                c = Base64Coder.map1[n14];
            }
            else {
                c = '=';
            }
            array2[n17] = c;
            final int n18 = n17 + 1;
            char c2;
            if (n18 < n2) {
                c2 = Base64Coder.map1[n15];
            }
            else {
                c2 = '=';
            }
            array2[n18] = c2;
            n3 = n18 + 1;
            i = n8;
        }
        return array2;
    }
    
    public static String encodeString(final String s) {
        return s;
    }
}
