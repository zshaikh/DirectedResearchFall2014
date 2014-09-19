package com.tapjoy.mraid.util;

import android.os.*;

public class Utils
{
    private static final String CHAR_SET = "ISO-8859-1";
    
    public static String byteToHex(final byte b) {
        final char[] array = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
        return new String(new char[] { array[0xF & b >> 4], array[b & 0xF] });
    }
    
    public static String convert(final String s) {
        try {
            final byte[] bytes = s.getBytes();
            final StringBuffer sb = new StringBuffer();
            for (int i = 0; i < bytes.length; ++i) {
                if ((0x80 & bytes[i]) > 0) {
                    sb.append("%" + byteToHex(bytes[i]));
                }
                else {
                    sb.append((char)bytes[i]);
                }
            }
            return new String(sb.toString().getBytes(), "ISO-8859-1");
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    public static String getData(final String s, final Bundle bundle) {
        return bundle.getString(s);
    }
}
