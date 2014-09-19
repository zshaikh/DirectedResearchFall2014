package com.flurry.android;

import org.apache.http.*;
import org.apache.http.params.*;
import org.apache.http.client.methods.*;
import android.content.*;
import java.io.*;
import java.net.*;
import java.security.*;
import java.util.*;
import android.text.*;

final class bd
{
    static int a(final Context context, final int n) {
        return Math.round(n / context.getResources().getDisplayMetrics().density);
    }
    
    static HttpResponse a(final String str, final int n, final int n2, final boolean b) {
        try {
            final HttpGet httpGet = new HttpGet(str);
            final BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout((HttpParams)basicHttpParams, 10000);
            HttpConnectionParams.setSoTimeout((HttpParams)basicHttpParams, 15000);
            ((HttpParams)basicHttpParams).setParameter("http.protocol.handle-redirects", (Object)b);
            return cn.a((HttpParams)basicHttpParams).execute((HttpUriRequest)httpGet);
        }
        catch (UnknownHostException ex) {
            db.c("FlurryAgent", "Unknown host: " + ex.getMessage());
            return null;
        }
        catch (Exception ex2) {
            db.a("FlurryAgent", "Failed to hit URL: " + str, ex2);
            return null;
        }
    }
    
    static void a(final Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        }
        catch (Throwable t) {}
    }
    
    static boolean a(final Context context, final Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }
    
    static int b(final Context context, final int n) {
        return Math.round(n * context.getResources().getDisplayMetrics().density);
    }
    
    static boolean b(final long n) {
        final long n2 = lcmp(System.currentTimeMillis(), n);
        boolean b = false;
        if (n2 <= 0) {
            b = true;
        }
        return b;
    }
    
    static int l(final Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }
    
    static int m(final Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }
    
    static int n(final Context context) {
        return a(context, l(context));
    }
    
    static int o(final Context context) {
        return a(context, m(context));
    }
    
    static String p(final String s) {
        try {
            return URLEncoder.encode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException ex) {
            db.g("FlurryAgent", "Cannot encode '" + s + "'");
            return "";
        }
    }
    
    private static String q(final String s) {
        try {
            return URLDecoder.decode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException ex) {
            db.g("FlurryAgent", "Cannot decode '" + s + "'");
            return "";
        }
    }
    
    static byte[] r(final String s) {
        try {
            final MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(s.getBytes(), 0, s.length());
            return instance.digest();
        }
        catch (NoSuchAlgorithmException ex) {
            db.d("FlurryAgent", "Unsupported SHA1: " + ex.getMessage());
            return null;
        }
    }
    
    static String s(final String s) {
        return s.replace("'", "\\'").replace("\\n", "").replace("\\r", "").replace("\\t", "");
    }
    
    static String sanitize(final String s) {
        if (s == null) {
            return "";
        }
        if (s.length() <= 255) {
            return s;
        }
        return s.substring(0, 255);
    }
    
    static Map<String, String> t(final String s) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        if (!TextUtils.isEmpty((CharSequence)s)) {
            final String[] split = s.split("&");
            for (int length = split.length, i = 0; i < length; ++i) {
                final String[] split2 = split[i].split("=");
                if (!split2[0].equals("event")) {
                    hashMap.put(q(split2[0]), q(split2[1]));
                }
            }
        }
        return hashMap;
    }
}
