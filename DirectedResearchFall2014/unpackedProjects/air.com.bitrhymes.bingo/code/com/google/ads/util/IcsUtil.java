package com.google.ads.util;

import android.annotation.*;
import com.google.ads.*;
import com.google.ads.internal.*;
import android.view.*;
import android.webkit.*;

@TargetApi(14)
public class IcsUtil
{
    public static class IcsAdWebView extends AdWebView
    {
        public IcsAdWebView(final n n, final AdSize adSize) {
            super(n, adSize);
        }
        
        public boolean canScrollHorizontally(final int n) {
            if (this.a.e.a() != null) {
                return !this.a.e.a().b();
            }
            return super.canScrollHorizontally(n);
        }
        
        public boolean canScrollVertically(final int n) {
            if (this.a.e.a() != null) {
                return !this.a.e.a().b();
            }
            return super.canScrollVertically(n);
        }
    }
    
    public static class a extends g.a
    {
        public a(final n n) {
            super(n);
        }
        
        public void onShowCustomView(final View view, final int n, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
            webChromeClient$CustomViewCallback.onCustomViewHidden();
        }
    }
}
