package com.bitrhymes.iab.util;

public class Base64
{
    private static final byte[] ALPHABET;
    private static final byte[] DECODABET;
    public static final boolean DECODE = false;
    public static final boolean ENCODE = true;
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    private static final byte NEW_LINE = 10;
    private static final byte[] WEBSAFE_ALPHABET;
    private static final byte[] WEBSAFE_DECODABET;
    private static final byte WHITE_SPACE_ENC = -5;
    
    static {
        ALPHABET = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
        WEBSAFE_ALPHABET = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
        DECODABET = new byte[] { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };
        WEBSAFE_DECODABET = new byte[] { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };
    }
    
    public static byte[] decode(final String s) throws Base64DecoderException {
        final byte[] bytes = s.getBytes();
        return decode(bytes, 0, bytes.length);
    }
    
    public static byte[] decode(final byte[] array) throws Base64DecoderException {
        return decode(array, 0, array.length);
    }
    
    public static byte[] decode(final byte[] array, final int n, final int n2) throws Base64DecoderException {
        return decode(array, n, n2, Base64.DECODABET);
    }
    
    public static byte[] decode(final byte[] array, final int n, final int n2, final byte[] array2) throws Base64DecoderException {
        final byte[] array3 = new byte[2 + n2 * 3 / 4];
        final byte[] array4 = new byte[4];
        int n3 = 0;
        int i = 0;
        int n4 = 0;
        while (i < n2) {
            final byte b = (byte)(0x7F & array[i + n]);
            final byte b2 = array2[b];
            if (b2 < -5) {
                throw new Base64DecoderException("Bad Base64 input character at " + i + ": " + array[n + i] + "(decimal)");
            }
            int n6;
            if (b2 >= -1) {
                if (b == 61) {
                    final int n5 = n2 - i;
                    final byte b3 = (byte)(0x7F & array[n + (n2 - 1)]);
                    if (n4 == 0 || n4 == 1) {
                        throw new Base64DecoderException("invalid padding byte '=' at byte offset " + i);
                    }
                    if ((n4 == 3 && n5 > 2) || (n4 == 4 && n5 > 1)) {
                        throw new Base64DecoderException("padding byte '=' falsely signals end of encoded value at offset " + i);
                    }
                    if (b3 != 61 && b3 != 10) {
                        throw new Base64DecoderException("encoded value has invalid trailing byte");
                    }
                    break;
                }
                else {
                    n6 = n4 + 1;
                    array4[n4] = b;
                    if (n6 == 4) {
                        final int n7 = n3 + decode4to3(array4, 0, array3, n3, array2);
                        n6 = 0;
                        n3 = n7;
                    }
                }
            }
            else {
                n6 = n4;
            }
            ++i;
            n4 = n6;
        }
        int n8;
        if (n4 != 0) {
            if (n4 == 1) {
                throw new Base64DecoderException("single trailing character at offset " + (n2 - 1));
            }
            array4[n4] = 61;
            n8 = n3 + decode4to3(array4, 0, array3, n3, array2);
        }
        else {
            n8 = n3;
        }
        final byte[] array5 = new byte[n8];
        System.arraycopy(array3, 0, array5, 0, n8);
        return array5;
    }
    
    private static int decode4to3(final byte[] array, final int n, final byte[] array2, final int n2, final byte[] array3) {
        if (array[n + 2] == 61) {
            array2[n2] = (byte)((array3[array[n]] << 24 >>> 6 | array3[array[n + 1]] << 24 >>> 12) >>> 16);
            return 1;
        }
        if (array[n + 3] == 61) {
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
    
    public static byte[] decodeWebSafe(final String s) throws Base64DecoderException {
        final byte[] bytes = s.getBytes();
        return decodeWebSafe(bytes, 0, bytes.length);
    }
    
    public static byte[] decodeWebSafe(final byte[] array) throws Base64DecoderException {
        return decodeWebSafe(array, 0, array.length);
    }
    
    public static byte[] decodeWebSafe(final byte[] array, final int n, final int n2) throws Base64DecoderException {
        return decode(array, n, n2, Base64.WEBSAFE_DECODABET);
    }
    
    public static String encode(final byte[] array) {
        return encode(array, 0, array.length, Base64.ALPHABET, true);
    }
    
    public static String encode(final byte[] array, final int n, final int n2, final byte[] array2, final boolean b) {
        byte[] encode;
        int length;
        for (encode = encode(array, n, n2, array2, Integer.MAX_VALUE), length = encode.length; !b && length > 0 && encode[length - 1] == 61; --length) {}
        return new String(encode, 0, length);
    }
    
    public static byte[] encode(final byte[] array, final int n, final int n2, final byte[] array2, final int n3) {
        final int n4 = 4 * ((n2 + 2) / 3);
        final byte[] array3 = new byte[n4 + n4 / n3];
        int i = 0;
        int n5 = 0;
        final int n6 = n2 - 2;
        int n7 = 0;
        while (i < n6) {
            final int n8 = array[i + n] << 24 >>> 8 | array[n + (i + 1)] << 24 >>> 16 | array[n + (i + 2)] << 24 >>> 24;
            array3[n5] = array2[n8 >>> 18];
            array3[n5 + 1] = array2[0x3F & n8 >>> 12];
            array3[n5 + 2] = array2[0x3F & n8 >>> 6];
            array3[n5 + 3] = array2[n8 & 0x3F];
            int n9 = n7 + 4;
            if (n9 == n3) {
                array3[n5 + 4] = 10;
                ++n5;
                n9 = 0;
            }
            i += 3;
            n5 += 4;
            n7 = n9;
        }
        if (i < n2) {
            encode3to4(array, i + n, n2 - i, array3, n5, array2);
            if (n7 + 4 == n3) {
                array3[n5 + 4] = 10;
                ++n5;
            }
            n5 += 4;
        }
        assert n5 == array3.length;
        return array3;
    }
    
    private static byte[] encode3to4(final byte[] array, final int n, final int n2, final byte[] array2, final int n3, final byte[] array3) {
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
                array2[n3 + 3] = 61;
                return array2;
            }
            case 1: {
                array2[n3] = array3[n8 >>> 18];
                array2[n3 + 1] = array3[0x3F & n8 >>> 12];
                array2[n3 + 3] = (array2[n3 + 2] = 61);
                return array2;
            }
        }
    }
    
    public static String encodeWebSafe(final byte[] array, final boolean b) {
        return encode(array, 0, array.length, Base64.WEBSAFE_ALPHABET, b);
    }
}
