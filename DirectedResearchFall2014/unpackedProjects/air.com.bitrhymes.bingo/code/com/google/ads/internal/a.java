package com.google.ads.internal;

import java.util.*;
import com.google.ads.*;
import android.net.*;
import android.webkit.*;
import org.json.*;
import com.google.ads.util.*;

public class a
{
    public static final f<a> a;
    public static final Map<String, o> b;
    public static final Map<String, o> c;
    public static final Map<String, o> d;
    private static final a e;
    
    static {
        e = new a();
        a = new f<a>() {
            public a a() {
                return com.google.ads.internal.a.e;
            }
        };
        b = Collections.unmodifiableMap((Map<? extends String, ? extends o>)new HashMap<String, o>() {
            {
                ((HashMap<String, v>)this).put("/invalidRequest", new v());
                ((HashMap<String, w>)this).put("/loadAdURL", new w());
                ((HashMap<String, x>)this).put("/loadSdkConstants", new x());
                ((HashMap<String, y>)this).put("/log", new y());
            }
        });
        c = Collections.unmodifiableMap((Map<? extends String, ? extends o>)new HashMap<String, o>() {
            {
                ((HashMap<String, y>)this).put("/log", new y());
                ((HashMap<String, aa>)this).put("/setNativeActivationOverlay", new aa());
            }
        });
        d = Collections.unmodifiableMap((Map<? extends String, ? extends o>)new HashMap<String, o>() {
            {
                ((HashMap<String, z>)this).put("/open", new z());
                ((HashMap<String, q>)this).put("/canOpenURLs", new q());
                ((HashMap<String, s>)this).put("/close", new s());
                ((HashMap<String, t>)this).put("/customClose", new t());
                ((HashMap<String, p>)this).put("/appEvent", new p());
                ((HashMap<String, y>)this).put("/log", new y());
                ((HashMap<String, r>)this).put("/click", new r());
                ((HashMap<String, u>)this).put("/httpTrack", new u());
                ((HashMap<String, ab>)this).put("/touch", new ab());
                ((HashMap<String, ac>)this).put("/video", new ac());
            }
        });
    }
    
    public String a(final Uri uri, final HashMap<String, String> hashMap) {
        if (this.c(uri)) {
            final String host = uri.getHost();
            if (host == null) {
                com.google.ads.util.b.e("An error occurred while parsing the AMSG parameters.");
                return null;
            }
            if (host.equals("launch")) {
                hashMap.put("a", "intent");
                hashMap.put("u", hashMap.get("url"));
                hashMap.remove("url");
                return "/open";
            }
            if (host.equals("closecanvas")) {
                return "/close";
            }
            if (host.equals("log")) {
                return "/log";
            }
            com.google.ads.util.b.e("An error occurred while parsing the AMSG: " + uri.toString());
            return null;
        }
        else {
            if (this.b(uri)) {
                return uri.getPath();
            }
            com.google.ads.util.b.e("Message was neither a GMSG nor an AMSG.");
            return null;
        }
    }
    
    public void a(final WebView webView) {
        this.a(webView, "onshow", "{'version': 'afma-sdk-a-v6.4.1'}");
    }
    
    public void a(final WebView webView, final String s) {
        com.google.ads.util.b.a("Sending JS to a WebView: " + s);
        webView.loadUrl("javascript:" + s);
    }
    
    public void a(final WebView webView, final String s, final String str) {
        if (str != null) {
            this.a(webView, "AFMA_ReceiveMessage" + "('" + s + "', " + str + ");");
            return;
        }
        this.a(webView, "AFMA_ReceiveMessage" + "('" + s + "');");
    }
    
    public void a(final WebView webView, final Map<String, Boolean> map) {
        this.a(webView, "openableURLs", new JSONObject((Map)map).toString());
    }
    
    public void a(final d d, final Map<String, o> map, final Uri uri, final WebView webView) {
        final HashMap<String, String> b = AdUtil.b(uri);
        if (b == null) {
            com.google.ads.util.b.e("An error occurred while parsing the message parameters.");
            return;
        }
        final String a = this.a(uri, b);
        if (a == null) {
            com.google.ads.util.b.e("An error occurred while parsing the message.");
            return;
        }
        final o o = map.get(a);
        if (o == null) {
            com.google.ads.util.b.e("No AdResponse found, <message: " + a + ">");
            return;
        }
        o.a(d, b, webView);
    }
    
    public boolean a(final Uri uri) {
        return uri != null && uri.isHierarchical() && (this.b(uri) || this.c(uri));
    }
    
    public void b(final WebView webView) {
        this.a(webView, "onhide", null);
    }
    
    public boolean b(final Uri uri) {
        final String scheme = uri.getScheme();
        if (scheme == null || !scheme.equals("gmsg")) {
            return false;
        }
        final String authority = uri.getAuthority();
        return authority != null && authority.equals("mobileads.google.com");
    }
    
    public boolean c(final Uri uri) {
        final String scheme = uri.getScheme();
        return scheme != null && scheme.equals("admob");
    }
}
