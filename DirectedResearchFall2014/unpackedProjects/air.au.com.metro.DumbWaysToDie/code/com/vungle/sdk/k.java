package com.vungle.sdk;

import android.annotation.*;
import android.view.*;
import android.content.*;
import android.app.*;
import android.webkit.*;
import org.json.*;
import android.util.*;

@SuppressLint({ "SetJavaScriptEnabled" })
abstract class k extends g
{
    protected WebView b;
    protected View c;
    protected Object d;
    
    public k(final Context context, final String s, final Object d) throws g.a {
        super();
        this.d = null;
        if (s == null || s.length() == 0 || (!s.endsWith(".html") && !s.endsWith(".htm"))) {
            throw new g.a(this);
        }
        this.d = d;
        this.a(context);
        final WebView b = this.b;
        final WebSettings settings = b.getSettings();
        settings.setBuiltInZoomControls(false);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSavePassword(true);
        settings.setSaveFormData(true);
        settings.setJavaScriptEnabled(true);
        settings.setLoadsImagesAutomatically(true);
        b.setBackgroundColor(0);
        b.setBackgroundResource(0);
        b.setWebChromeClient((WebChromeClient)this.d());
        b.setWebViewClient((WebViewClient)new b());
        ((Activity)context).setRequestedOrientation(-1);
        this.b.loadUrl(s);
    }
    
    @Override
    public final View a() {
        return this.c;
    }
    
    @Override
    public final void b() {
    }
    
    @Override
    public final void c() {
    }
    
    protected abstract a d();
    
    protected abstract void e();
    
    public abstract class a extends WebChromeClient
    {
        public abstract boolean a(final String p0, final String p1);
        
        public boolean onJsPrompt(final WebView webView, final String s, final String s2, final String s3, final JsPromptResult jsPromptResult) {
            if (!s2.startsWith("showToast")) {
                return false;
            }
            final String substring = s2.substring(9);
            while (true) {
                try {
                    final JSONObject jsonObject = new JSONObject(substring);
                    final JSONArray jsonArray = jsonObject.getJSONArray("params");
                    if (!jsonObject.getString("method").equalsIgnoreCase("showToast")) {
                        jsPromptResult.confirm((String)null);
                        return true;
                    }
                    if (k.this.d == null) {
                        jsPromptResult.confirm((String)null);
                        return true;
                    }
                    final String lowerCase = jsonArray.getString(0).trim().toLowerCase();
                    String string;
                    if (jsonArray.length() > 1) {
                        string = jsonArray.getString(1);
                    }
                    else {
                        string = null;
                    }
                    this.a(lowerCase, string);
                    jsPromptResult.confirm("{\"result\":0}");
                    return true;
                }
                catch (JSONException ex) {
                    r.a("JsPrompt", "Callback executed with a bad JSON format.", (Throwable)ex);
                    continue;
                }
                break;
            }
        }
    }
    
    public final class b extends WebViewClient
    {
        public final void onPageFinished(final WebView webView, final String s) {
            if (s.toLowerCase().startsWith("javascript:")) {
                return;
            }
            String string = "javascript:function actionClicked(t,u){ var r = prompt('showToast'+JSON.stringify({method:'showToast',params:(u?[t,u]:[t])}));if(r&&typeof r === 'string'){return JSON.parse(r).result;}}; function noTapHighlight() { var l=document.getElementsByTagName('*');for(var i=0; i<l.length; i++) {l[i].style.webkitTapHighlightColor='rgba(0,0,0,0)';}};noTapHighlight();";
            final String b = VungleUtil.b(n.e());
            if (b != null) {
                string = string + "var _device_id = \"" + b.replace("\"", "\\\"") + "\";";
            }
            k.this.b.loadUrl(string);
        }
        
        public final void onReceivedError(final WebView webView, final int i, final String str, final String s) {
            Log.e("StageWeb", "Failed with Error " + i + ": " + str);
            k.this.e();
        }
    }
}
