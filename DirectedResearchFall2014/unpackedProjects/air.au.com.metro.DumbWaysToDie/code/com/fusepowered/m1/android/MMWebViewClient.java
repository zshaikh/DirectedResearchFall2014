package com.fusepowered.m1.android;

import java.util.concurrent.*;
import android.webkit.*;
import android.graphics.*;
import java.lang.ref.*;
import android.content.*;

abstract class MMWebViewClient extends WebViewClient
{
    private ExecutorService cachedExecutor;
    boolean isLastMMCommandResize;
    MMWebViewClientListener mmWebViewClientListener;
    HttpRedirection.RedirectionListenerImpl redirectListenerImpl;
    
    MMWebViewClient(final MMWebViewClientListener mmWebViewClientListener, final HttpRedirection.RedirectionListenerImpl redirectListenerImpl) {
        super();
        this.cachedExecutor = Executors.newCachedThreadPool();
        this.mmWebViewClientListener = mmWebViewClientListener;
        this.redirectListenerImpl = redirectListenerImpl;
    }
    
    public void onPageFinished(final WebView webView, final String str) {
        final MMWebView mraidState = (MMWebView)webView;
        if (!mraidState.isOriginalUrl(str)) {
            this.mmWebViewClientListener.onPageFinished(str);
            MMSDK.Log.d("onPageFinished webview: " + mraidState.toString() + "url is " + str);
            mraidState.setAdProperties(this.redirectListenerImpl.getAdProperties());
            this.setMraidState(mraidState);
        }
        super.onPageFinished(webView, str);
    }
    
    public void onPageStarted(final WebView webView, final String s, final Bitmap bitmap) {
        MMSDK.Log.d("onPageStarted: %s", s);
        this.mmWebViewClientListener.onPageStarted(s);
        final MMWebView mmWebView = (MMWebView)webView;
        mmWebView.mraidState = "loading";
        mmWebView.requiresPreAdSizeFix = false;
        super.onPageStarted(webView, s, bitmap);
    }
    
    public void onReceivedError(final WebView webView, final int i, final String s, final String s2) {
        MMSDK.Log.e("Error: %s %s %s", i, s, s2);
    }
    
    abstract void setMraidState(final MMWebView p0);
    
    public boolean shouldOverrideUrlLoading(final WebView obj, final String url) {
        final MMWebView mmWebView = (MMWebView)obj;
        if (!mmWebView.isOriginalUrl(url)) {
            MMSDK.Log.v("@@@@@@@@@@SHOULDOVERRIDELOADING@@@@@@@@@@@@@ Url is " + url + " for " + obj);
            if (url.substring(0, 6).equalsIgnoreCase("mmsdk:")) {
                MMSDK.Log.v("Running JS bridge command: " + url);
                final MMCommand mmCommand = new MMCommand((MMWebView)obj, url);
                this.isLastMMCommandResize = mmCommand.isResizeCommand();
                this.cachedExecutor.execute(mmCommand);
                return true;
            }
            if (this.redirectListenerImpl.isExpandingToUrl()) {
                return false;
            }
            this.redirectListenerImpl.url = url;
            this.redirectListenerImpl.weakContext = new WeakReference<Context>(obj.getContext());
            this.redirectListenerImpl.creatorAdImplInternalId = mmWebView.creatorAdImplId;
            HttpRedirection.startActivityFromUri(this.redirectListenerImpl);
        }
        return true;
    }
    
    abstract static class MMWebViewClientListener
    {
        void onPageFinished(final String s) {
        }
        
        void onPageStarted(final String s) {
        }
    }
}
