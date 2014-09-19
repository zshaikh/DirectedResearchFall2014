package com.flurry.android;

import android.graphics.*;
import android.webkit.*;
import android.content.*;
import android.view.*;
import android.widget.*;

final class c extends WebViewClient
{
    private /* synthetic */ cl e;
    
    private c(final cl e, final byte b) {
        this.e = e;
        super();
    }
    
    public final void onPageFinished(final WebView webView, final String str) {
        new StringBuilder().append("onPageFinished: url = ").append(str).toString();
        if (str == null || webView == null || webView != this.e.du) {
            return;
        }
        this.e.eN = false;
    }
    
    public final void onPageStarted(final WebView webView, final String str, final Bitmap bitmap) {
        new StringBuilder().append("onPageStarted: url = ").append(str).toString();
        if (str == null || webView == null || webView != this.e.du) {
            return;
        }
        if (this.e.eN) {
            final f b = this.e.eK;
            boolean a = false;
            if (b != null) {
                a = this.e.eK.a(str, this.e.eN);
            }
            if (a) {
                webView.stopLoading();
            }
        }
        this.e.eN = true;
    }
    
    public final boolean shouldOverrideUrlLoading(final WebView webView, final String str) {
        new StringBuilder().append("shouldOverrideUrlLoading: url = ").append(str).toString();
        if (str == null || webView == null || webView != this.e.du) {
            return false;
        }
        final boolean b = this.e.eK != null && this.e.eK.a(str, this.e.eN);
        this.e.eN = false;
        return b;
    }
}
