package com.applovin.impl.adview;

import android.net.*;
import com.applovin.sdk.*;
import android.webkit.*;
import android.content.*;
import java.util.*;
import com.applovin.adview.*;
import android.view.*;

class x extends WebViewClient
{
    private final AppLovinSdk a;
    private final AppLovinLogger b;
    private AdViewControllerImpl c;
    
    public x(final AdViewControllerImpl c, final AppLovinSdk a) {
        super();
        this.a = a;
        this.b = a.getLogger();
        this.c = c;
    }
    
    private Set a(final Uri uri) {
        if (uri.isOpaque()) {
            throw new UnsupportedOperationException("This isn't a hierarchical URI.");
        }
        final String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null) {
            return Collections.emptySet();
        }
        final LinkedHashSet<String> s = new LinkedHashSet<String>();
        int i = 0;
        do {
            int n = encodedQuery.indexOf(38, i);
            if (n == -1) {
                n = encodedQuery.length();
            }
            int index = encodedQuery.indexOf(61, i);
            if (index > n || index == -1) {
                index = n;
            }
            s.add(Uri.decode(encodedQuery.substring(i, index)));
            i = n + 1;
        } while (i < encodedQuery.length());
        return Collections.unmodifiableSet((Set<?>)s);
    }
    
    private void a(final Uri obj, final v v) {
        try {
            v.getContext().startActivity(new Intent("android.intent.action.VIEW", obj));
        }
        catch (Throwable t) {
            this.b.e("AdWebViewClient", "Unable to show \"" + obj + "\".", t);
        }
    }
    
    private void d(final v v) {
        final AppLovinAd a = v.a();
        if (a != null) {
            this.c.a(a);
        }
    }
    
    void a(final WebView webView, final String s) {
        this.b.d("AdWebViewClient", "Processing click on ad URL \"" + s + "\"");
        if (s != null && webView instanceof v) {
            final Uri parse = Uri.parse(s);
            final v v = (v)webView;
            final String scheme = parse.getScheme();
            final String host = parse.getHost();
            final String path = parse.getPath();
            if (!"applovin".equals(scheme) || !"com.applovin.sdk".equals(host)) {
                this.d(v);
                this.a(parse, v);
                return;
            }
            if ("/adservice/track_click".equals(path)) {
                this.c(v);
            }
            else {
                if ("/adservice/next_ad".equals(path)) {
                    this.a(v);
                    return;
                }
                if ("/adservice/close_ad".equals(path)) {
                    this.b(v);
                    return;
                }
                if (path.startsWith("/launch/")) {
                    final List pathSegments = parse.getPathSegments();
                    if (pathSegments.size() <= 1) {
                        return;
                    }
                    final String str = pathSegments.get(pathSegments.size() - 1);
                    try {
                        final Context context = webView.getContext();
                        context.startActivity(context.getPackageManager().getLaunchIntentForPackage(str));
                        this.d(v);
                        return;
                    }
                    catch (Exception ex) {
                        this.b.e("AdWebViewClient", "Threw Exception Trying to Launch App for Package: " + str, ex);
                        return;
                    }
                }
                if (path.contains("/openurl")) {
                    if (parse.getPathSegments().size() > 0) {
                        final String queryParameter = parse.getQueryParameter("url");
                        if (s != null && URLUtil.isValidUrl(queryParameter)) {
                            webView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(queryParameter)));
                            return;
                        }
                        this.b.e("AdWebViewClient", "SDK was asked to launch invalid URL externally:" + queryParameter);
                    }
                }
                else {
                    if (!path.contains("/function/")) {
                        this.b.e("AdWebViewClient", "Unknown URL: " + s);
                        this.b.e("AdWebViewClient", "Path: " + path);
                        return;
                    }
                    final List pathSegments2 = parse.getPathSegments();
                    if (pathSegments2.size() > 1) {
                        final String s2 = pathSegments2.get(pathSegments2.size() - 1);
                        final HashMap<String, String> hashMap = new HashMap<String, String>();
                        for (final String s3 : this.a(parse)) {
                            hashMap.put(s3, parse.getQueryParameter(s3));
                        }
                        this.c.handleCommandInvocation(s2, hashMap);
                    }
                }
            }
        }
    }
    
    protected void a(final v v) {
        final ViewParent parent = v.getParent();
        if (parent instanceof AppLovinAdView) {
            ((AppLovinAdView)parent).loadNextAd();
        }
    }
    
    protected void b(final v v) {
        this.c.a(v);
    }
    
    protected void c(final v v) {
        final AppLovinAd a = v.a();
        if (a != null) {
            this.a(v, a.getDestinationUrl());
        }
    }
    
    public void onPageFinished(final WebView webView, final String s) {
        super.onPageFinished(webView, s);
        this.c.onAdHtmlLoaded(webView);
    }
    
    public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
        this.a(webView, s);
        return true;
    }
}
