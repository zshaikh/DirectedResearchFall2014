package com.google.ads.util;

import android.annotation.*;
import android.graphics.*;
import android.view.*;
import android.app.*;
import android.widget.*;
import android.content.*;
import java.util.*;
import com.google.ads.*;
import android.webkit.*;
import java.net.*;
import java.io.*;
import com.google.ads.internal.*;

@TargetApi(11)
public class g
{
    public static void a(final View view) {
        view.setLayerType(1, (Paint)null);
    }
    
    public static void a(final Window window) {
        window.setFlags(16777216, 16777216);
    }
    
    public static void a(final WebSettings webSettings, final n n) {
        final Context context = n.f.a();
        final m.a a = n.d.a().b.a();
        webSettings.setAppCacheEnabled(true);
        webSettings.setAppCacheMaxSize((long)a.i.a());
        webSettings.setAppCachePath(new File(context.getCacheDir(), "admob").getAbsolutePath());
        webSettings.setDatabaseEnabled(true);
        webSettings.setDatabasePath(context.getDatabasePath("admob").getAbsolutePath());
        webSettings.setDomStorageEnabled(true);
        webSettings.setSupportZoom(true);
        webSettings.setBuiltInZoomControls(true);
        webSettings.setDisplayZoomControls(false);
    }
    
    public static void b(final View view) {
        view.setLayerType(0, (Paint)null);
    }
    
    public static class a extends WebChromeClient
    {
        private final n a;
        
        public a(final n a) {
            super();
            this.a = a;
        }
        
