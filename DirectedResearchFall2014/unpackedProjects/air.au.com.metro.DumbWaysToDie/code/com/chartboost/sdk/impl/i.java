package com.chartboost.sdk.impl;

import android.content.*;
import android.widget.*;
import android.view.*;
import android.webkit.*;
import com.chartboost.sdk.Libraries.*;
import org.json.*;

public class i extends c implements b
{
    private WebView b;
    
    public i(final Context context) {
        super(context);
        this.addView((View)(this.b = new WebView(context)), (ViewGroup$LayoutParams)new LinearLayout$LayoutParams(-1, -1));
        this.b.setBackgroundColor(0);
        this.b.setWebViewClient((WebViewClient)new WebViewClient() {
            public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
                if (s == null) {
                    return false;
                }
                if (s.contains("chartboost") && s.contains("click") && i.this.a != null) {
                    i.this.a.onClick((View)i.this);
                }
                return true;
            }
        });
    }
    
    @Override
    public int a() {
        return d.a(100, this.getContext());
    }
    
    @Override
    public void a(final JSONObject jsonObject, final int n) {
        final String optString = jsonObject.optString("html");
        if (optString == null) {
            return;
        }
        try {
            this.b.loadDataWithBaseURL("file:///android_res/", optString, "text/html", "UTF-8", (String)null);
        }
        catch (Exception ex) {}
    }
}
