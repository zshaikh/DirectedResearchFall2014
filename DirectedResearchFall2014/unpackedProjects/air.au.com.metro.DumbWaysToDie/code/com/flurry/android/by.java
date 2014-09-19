package com.flurry.android;

import android.webkit.*;

final class by implements BasicWebView$BasicWebViewFullScreenTransitionHandler$BasicWebViewFullScreenTransitionCallback
{
    private WebChromeClient$CustomViewCallback em;
    
    public by(final WebChromeClient$CustomViewCallback em) {
        super();
        this.em = em;
    }
    
    @Override
    public final void onBasicWebViewTransitionFromFullScreenFinished() {
        if (this.em != null) {
            this.em.onCustomViewHidden();
        }
    }
}
