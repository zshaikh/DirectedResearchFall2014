package com.tapjoy;

import java.util.*;
import org.json.*;
import android.webkit.*;
import android.os.*;

public class TJWebViewJSInterface
{
    private static final String TAG = "TJWebViewJSInterface";
    TJWebViewJSInterfaceNotifier notifier;
    WebView webView;
    
    public TJWebViewJSInterface(final WebView webView, final TJWebViewJSInterfaceNotifier notifier) {
        super();
        this.webView = webView;
        this.notifier = notifier;
    }
    
    public void callback(final ArrayList<?> list, final String s, final String s2) {
        try {
            this.callbackToJavaScript(new JSONArray((Collection)list), s, s2);
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    public void callback(final Map<?, ?> map, final String s, final String s2) {
        try {
            final JSONArray jsonArray = new JSONArray();
            jsonArray.put((Object)new JSONObject((Map)map));
            this.callbackToJavaScript(jsonArray, s, s2);
        }
        catch (Exception ex) {
            TapjoyLog.e("TJWebViewJSInterface", "Exception in callback to JS: " + ex.toString());
            ex.printStackTrace();
        }
    }
    
    public void callbackToJavaScript(final Object o, final String s, final String s2) {
        try {
            final JSONObject jsonObject = new JSONObject();
            jsonObject.put("arguments", o);
            if (s != null && s.length() > 0) {
                jsonObject.put("method", (Object)s);
            }
            final JSONObject obj = new JSONObject();
            if (s2 != null && s2.length() > 0) {
                obj.put("callbackId", (Object)s2);
            }
            obj.put("data", (Object)jsonObject);
            final String string = "javascript:AndroidWebViewJavascriptBridge._handleMessageFromAndroid('" + obj + "');";
            new LoadJSTask(this.webView).execute((Object[])new String[] { string });
            TapjoyLog.i("TJWebViewJSInterface", "sendToJS: " + string);
        }
        catch (Exception ex) {
            TapjoyLog.e("TJWebViewJSInterface", "Exception in callback to JS: " + ex.toString());
            ex.printStackTrace();
        }
    }
    
    @JavascriptInterface
    public void dispatchMethod(final String str) {
        TapjoyLog.i("TJWebViewJSInterface", "dispatchMethod params: " + str);
        try {
            final JSONObject jsonObject = new JSONObject(str);
            final String string = jsonObject.getJSONObject("data").getString("method");
            TapjoyLog.i("TJWebViewJSInterface", "method: " + string);
            if (this.notifier != null) {
                this.notifier.dispatchMethod(string, jsonObject);
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    private class LoadJSTask extends AsyncTask<String, Void, String>
    {
        WebView webView;
        
        public LoadJSTask(final WebView webView) {
            super();
            this.webView = webView;
        }
        
        protected String doInBackground(final String... array) {
            return array[0];
        }
        
        protected void onPostExecute(final String s) {
            if (this.webView != null) {
                this.webView.loadUrl(s);
            }
        }
    }
}
