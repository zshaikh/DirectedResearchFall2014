package com.applovin.impl.adview;

import com.applovin.sdk.*;
import android.content.*;
import android.view.*;
import android.webkit.*;
import android.graphics.*;

class v extends WebView
{
    private final AppLovinLogger a;
    private AppLovinAd b;
    private boolean c;
    
    v(final AppLovinAdSize appLovinAdSize, final x webViewClient, final AppLovinSdk appLovinSdk, final Context context) {
        super(context);
        this.b = null;
        this.c = false;
        this.a = appLovinSdk.getLogger();
        this.setBackgroundColor(0);
        final WebSettings settings = this.getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        this.setWebViewClient((WebViewClient)webViewClient);
        this.setWebChromeClient((WebChromeClient)new u(appLovinSdk));
        this.setVerticalScrollBarEnabled(false);
        this.setHorizontalScrollBarEnabled(false);
        this.setScrollBarStyle(33554432);
        this.setOnTouchListener((View$OnTouchListener)new w(this));
    }
    
    AppLovinAd a() {
        return this.b;
    }
    
    public void a(final AppLovinAd b) {
        Label_0041: {
            if (this.c) {
                break Label_0041;
            }
            this.b = b;
            try {
                this.loadDataWithBaseURL("/", b.getHtml(), "text/html", (String)null, "");
                this.a.d("AdWebView", "AppLovinAd rendered");
                return;
                this.a.userError("AdWebView", "Ad can not be loaded in a destroyed web view");
            }
            catch (Exception ex) {}
        }
    }
    
    public void destroy() {
        this.c = true;
        try {
            super.destroy();
            this.a.d("AdWebView", "Web view destroyed");
        }
        catch (Throwable t) {
            if (this.a != null) {
                this.a.e("AdWebView", "destroy() threw exception", t);
            }
        }
    }
    
    protected void onFocusChanged(final boolean b, final int n, final Rect rect) {
        try {
            super.onFocusChanged(b, n, rect);
        }
        catch (Exception ex) {
            this.a.e("AdWebView", "onFocusChanged() threw exception", ex);
        }
    }
    
    protected void onScrollChanged(final int n, final int n2, final int n3, final int n4) {
    }
    
    public void onWindowFocusChanged(final boolean b) {
        try {
            super.onWindowFocusChanged(b);
        }
        catch (Exception ex) {
            this.a.e("AdWebView", "onWindowFocusChanged() threw exception", ex);
        }
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        try {
            super.onWindowVisibilityChanged(n);
        }
        catch (Exception ex) {
            this.a.e("AdWebView", "onWindowVisibilityChanged() threw exception", ex);
        }
    }
    
    public boolean requestFocus(final int n, final Rect rect) {
        try {
            return super.requestFocus(n, rect);
        }
        catch (Exception ex) {
            this.a.e("AdWebView", "requestFocus() threw exception", ex);
            return false;
        }
    }
}
