package com.google.ads.internal;

import android.webkit.*;
import com.google.ads.util.*;
import android.graphics.*;
import android.net.*;
import android.content.*;
import java.util.*;
import com.google.ads.*;

public class i extends WebViewClient
{
    private static final a c;
    protected d a;
    protected boolean b;
    private final Map<String, o> d;
    private final boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    
    static {
        c = a.a.b();
    }
    
    public i(final d a, final Map<String, o> d, final boolean e, final boolean g) {
        super();
        this.a = a;
        this.d = d;
        this.e = e;
        this.g = g;
        this.b = false;
        this.h = false;
        this.i = false;
    }
    
    public static i a(final d d, final Map<String, o> map, final boolean b, final boolean b2) {
        if (AdUtil.a >= 11) {
            return new g.b(d, map, b, b2);
        }
        return new i(d, map, b, b2);
    }
    
    public void a(final boolean b) {
        this.b = b;
    }
    
    public boolean a() {
        return this.f;
    }
    
    public void b(final boolean g) {
        this.g = g;
    }
    
    public void c(final boolean h) {
        this.h = h;
    }
    
    public void d(final boolean i) {
        this.i = i;
    }
    
    public void onPageFinished(final WebView webView, final String s) {
        this.f = false;
        if (this.h) {
            final c k = this.a.k();
            if (k != null) {
                k.c();
            }
            else {
                com.google.ads.util.b.a("adLoader was null while trying to setFinishedLoadingHtml().");
            }
            this.h = false;
        }
        if (this.i) {
            com.google.ads.internal.i.c.a(webView);
            this.i = false;
        }
    }
    
    public void onPageStarted(final WebView webView, final String s, final Bitmap bitmap) {
        this.f = true;
    }
    
    public void onReceivedError(final WebView webView, final int n, final String s, final String s2) {
        this.f = false;
        final c k = this.a.k();
        if (k != null) {
            k.a(AdRequest.ErrorCode.NETWORK_ERROR);
        }
    }
    
    public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
        while (true) {
            while (true) {
                Uri parse = null;
                Label_0302: {
                    try {
                        com.google.ads.util.b.a("shouldOverrideUrlLoading(\"" + s + "\")");
                        parse = Uri.parse(s);
                        if (com.google.ads.internal.i.c.a(parse)) {
                            com.google.ads.internal.i.c.a(this.a, this.d, parse, webView);
                            return true;
                        }
                        if (!this.g) {
                            if (this.e) {
                                try {
                                    final n i = this.a.i();
                                    final Context context = i.f.a();
                                    final al al = i.s.a();
                                    if (al != null && al.a(parse)) {
                                        final Uri a = al.a(parse, context);
                                        final HashMap<String, String> hashMap = new HashMap<String, String>();
                                        hashMap.put("u", a.toString());
                                        AdActivity.launchAdActivity(this.a, new e("intent", hashMap));
                                        return true;
                                    }
                                    break Label_0302;
                                }
                                catch (am am) {
                                    com.google.ads.util.b.e("Unable to append parameter to URL: " + s);
                                    break Label_0302;
                                }
                            }
                            com.google.ads.util.b.e("URL is not a GMSG and can't handle URL: " + s);
                            return true;
                        }
                        if (AdUtil.a(parse)) {
                            return super.shouldOverrideUrlLoading(webView, s);
                        }
                        final HashMap<String, String> hashMap2 = new HashMap<String, String>();
                        hashMap2.put("u", s);
                        AdActivity.launchAdActivity(this.a, new e("intent", hashMap2));
                        return true;
                    }
                    catch (Throwable t) {
                        com.google.ads.util.b.d("An unknown error occurred in shouldOverrideUrlLoading.", t);
                        return true;
                    }
                }
                final Uri a = parse;
                continue;
            }
        }
    }
}
