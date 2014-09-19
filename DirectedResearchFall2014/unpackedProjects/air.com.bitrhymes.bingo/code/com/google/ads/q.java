package com.google.ads;

import com.google.ads.internal.*;
import android.webkit.*;
import com.google.ads.util.*;
import android.net.*;
import android.content.*;
import java.util.*;
import android.content.pm.*;

public class q implements o
{
    private static final a a;
    
    static {
        a = com.google.ads.internal.a.a.b();
    }
    
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        final String s = hashMap.get("urls");
        if (s == null) {
            b.e("Could not get the urls param from canOpenURLs gmsg.");
            return;
        }
        final String[] split = s.split(",");
        final HashMap<String, Boolean> hashMap2 = new HashMap<String, Boolean>();
        final PackageManager packageManager = webView.getContext().getPackageManager();
        for (final String key : split) {
            final String[] split2 = key.split(";", 2);
            final String s2 = split2[0];
            String s3;
            if (split2.length >= 2) {
                s3 = split2[1];
            }
            else {
                s3 = "android.intent.action.VIEW";
            }
            hashMap2.put(key, packageManager.resolveActivity(new Intent(s3, Uri.parse(s2)), 65536) != null);
        }
        q.a.a(webView, hashMap2);
    }
}
