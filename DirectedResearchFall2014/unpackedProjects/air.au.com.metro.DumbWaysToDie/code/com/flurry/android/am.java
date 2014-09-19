package com.flurry.android;

import android.webkit.*;
import android.content.*;
import android.view.*;
import android.widget.*;

final class am extends WebChromeClient
{
    private /* synthetic */ cl e;
    
    private am(final cl e, final byte b) {
        this.e = e;
        super();
    }
    
    public final void onHideCustomView() {
        if (this.e.eM != null) {
            this.e.eM.Z();
        }
        this.e.eG = false;
    }
    
    public final void onShowCustomView(final View view, final int n, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
        this.e.eG = true;
        if (this.e.eM != null) {
            this.e.eM.a(this.e, view, n, new by(webChromeClient$CustomViewCallback));
        }
    }
    
    public final void onShowCustomView(final View view, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
        this.e.eG = true;
        if (this.e.eM != null) {
            final bh d = this.e.eM;
            d.a(this.e, view, d.h.getRequestedOrientation(), new by(webChromeClient$CustomViewCallback));
        }
    }
}