        private static void a(final AlertDialog$Builder alertDialog$Builder, final Context context, final String text, final String text2, final JsPromptResult jsPromptResult) {
            final LinearLayout view = new LinearLayout(context);
            view.setOrientation(1);
            final TextView textView = new TextView(context);
            textView.setText((CharSequence)text);
            final EditText editText = new EditText(context);
            editText.setText((CharSequence)text2);
            view.addView((View)textView);
            view.addView((View)editText);
            alertDialog$Builder.setView((View)view).setPositiveButton(17039370, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                public void onClick(final DialogInterface dialogInterface, final int n) {
                    jsPromptResult.confirm(editText.getText().toString());
                }
            }).setNegativeButton(17039360, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                public void onClick(final DialogInterface dialogInterface, final int n) {
                    jsPromptResult.cancel();
                }
            }).setOnCancelListener((DialogInterface$OnCancelListener)new DialogInterface$OnCancelListener() {
                public void onCancel(final DialogInterface dialogInterface) {
                    jsPromptResult.cancel();
                }
            }).create().show();
        }
        
        private static void a(final AlertDialog$Builder alertDialog$Builder, final String message, final JsResult jsResult) {
            alertDialog$Builder.setMessage((CharSequence)message).setPositiveButton(17039370, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                public void onClick(final DialogInterface dialogInterface, final int n) {
                    jsResult.confirm();
                }
            }).setNegativeButton(17039360, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                public void onClick(final DialogInterface dialogInterface, final int n) {
                    jsResult.cancel();
                }
            }).setOnCancelListener((DialogInterface$OnCancelListener)new DialogInterface$OnCancelListener() {
                public void onCancel(final DialogInterface dialogInterface) {
                    jsResult.cancel();
                }
            }).create().show();
        }
        
        private static boolean a(final WebView webView, final String title, final String s, final String s2, final JsResult jsResult, final JsPromptResult jsPromptResult, final boolean b) {
            if (webView instanceof AdWebView) {
                final AdActivity i = ((AdWebView)webView).i();
                if (i != null) {
                    final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)i);
                    alertDialog$Builder.setTitle((CharSequence)title);
                    if (b) {
                        a(alertDialog$Builder, (Context)i, s, s2, jsPromptResult);
                    }
                    else {
                        a(alertDialog$Builder, s, jsResult);
                    }
                    return true;
                }
            }
            return false;
        }
        
        public void onCloseWindow(final WebView webView) {
            if (webView instanceof AdWebView) {
                ((AdWebView)webView).f();
            }
        }
        
        public boolean onConsoleMessage(final ConsoleMessage consoleMessage) {
            final String string = "JS: " + consoleMessage.message() + " (" + consoleMessage.sourceId() + ":" + consoleMessage.lineNumber() + ")";
            switch (g$1.a[consoleMessage.messageLevel().ordinal()]) {
                case 1: {
                    com.google.ads.util.b.b(string);
                    break;
                }
                case 2: {
                    com.google.ads.util.b.e(string);
                    break;
                }
                case 3:
                case 4: {
                    com.google.ads.util.b.c(string);
                    break;
                }
                case 5: {
                    com.google.ads.util.b.a(string);
                    break;
                }
            }
            return super.onConsoleMessage(consoleMessage);
        }
        
        public void onExceededDatabaseQuota(final String s, final String s2, final long n, final long n2, final long n3, final WebStorage$QuotaUpdater webStorage$QuotaUpdater) {
            final m.a a = this.a.d.a().b.a();
            final long n4 = a.l.a() - n3;
            if (n4 <= 0L) {
                webStorage$QuotaUpdater.updateQuota(n);
                return;
            }
            long min;
            if (n == 0L) {
                if (n2 <= n4 && n2 <= a.m.a()) {
                    min = n2;
                }
                else {
                    min = 0L;
                }
            }
            else if (n2 == 0L) {
                min = Math.min(n + Math.min(a.n.a(), n4), a.m.a());
            }
            else if (n2 <= Math.min(a.m.a() - n, n4)) {
                min = n + n2;
            }
            else {
                min = n;
            }
            webStorage$QuotaUpdater.updateQuota(min);
        }
        
        public boolean onJsAlert(final WebView webView, final String s, final String s2, final JsResult jsResult) {
            return a(webView, s, s2, null, jsResult, null, false);
        }
        
        public boolean onJsBeforeUnload(final WebView webView, final String s, final String s2, final JsResult jsResult) {
            return a(webView, s, s2, null, jsResult, null, false);
        }
        
        public boolean onJsConfirm(final WebView webView, final String s, final String s2, final JsResult jsResult) {
            return a(webView, s, s2, null, jsResult, null, false);
        }
        
        public boolean onJsPrompt(final WebView webView, final String s, final String s2, final String s3, final JsPromptResult jsPromptResult) {
            return a(webView, s, s2, s3, null, jsPromptResult, true);
        }
        
        public void onReachedMaxAppCacheSize(final long n, final long n2, final WebStorage$QuotaUpdater webStorage$QuotaUpdater) {
            final m.a a = this.a.d.a().b.a();
            final long n3 = a.k.a() - n2;
            final long n4 = n + a.j.a();
            if (n3 < n4) {
                webStorage$QuotaUpdater.updateQuota(0L);
                return;
            }
            webStorage$QuotaUpdater.updateQuota(n4);
        }
        
        public void onShowCustomView(final View view, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
            webChromeClient$CustomViewCallback.onCustomViewHidden();
        }
    }
    
    public static class b extends i
    {
        public b(final d d, final Map<String, o> map, final boolean b, final boolean b2) {
            super(d, map, b, b2);
        }
        
        private static WebResourceResponse a(final String spec, final Context context) throws IOException {
            final HttpURLConnection httpURLConnection = (HttpURLConnection)new URL(spec).openConnection();
            try {
                AdUtil.a(httpURLConnection, context.getApplicationContext());
                httpURLConnection.connect();
                return new WebResourceResponse("application/javascript", "UTF-8", (InputStream)new ByteArrayInputStream(AdUtil.a(new InputStreamReader(httpURLConnection.getInputStream())).getBytes("UTF-8")));
            }
            finally {
                httpURLConnection.disconnect();
            }
        }
        
        public WebResourceResponse shouldInterceptRequest(final WebView webView, final String pathname) {
            try {
                if (!"mraid.js".equalsIgnoreCase(new File(pathname).getName())) {
                    goto Label_0157;
                }
                final c k = this.a.k();
                if (k != null) {
                    k.c(true);
                }
                else {
                    this.a.a(true);
                }
                final m.a a = this.a.i().d.a().b.a();
                if (!this.a.i().b() && this.b) {
                    final String str = a.f.a();
                    com.google.ads.util.b.a("shouldInterceptRequest(" + str + ")");
                    return a(str, webView.getContext());
                }
                goto Label_0215;
            }
            catch (IOException ex) {
                com.google.ads.util.b.d("IOException fetching MRAID JS.", ex);
            }
            catch (Throwable t) {
                com.google.ads.util.b.d("An unknown error occurred fetching MRAID JS.", t);
                goto Label_0157;
            }
        }
    }
}
