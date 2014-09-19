package com.fusepowered.m1.android;

import java.util.*;

class Base64
{
    private static final char[] CA;
    private static final int[] IA;
    
    static {
        CA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        Arrays.fill(IA = new int[256], -1);
        for (int i = 0; i < Base64.CA.length; ++i) {
            Base64.IA[Base64.CA[i]] = i;
        }
        Base64.IA[61] = 0;
    }
    
    public static final byte[] decode(final String s) {
        int length;
        if (s != null) {
            length = s.length();
        }
        else {
            length = 0;
        }
        if (length == 0) {
            return new byte[0];
        }
        int n = 0;
        for (int i = 0; i < length; ++i) {
            if (Base64.IA[s.charAt(i)] < 0) {
                ++n;
            }
        }
        if ((length - n) % 4 != 0) {
            return null;
        }
        int n2 = 0;
        int j = length;
        while (j > 1) {
            final int[] ia = Base64.IA;
            --j;
            if (ia[s.charAt(j)] > 0) {
                break;
            }
            if (s.charAt(j) != '=') {
                continue;
            }
            ++n2;
        }
        final int n3 = (6 * (length - n) >> 3) - n2;
        final byte[] array = new byte[n3];
        int n4 = 0;
        int index;
        int n8;
        for (int k = 0; k < n3; k = n8, n4 = index) {
            int n5 = 0;
            int l = 0;
            index = n4;
            while (l < 4) {
                final int[] ia2 = Base64.IA;
                final int n6 = index + 1;
                final int n7 = ia2[s.charAt(index)];
                if (n7 >= 0) {
                    n5 |= n7 << 18 - l * 6;
                }
                else {
                    --l;
                }
                ++l;
                index = n6;
            }
            n8 = k + 1;
            array[k] = (byte)(n5 >> 16);
            if (n8 < n3) {
                final int n9 = n8 + 1;
                array[n8] = (byte)(n5 >> 8);
                if (n9 < n3) {
                    n8 = n9 + 1;
                    array[n9] = (byte)n5;
                }
                else {
                    n8 = n9;
                }
            }
        }
        return array;
    }
    
    public static final byte[] decode(final byte[] array) {
        final int length = array.length;
        int n = 0;
        for (int i = 0; i < length; ++i) {
            if (Base64.IA[0xFF & array[i]] < 0) {
                ++n;
            }
        }
        if ((length - n) % 4 != 0) {
            return null;
        }
        int n2 = 0;
        int j = length;
        while (j > 1) {
            final int[] ia = Base64.IA;
            --j;
            if (ia[0xFF & array[j]] > 0) {
                break;
            }
            if (array[j] != 61) {
                continue;
            }
            ++n2;
        }
        final int n3 = (6 * (length - n) >> 3) - n2;
        final byte[] array2 = new byte[n3];
        int n4 = 0;
        int n6;
        int n9;
        for (int k = 0; k < n3; k = n9, n4 = n6) {
            int n5 = 0;
            int l = 0;
            n6 = n4;
            while (l < 4) {
                final int[] ia2 = Base64.IA;
                final int n7 = n6 + 1;
                final int n8 = ia2[0xFF & array[n6]];
                if (n8 >= 0) {
                    n5 |= n8 << 18 - l * 6;
                }
                else {
                    --l;
                }
                ++l;
                n6 = n7;
            }
            n9 = k + 1;
            array2[k] = (byte)(n5 >> 16);
            if (n9 < n3) {
                final int n10 = n9 + 1;
                array2[n9] = (byte)(n5 >> 8);
                if (n10 < n3) {
                    n9 = n10 + 1;
                    array2[n10] = (byte)n5;
                }
                else {
                    n9 = n10;
                }
            }
        }
        return array2;
    }
    
    public static final char[] encodeToChar(final byte[] array, final boolean b) {
        int length;
        if (array != null) {
            length = array.length;
        }
        else {
            length = 0;
        }
        if (length == 0) {
            return new char[0];
        }
        final int n = 3 * (length / 3);
        final int n2 = 1 + (length - 1) / 3 << 2;
        int n3;
        if (b) {
            n3 = (n2 - 1) / 76 << 1;
        }
        else {
            n3 = 0;
        }
        final int n4 = n2 + n3;
        final char[] array2 = new char[n4];
        int n5 = 0;
        int i = 0;
        int n6 = 0;
        while (i < n) {
            final int n7 = i + 1;
            final int n8 = (0xFF & array[i]) << 16;
            final int n9 = n7 + 1;
            final int n10 = n8 | (0xFF & array[n7]) << 8;
            final int n11 = n9 + 1;
            final int n12 = n10 | (0xFF & array[n9]);
            final int n13 = n6 + 1;
            array2[n6] = Base64.CA[0x3F & n12 >>> 18];
            final int n14 = n13 + 1;
            array2[n13] = Base64.CA[0x3F & n12 >>> 12];
            final int n15 = n14 + 1;
            array2[n14] = Base64.CA[0x3F & n12 >>> 6];
            final int n16 = n15 + 1;
            array2[n15] = Base64.CA[n12 & 0x3F];
            int n18;
            if (b && ++n5 == 19 && n16 < n4 - 2) {
                final int n17 = n16 + 1;
                array2[n16] = '\r';
                n18 = n17 + 1;
                array2[n17] = '\n';
                n5 = 0;
            }
            else {
                n18 = n16;
            }
            n6 = n18;
            i = n11;
        }
        final int n19 = length - n;
        if (n19 > 0) {
            final int n20 = (0xFF & array[n]) << 10;
            int n21;
            if (n19 == 2) {
                n21 = (0xFF & array[length - 1]) << 2;
            }
            else {
                n21 = 0;
            }
            final int n22 = n21 | n20;
            array2[n4 - 4] = Base64.CA[n22 >> 12];
            array2[n4 - 3] = Base64.CA[0x3F & n22 >>> 6];
            final int n23 = n4 - 2;
            char c;
            if (n19 == 2) {
                c = Base64.CA[n22 & 0x3F];
            }
            else {
                c = '=';
            }
            array2[n23] = c;
            array2[n4 - 1] = '=';
        }
        return array2;
    }
    
    public static final String encodeToString(final byte[] array, final boolean b) {
        return new String(encodeToChar(array, b));
    }
}
