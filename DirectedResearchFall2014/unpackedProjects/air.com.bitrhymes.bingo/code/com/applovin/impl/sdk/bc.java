package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import android.content.*;
import java.security.*;
import java.util.*;
import java.net.*;
import java.io.*;

public class bc extends AppLovinSdkUtils
{
    private static final char[] a;
    private static final char[] b;
    
    static {
        a = "0123456789abcdef".toCharArray();
        b = "-'".toCharArray();
    }
    
    public static File a(final String s, final Context context) {
        String replace;
        if (s.contains("icon")) {
            replace = s.replace("/", "_").replace(".", "_");
        }
        else {
            replace = s;
        }
        final File parent = new File(context.getCacheDir(), "al");
        final File file = new File(parent, replace);
        parent.mkdirs();
        return file;
    }
    
    public static String a(final String s) {
        if (s != null && s.length() > 4) {
            return s.substring(s.length() - 4);
        }
        return "NOKEY";
    }
    
    public static String a(final String s, final AppLovinSdkImpl appLovinSdkImpl) {
        return a(s, Integer.valueOf(-1), (String)appLovinSdkImpl.a(v.t));
    }
    
    private static String a(final String s, final Integer n, final String str) {
        if (str == null) {
            throw new IllegalArgumentException("No algorithm specified");
        }
        String a;
        if (s == null || s.length() < 1) {
            a = "";
        }
        else {
            if (str.length() < 1 || "none".equals(str)) {
                return s;
            }
            try {
                final MessageDigest instance = MessageDigest.getInstance(str);
                instance.update(s.getBytes("UTF-8"));
                a = a(instance.digest());
                if (a != null && n > 0) {
                    return a.substring(0, Math.min(n, a.length()));
                }
            }
            catch (NoSuchAlgorithmException cause) {
                throw new RuntimeException("Unknown algorithm \"" + str + "\"", cause);
            }
            catch (UnsupportedEncodingException cause2) {
                throw new RuntimeException("Programming error: UTF-8 is not know encoding", cause2);
            }
        }
        return a;
    }
    
    static String a(final Collection collection, final String str, final int n) {
        if (str == null) {
            throw new IllegalArgumentException("No glue specified");
        }
        if (collection == null || collection.size() < 1) {
            return "";
        }
        final StringBuffer sb = new StringBuffer();
        int n2 = 0;
        for (final String str2 : collection) {
            if (n2 >= n) {
                break;
            }
            ++n2;
            sb.append(str2).append(str);
        }
        if (sb.length() > str.length()) {
            sb.setLength(sb.length() - str.length());
        }
        return sb.toString();
    }
    
    static String a(final Map map) {
        if (map == null || map.isEmpty()) {
            return "";
        }
        final StringBuilder sb = new StringBuilder();
        for (final Map.Entry<Object, V> entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(entry.getKey()).append('=').append(entry.getValue());
        }
        return sb.toString();
    }
    
    public static String a(final byte[] array) {
        if (array == null) {
            throw new IllegalArgumentException("No data specified");
        }
        final char[] value = new char[2 * array.length];
        for (int i = 0; i < array.length; ++i) {
            value[i * 2] = bc.a[(0xF0 & array[i]) >>> 4];
            value[1 + i * 2] = bc.a[0xF & array[i]];
        }
        return new String(value);
    }
    
    public static boolean a(final x x, final AppLovinSdkImpl appLovinSdkImpl) {
        return a(x, appLovinSdkImpl.getSettingsManager());
    }
    
    public static boolean a(final x x, final y y) {
        return System.currentTimeMillis() > 1000L * (long)y.a(x);
    }
    
    public static String b(final String s) {
        if (s == null || s.length() < 1) {
            return "";
        }
        return s.trim().toLowerCase();
    }
    
    public static String b(final String s, final AppLovinSdkImpl appLovinSdkImpl) {
        return a(s, (Integer)appLovinSdkImpl.a(v.u), (String)appLovinSdkImpl.a(v.t));
    }
    
    static String c(final String s) {
        if (d(s)) {
            try {
                return URLEncoder.encode(s, "UTF-8");
            }
            catch (UnsupportedEncodingException cause) {
                throw new UnsupportedOperationException(cause);
            }
        }
        return "";
    }
    
    static boolean d(final String s) {
        return s != null && s.length() > 1;
    }
}
