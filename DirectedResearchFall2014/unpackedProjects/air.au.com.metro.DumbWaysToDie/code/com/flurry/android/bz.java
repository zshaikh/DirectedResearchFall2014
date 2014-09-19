package com.flurry.android;

import android.net.*;
import android.graphics.*;
import android.app.*;
import android.webkit.*;
import java.util.*;
import android.widget.*;
import android.media.*;
import android.content.*;
import android.view.*;

final class bz extends WebViewClient
{
    private /* synthetic */ bn dW;
    
    private bz(final bn dw, final byte b) {
        this.dW = dw;
        super();
    }
    
    public final void onLoadResource(final WebView webView, final String str) {
        new StringBuilder().append("onLoadResource: url = ").append(str).toString();
        super.onLoadResource(webView, str);
        if (str != null && webView != null && webView == this.dW.du) {
            if (!str.equalsIgnoreCase(this.dW.du.getUrl())) {
                bn.c(this.dW);
            }
            if (!this.dW.dE) {
                final String lastPathSegment = Uri.parse(str).getLastPathSegment();
                if (lastPathSegment != null && lastPathSegment.equalsIgnoreCase("mraid.js")) {
                    this.dW.dE = true;
                    if (this.dW.dD) {
                        bn.f(this.dW);
                    }
                }
            }
        }
    }
    
    public final void onPageFinished(final WebView webView, final String str) {
        new StringBuilder().append("onPageFinished: url = ").append(str).toString();
        if (str != null && webView != null && webView == this.dW.du) {
            bn.c(this.dW);
            bn.h(this.dW);
            if (!this.dW.a((View)this.dW.du) && (this.dW.ad() == 2 || this.dW.ad() == 1)) {
                this.dW.addView((View)this.dW.du);
            }
            this.dW.dD = true;
            if (this.dW.dE) {
                bn.f(this.dW);
            }
        }
    }
    
    public final void onPageStarted(final WebView webView, final String str, final Bitmap bitmap) {
        new StringBuilder().append("onPageStarted: url = ").append(str).toString();
        if (str == null || webView == null || webView != this.dW.du) {
            return;
        }
        bn.g(this.dW);
        this.dW.dD = false;
        this.dW.dE = false;
    }
    
    public final void onReceivedError(final WebView webView, final int n, final String s, final String s2) {
        this.dW.a("renderFailed", Collections.emptyMap(), this.dW.M, this.dW.L, this.dW.N, 0);
    }
    
    public final boolean shouldOverrideUrlLoading(final WebView webView, final String str) {
        new StringBuilder().append("shouldOverrideUrlLoading: url = ").append(str).toString();
        if (str == null || webView == null || webView != this.dW.du) {
            return false;
        }
        final Uri parse = Uri.parse(str);
        if (parse.getScheme() != null && parse.getScheme().equals("flurry")) {
            final String queryParameter = parse.getQueryParameter("event");
            if (queryParameter != null) {
                this.dW.dM.add(queryParameter);
                final Map<String, String> t = bd.t(parse.getEncodedQuery());
                if (t.containsKey("guid")) {
                    final AdUnit a = this.dW.v(t.get("guid"));
                    final cz b = this.dW.u(t.get("guid"));
                    if (a != null && b != null) {
                        this.dW.a(queryParameter, t, a, b, 0, 0);
                    }
                }
                else {
                    this.dW.a(queryParameter, t, this.dW.M, this.dW.L, this.dW.N, 0);
                }
            }
            return true;
        }
        this.dW.a("clicked", Collections.emptyMap());
        if (this.dW.ag()) {
            return false;
        }
        final String string = this.dW.M.getAdSpace().toString();
        final Intent intent = new Intent(this.dW.J, (Class)FlurryFullscreenTakeoverActivity.class);
        intent.putExtra("url", str);
        if (!this.dW.K.a(this.dW.J, intent, string)) {
            db.d(this.dW.d, "Unable to launch FlurryFullscreenTakeoverActivity, falling back to browser. Fix by declaring this Activity in your AndroidManifest.xml");
            this.dW.K.b(this.dW.J, str, string);
        }
        return true;
    }
}
