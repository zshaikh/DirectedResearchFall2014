package com.google.ads;

public final class aq
{
    private static final char[] a;
    private static final char[] b;
    private static final byte[] c;
    private static final byte[] d;
    
    static {
        a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".toCharArray();
        c = new byte[] { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };
        d = new byte[] { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };
    }
    
    private static int a(final char[] array, final int n, final byte[] array2, final int n2, final byte[] array3) {
        if (array[n + 2] == '=') {
            array2[n2] = (byte)((array3[array[n]] << 24 >>> 6 | array3[array[n + 1]] << 24 >>> 12) >>> 16);
            return 1;
        }
        if (array[n + 3] == '=') {
            final int n3 = array3[array[n]] << 24 >>> 6 | array3[array[n + 1]] << 24 >>> 12 | array3[array[n + 2]] << 24 >>> 18;
            array2[n2] = (byte)(n3 >>> 16);
            array2[n2 + 1] = (byte)(n3 >>> 8);
            return 2;
        }
        final int n4 = array3[array[n]] << 24 >>> 6 | array3[array[n + 1]] << 24 >>> 12 | array3[array[n + 2]] << 24 >>> 18 | array3[array[n + 3]] << 24 >>> 24;
        array2[n2] = (byte)(n4 >> 16);
        array2[n2 + 1] = (byte)(n4 >> 8);
        array2[n2 + 2] = (byte)n4;
        return 3;
    }
    
    public static String a(final byte[] array, final int n, final int n2, final char[] array2, final boolean b) {
        char[] a;
        int length;
        for (a = a(array, n, n2, array2, Integer.MAX_VALUE), length = a.length; !b && length > 0 && a[length - 1] == '='; --length) {}
        return new String(a, 0, length);
    }
    
    public static String a(final byte[] array, final boolean b) {
        return a(array, 0, array.length, aq.b, b);
    }
    
    public static byte[] a(final String s) throws ap {
        final char[] charArray = s.toCharArray();
        return a(charArray, 0, charArray.length);
    }
    
    public static byte[] a(final char[] array, final int n, final int n2) throws ap {
        return a(array, n, n2, aq.c);
    }
    
    public static byte[] a(final char[] array, final int n, final int n2, final byte[] array2) throws ap {
        final byte[] array3 = new byte[2 + n2 * 3 / 4];
        final char[] array4 = new char[4];
        int n3 = 0;
        int i = 0;
        int n4 = 0;
        int n5 = 0;
        while (i < n2) {
            final char c = array[i + n];
            final char c2 = (char)(c & '\u007f');
            final byte b = array2[c2];
            if (c2 == c && b < -5) {
                throw new ap("Bad Base64 input character at " + i + ": " + (int)array[n + i] + "(decimal)");
            }
            if (b >= -1) {
                if (c2 == '=') {
                    if (n5 == 0) {
                        if (i < 2) {
                            throw new ap("Invalid padding char found in position " + i);
                        }
                        n5 = 1;
                        final char c3 = (char)('\u007f' & array[n + (n2 - 1)]);
                        if (c3 != '=' && c3 != '\n') {
                            throw new ap("encoded value has invalid trailing char");
                        }
                    }
                }
                else {
                    if (n5 != 0) {
                        throw new ap("Data found after trailing padding char at index " + i);
                    }
                    final int n6 = n3 + 1;
                    array4[n3] = c2;
                    if (n6 == 4) {
                        n4 += a(array4, 0, array3, n4, array2);
                        n3 = 0;
                    }
                    else {
                        n3 = n6;
                    }
                }
            }
            ++i;
        }
        int n7;
        if (n3 != 0) {
            if (n3 == 1) {
                throw new ap("single trailing character at offset " + (n2 - 1));
            }
            array4[n3] = '=';
            n7 = n4 + a(array4, 0, array3, n4, array2);
        }
        else {
            n7 = n4;
        }
        final byte[] array5 = new byte[n7];
        System.arraycopy(array3, 0, array5, 0, n7);
        return array5;
    }
    
    public static char[] a(final byte[] array, final int n, final int n2, final char[] array2, final int n3) {
        final int n4 = 4 * ((n2 + 2) / 3);
        final char[] array3 = new char[n4 + n4 / n3];
        final int n5 = n2 - 2;
        int n6 = 0;
        int n7;
        int i;
        int n9;
        for (n7 = 0, i = 0; i < n5; i += 3, n7 += 4, n6 = n9) {
            final int n8 = array[i + n] << 24 >>> 8 | array[n + (i + 1)] << 24 >>> 16 | array[n + (i + 2)] << 24 >>> 24;
            array3[n7] = array2[n8 >>> 18];
            array3[n7 + 1] = array2[0x3F & n8 >>> 12];
            array3[n7 + 2] = array2[0x3F & n8 >>> 6];
            array3[n7 + 3] = array2[n8 & 0x3F];
            n9 = n6 + 4;
            if (n9 == n3) {
                array3[n7 + 4] = '\n';
                ++n7;
                n9 = 0;
            }
        }
        if (i < n2) {
            a(array, i + n, n2 - i, array3, n7, array2);
            if (n6 + 4 == n3) {
                array3[n7 + 4] = '\n';
            }
        }
        return array3;
    }
    
    private static char[] a(final byte[] array, final int n, final int n2, final char[] array2, final int n3, final char[] array3) {
        int n4;
        if (n2 > 0) {
            n4 = array[n] << 24 >>> 8;
        }
        else {
            n4 = 0;
        }
        int n5;
        if (n2 > 1) {
            n5 = array[n + 1] << 24 >>> 16;
        }
        else {
            n5 = 0;
        }
        final int n6 = n4 | n5;
        int n7;
        if (n2 > 2) {
            n7 = array[n + 2] << 24 >>> 24;
        }
        else {
            n7 = 0;
        }
        final int n8 = n6 | n7;
        switch (n2) {
            default: {
                return array2;
            }
            case 3: {
                array2[n3] = array3[n8 >>> 18];
                array2[n3 + 1] = array3[0x3F & n8 >>> 12];
                array2[n3 + 2] = array3[0x3F & n8 >>> 6];
                array2[n3 + 3] = array3[n8 & 0x3F];
                return array2;
            }
            case 2: {
                array2[n3] = array3[n8 >>> 18];
                array2[n3 + 1] = array3[0x3F & n8 >>> 12];
                array2[n3 + 2] = array3[0x3F & n8 >>> 6];
                array2[n3 + 3] = '=';
                return array2;
            }
            case 1: {
                array2[n3] = array3[n8 >>> 18];
                array2[n3 + 1] = array3[0x3F & n8 >>> 12];
                array2[n3 + 3] = (array2[n3 + 2] = '=');
                return array2;
            }
        }
    }
}
