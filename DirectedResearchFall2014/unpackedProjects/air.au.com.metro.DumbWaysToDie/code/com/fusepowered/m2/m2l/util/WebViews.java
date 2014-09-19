package com.fusepowered.m2.m2l.util;

import android.util.*;
import android.webkit.*;

public class WebViews
{
    private static final String LOGTAG = "MoPub - WebViewsUtil";
    
    public static void onPause(final WebView obj) {
        try {
            WebView.class.getDeclaredMethod("onPause", (Class<?>[])new Class[0]).invoke(obj, new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public static void onResume(final WebView obj) {
        try {
            WebView.class.getDeclaredMethod("onResume", (Class<?>[])new Class[0]).invoke(obj, new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public static void setDisableJSChromeClient(final WebView webView) {
        webView.setWebChromeClient((WebChromeClient)new WebChromeClient() {
            public boolean onJsAlert(final WebView webView, final String s, final String s2, final JsResult jsResult) {
                Log.d("MoPub - WebViewsUtil", s2);
                return true;
            }
            
            public boolean onJsBeforeUnload(final WebView webView, final String s, final String s2, final JsResult jsResult) {
                Log.d("MoPub - WebViewsUtil", s2);
                return true;
            }
            
            public boolean onJsConfirm(final WebView webView, final String s, final String s2, final JsResult jsResult) {
                Log.d("MoPub - WebViewsUtil", s2);
                return true;
            }
            
            public boolean onJsPrompt(final WebView webView, final String s, final String s2, final String s3, final JsPromptResult jsPromptResult) {
                Log.d("MoPub - WebViewsUtil", s2);
                return true;
            }
        });
    }
}
