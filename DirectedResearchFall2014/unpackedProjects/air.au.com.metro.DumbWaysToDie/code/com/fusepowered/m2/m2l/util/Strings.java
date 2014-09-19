package com.fusepowered.m2.m2l.util;

import java.io.*;

public class Strings
{
    public static String fromStream(final InputStream inputStream) throws IOException {
        int i = 0;
        final StringBuffer sb = new StringBuffer();
        for (byte[] array = new byte[4096]; i != -1; i = inputStream.read(array)) {
            sb.append(new String(array, 0, i));
        }
        inputStream.close();
        return sb.toString();
    }
    
    public static boolean isEmpty(final String s) {
        return s != null && s.length() == 0;
    }
}
