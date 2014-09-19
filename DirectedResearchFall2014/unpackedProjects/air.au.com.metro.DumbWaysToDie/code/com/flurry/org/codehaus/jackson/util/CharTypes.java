package com.flurry.org.codehaus.jackson.util;

import java.util.*;

public final class CharTypes
{
    private static final byte[] HEX_BYTES;
    private static final char[] HEX_CHARS;
    static final int[] sHexValues;
    static final int[] sInputCodes;
    static final int[] sInputCodesComment;
    static final int[] sInputCodesJsNames;
    static final int[] sInputCodesUtf8;
    static final int[] sInputCodesUtf8JsNames;
    static final int[] sOutputEscapes128;
    
    static {
        HEX_CHARS = "0123456789ABCDEF".toCharArray();
        final int length = CharTypes.HEX_CHARS.length;
        HEX_BYTES = new byte[length];
        for (int i = 0; i < length; ++i) {
            CharTypes.HEX_BYTES[i] = (byte)CharTypes.HEX_CHARS[i];
        }
        final int[] sInputCodes2 = new int[256];
        for (int j = 0; j < 32; ++j) {
            sInputCodes2[j] = -1;
        }
        sInputCodes2[92] = (sInputCodes2[34] = 1);
        sInputCodes = sInputCodes2;
        final int[] sInputCodesUtf9 = new int[CharTypes.sInputCodes.length];
        System.arraycopy(CharTypes.sInputCodes, 0, sInputCodesUtf9, 0, CharTypes.sInputCodes.length);
        for (int k = 128; k < 256; ++k) {
            int n;
            if ((k & 0xE0) == 0xC0) {
                n = 2;
            }
            else if ((k & 0xF0) == 0xE0) {
                n = 3;
            }
            else if ((k & 0xF8) == 0xF0) {
                n = 4;
            }
            else {
                n = -1;
            }
            sInputCodesUtf9[k] = n;
        }
        sInputCodesUtf8 = sInputCodesUtf9;
        final int[] array = new int[256];
        Arrays.fill(array, -1);
        for (int l = 33; l < 256; ++l) {
            if (Character.isJavaIdentifierPart((char)l)) {
                array[l] = 0;
            }
        }
        array[64] = 0;
        array[42] = (array[35] = 0);
        array[43] = (array[45] = 0);
        sInputCodesJsNames = array;
        final int[] array2 = new int[256];
        System.arraycopy(CharTypes.sInputCodesJsNames, 0, array2, 0, CharTypes.sInputCodesJsNames.length);
        Arrays.fill(array2, 128, 128, 0);
        sInputCodesUtf8JsNames = array2;
        sInputCodesComment = new int[256];
        System.arraycopy(CharTypes.sInputCodesUtf8, 128, CharTypes.sInputCodesComment, 128, 128);
        Arrays.fill(CharTypes.sInputCodesComment, 0, 32, -1);
        CharTypes.sInputCodesComment[9] = 0;
        CharTypes.sInputCodesComment[10] = 10;
        CharTypes.sInputCodesComment[13] = 13;
        CharTypes.sInputCodesComment[42] = 42;
        final int[] sOutputEscapes129 = new int[128];
        for (int n2 = 0; n2 < 32; ++n2) {
            sOutputEscapes129[n2] = -1;
        }
        sOutputEscapes129[34] = 34;
        sOutputEscapes129[92] = 92;
        sOutputEscapes129[8] = 98;
        sOutputEscapes129[9] = 116;
        sOutputEscapes129[12] = 102;
        sOutputEscapes129[10] = 110;
        sOutputEscapes129[13] = 114;
        sOutputEscapes128 = sOutputEscapes129;
        Arrays.fill(sHexValues = new int[128], -1);
        for (int n3 = 0; n3 < 10; ++n3) {
            CharTypes.sHexValues[n3 + 48] = n3;
        }
        for (int n4 = 0; n4 < 6; ++n4) {
            CharTypes.sHexValues[n4 + 97] = n4 + 10;
            CharTypes.sHexValues[n4 + 65] = n4 + 10;
        }
    }
    
    public static void appendQuoted(final StringBuilder sb, final String s) {
        final int[] sOutputEscapes128 = CharTypes.sOutputEscapes128;
        final int length = sOutputEscapes128.length;
        for (int i = 0; i < s.length(); ++i) {
            final char char1 = s.charAt(i);
            if (char1 >= length || sOutputEscapes128[char1] == 0) {
                sb.append(char1);
            }
            else {
                sb.append('\\');
                final int n = sOutputEscapes128[char1];
                if (n < 0) {
                    sb.append('u');
                    sb.append('0');
                    sb.append('0');
                    final int n2 = -(n + 1);
                    sb.append(CharTypes.HEX_CHARS[n2 >> 4]);
                    sb.append(CharTypes.HEX_CHARS[n2 & 0xF]);
                }
                else {
                    sb.append((char)n);
                }
            }
        }
    }
    
    public static int charToHex(final int n) {
        if (n > 127) {
            return -1;
        }
        return CharTypes.sHexValues[n];
    }
    
    public static byte[] copyHexBytes() {
        return CharTypes.HEX_BYTES.clone();
    }
    
    public static char[] copyHexChars() {
        return CharTypes.HEX_CHARS.clone();
    }
    
    public static final int[] get7BitOutputEscapes() {
        return CharTypes.sOutputEscapes128;
    }
    
    public static final int[] getInputCodeComment() {
        return CharTypes.sInputCodesComment;
    }
    
    public static final int[] getInputCodeLatin1() {
        return CharTypes.sInputCodes;
    }
    
    public static final int[] getInputCodeLatin1JsNames() {
        return CharTypes.sInputCodesJsNames;
    }
    
    public static final int[] getInputCodeUtf8() {
        return CharTypes.sInputCodesUtf8;
    }
    
    public static final int[] getInputCodeUtf8JsNames() {
        return CharTypes.sInputCodesUtf8JsNames;
    }
}
