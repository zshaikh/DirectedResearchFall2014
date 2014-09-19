package com.google.ads;

import android.webkit.*;
import com.google.ads.internal.*;
import android.text.*;
import java.math.*;
import android.content.*;
import com.google.ads.util.*;
import java.util.*;

public class w implements o
{
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        final String str = hashMap.get("url");
        final String str2 = hashMap.get("type");
        final String str3 = hashMap.get("afma_notify_dt");
        final String str4 = hashMap.get("activation_overlay_url");
        final String s = hashMap.get("check_packages");
        final boolean equals = "1".equals(hashMap.get("drt_include"));
        final String anObject = hashMap.get("request_scenario");
        final boolean equals2 = "1".equals(hashMap.get("use_webview_loadurl"));
        c.d d2;
        if (c.d.d.e.equals(anObject)) {
            d2 = c.d.d;
        }
        else if (c.d.c.e.equals(anObject)) {
            d2 = c.d.c;
        }
        else if (c.d.a.e.equals(anObject)) {
            d2 = c.d.a;
        }
        else {
            d2 = c.d.b;
        }
        b.c("Received ad url: <url: \"" + str + "\" type: \"" + str2 + "\" afmaNotifyDt: \"" + str3 + "\" activationOverlayUrl: \"" + str4 + "\" useWebViewLoadUrl: \"" + equals2 + "\">");
        String s2;
        if (!TextUtils.isEmpty((CharSequence)s) && !TextUtils.isEmpty((CharSequence)str)) {
            final BigInteger bigInteger = new BigInteger(new byte[1]);
            final String[] split = s.split(",");
            int i = 0;
            BigInteger bigInteger2 = bigInteger;
            while (i < split.length) {
                BigInteger setBit;
                if (AdUtil.a((Context)d.i().c.a(), split[i])) {
                    setBit = bigInteger2.setBit(i);
                }
                else {
                    setBit = bigInteger2;
                }
                ++i;
                bigInteger2 = setBit;
            }
            final String format = String.format(Locale.US, "%X", bigInteger2);
            final String replaceAll = str.replaceAll("%40installed_markets%40", format);
            m.a().a.a(format);
            b.c("Ad url modified to " + replaceAll);
            s2 = replaceAll;
        }
        else {
            s2 = str;
        }
        final c k = d.k();
        if (k != null) {
            k.d(equals);
            k.a(d2);
            k.e(equals2);
            k.e(str4);
            k.d(s2);
        }
    }
}
