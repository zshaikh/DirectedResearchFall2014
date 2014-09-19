package com.adobe.air;

import android.app.*;
import android.os.*;
import android.webkit.*;
import android.net.*;
import android.content.*;
import android.view.*;

public class AdobeAIR extends Activity
{
    private static final String DYNAMIC_URL = "http://www.adobe.com/airgames/";
    private static final String STATIC_URL = "file:///android_res/raw/startga.html";
    private static String sRootServer;
    private boolean mOffline;
    private WebView mWebView;
    
    static {
        AdobeAIR.sRootServer = null;
    }
    
    public AdobeAIR() {
        super();
        this.mWebView = null;
        this.mOffline = false;
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        (this.mWebView = new WebView((Context)this)).setWebViewClient((WebViewClient)new WebViewClient() {
            public void onReceivedError(final WebView webView, final int n, final String s, final String s2) {
                AdobeAIR.this.mOffline = true;
                AdobeAIR.this.mWebView.loadUrl("file:///android_res/raw/startga.html");
            }
            
            public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
                if (s != null) {
                    final Uri parse = Uri.parse(s);
                    final boolean equals = s.equals("http://www.adobe.com/airgames/");
                    if (AdobeAIR.sRootServer == null && parse != null && !AdobeAIR.this.mOffline && !equals) {
                        AdobeAIR.sRootServer = parse.getHost();
                    }
                    if (!AdobeAIR.this.mOffline && parse != null && parse.getScheme() != null && (parse.getScheme().equalsIgnoreCase("http") || parse.getScheme().equalsIgnoreCase("https")) && (AdobeAIR.sRootServer == null || AdobeAIR.sRootServer.equals(parse.getHost()) || equals)) {
                        return false;
                    }
                    if (parse == null) {
                        return true;
                    }
                    try {
                        if (parse.getScheme() != null) {
                            AdobeAIR.this.startActivity(new Intent("android.intent.action.VIEW", parse));
                        }
                        return true;
                    }
                    catch (Exception ex) {
                        return true;
                    }
                }
                return false;
            }
        });
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        this.mWebView.getSettings().setBuiltInZoomControls(true);
        this.mWebView.getSettings().setDomStorageEnabled(true);
        this.mWebView.getSettings().setDatabaseEnabled(true);
        this.mWebView.getSettings().setDatabasePath(this.getApplicationContext().getFilesDir().getPath() + "/databases/");
        this.setContentView((View)this.mWebView);
        this.mWebView.loadUrl("http://www.adobe.com/airgames/");
    }
    
    public void onResume() {
        super.onResume();
        if (this.mOffline) {
            this.mOffline = false;
            this.mWebView.loadUrl("http://www.adobe.com/airgames/");
        }
    }
}
