package com.fusepowered.a1.webapp;

import android.app.*;
import android.content.*;
import com.fusepowered.a1.properties.*;
import com.fusepowered.a1.*;
import android.util.*;
import android.os.*;
import android.graphics.drawable.*;
import java.io.*;
import android.annotation.*;
import org.json.*;
import com.fusepowered.a1.data.*;
import android.view.*;
import android.graphics.*;
import android.webkit.*;

public class ApplifierImpactWebView extends WebView
{
    private String _currentWebView;
    private IApplifierImpactWebViewListener _listener;
    private String _url;
    private boolean _webAppLoaded;
    private ApplifierImpactWebBridge _webBridge;
    
    public ApplifierImpactWebView(final Activity activity, final IApplifierImpactWebViewListener applifierImpactWebViewListener, final ApplifierImpactWebBridge applifierImpactWebBridge) {
        super((Context)activity);
        this._url = null;
        this._listener = null;
        this._webAppLoaded = false;
        this._webBridge = null;
        this._currentWebView = "start";
        ApplifierImpactUtils.Log("Loading WebView from URL: " + ApplifierImpactProperties.WEBVIEW_BASE_URL, this);
        this.init(activity, ApplifierImpactProperties.WEBVIEW_BASE_URL, applifierImpactWebViewListener, applifierImpactWebBridge);
    }
    
    public ApplifierImpactWebView(final Activity activity, final String s, final IApplifierImpactWebViewListener applifierImpactWebViewListener, final ApplifierImpactWebBridge applifierImpactWebBridge) {
        super((Context)activity);
        this._url = null;
        this._listener = null;
        this._webAppLoaded = false;
        this._webBridge = null;
        this._currentWebView = "start";
        this.init(activity, s, applifierImpactWebViewListener, applifierImpactWebBridge);
    }
    
    public ApplifierImpactWebView(final Context context) {
        super(context);
        this._url = null;
        this._listener = null;
        this._webAppLoaded = false;
        this._webBridge = null;
        this._currentWebView = "start";
    }
    
    public ApplifierImpactWebView(final Context context, final AttributeSet set) {
        super(context, set);
        this._url = null;
        this._listener = null;
        this._webAppLoaded = false;
        this._webBridge = null;
        this._currentWebView = "start";
    }
    
    public ApplifierImpactWebView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this._url = null;
        this._listener = null;
        this._webAppLoaded = false;
        this._webBridge = null;
        this._currentWebView = "start";
    }
    
    static /* synthetic */ void access$2(final ApplifierImpactWebView applifierImpactWebView, final boolean webAppLoaded) {
        applifierImpactWebView._webAppLoaded = webAppLoaded;
    }
    
    private void init(final Activity activity, final String url, final IApplifierImpactWebViewListener listener, final ApplifierImpactWebBridge webBridge) {
        this._listener = listener;
        this._url = url;
        this._webBridge = webBridge;
        this.setupApplifierView();
        this.loadUrl(this._url);
        if (Build$VERSION.SDK_INT > 8) {
            this.setOnLongClickListener((View$OnLongClickListener)new View$OnLongClickListener() {
                public boolean onLongClick(final View view) {
                    return true;
                }
            });
            this.setLongClickable(false);
        }
    }
    
    @SuppressLint({ "SetJavaScriptEnabled" })
    private void setupApplifierView() {
        this.getSettings().setJavaScriptEnabled(true);
        if (this._url != null && this._url.indexOf("_raw.html") != -1) {
            this.getSettings().setCacheMode(2);
            ApplifierImpactUtils.Log("startup() -> LOAD_NO_CACHE", this);
        }
        else if (Build$VERSION.SDK_INT < 17) {
            this.getSettings().setCacheMode(0);
        }
        else {
            this.getSettings().setCacheMode(-1);
        }
        final Context context = this.getContext();
        String string = null;
        if (context != null) {
            final File cacheDir = this.getContext().getCacheDir();
            string = null;
            if (cacheDir != null) {
                string = this.getContext().getCacheDir().toString();
            }
        }
        this.getSettings().setSupportZoom(false);
        this.getSettings().setBuiltInZoomControls(false);
        this.getSettings().setLightTouchEnabled(false);
        this.getSettings().setRenderPriority(WebSettings$RenderPriority.HIGH);
        this.getSettings().setSupportMultipleWindows(false);
        this.getSettings().setPluginsEnabled(false);
        this.getSettings().setAllowFileAccess(false);
        this.setHorizontalScrollBarEnabled(false);
        this.setVerticalScrollBarEnabled(false);
        this.setClickable(true);
        this.setFocusable(true);
        this.setFocusableInTouchMode(true);
        this.setInitialScale(0);
        this.setBackgroundColor(-16777216);
        this.setBackgroundDrawable((Drawable)null);
        this.setBackgroundResource(0);
        this.setWebViewClient((WebViewClient)new ApplifierViewClient((ApplifierViewClient)null));
        this.setWebChromeClient((WebChromeClient)new ApplifierViewChromeClient((ApplifierViewChromeClient)null));
        if (string != null) {
            boolean appCacheEnabled = true;
            if (Build$VERSION.SDK_INT <= 7) {
                appCacheEnabled = false;
            }
            this.getSettings().setAppCacheEnabled(appCacheEnabled);
            this.getSettings().setDomStorageEnabled(true);
            this.getSettings().setAppCacheMaxSize(10485760L);
            this.getSettings().setAppCachePath(string);
        }
        ApplifierImpactUtils.Log("Adding javascript interface", this);
        this.addJavascriptInterface((Object)this._webBridge, "applifierimpactnative");
    }
    
    public void clearWebView() {
        this._webAppLoaded = false;
        this._listener = null;
        this.setWebViewClient((WebViewClient)null);
        this.setWebChromeClient((WebChromeClient)null);
    }
    
    public String getWebViewCurrentView() {
        return this._currentWebView;
    }
    
    public void initWebApp(final JSONObject jsonObject) {
        if (!this.isWebAppLoaded()) {
            return;
        }
        final JSONObject jsonObject2 = new JSONObject();
        try {
            jsonObject2.put("campaignData", (Object)jsonObject);
            jsonObject2.put("platform", (Object)"android");
            jsonObject2.put("deviceId", (Object)ApplifierImpactDevice.getAndroidId());
            if (!"unknown".equals(ApplifierImpactDevice.getAndroidId())) {
                jsonObject2.put("androidId", (Object)ApplifierImpactDevice.getAndroidId());
            }
            if (!"unknown".equals(ApplifierImpactDevice.getAndroidSerial())) {
                jsonObject2.put("serialId", (Object)ApplifierImpactDevice.getAndroidSerial());
            }
            if (!"unknown".equals(ApplifierImpactDevice.getTelephonyId())) {
                jsonObject2.put("telephonyId", (Object)ApplifierImpactDevice.getTelephonyId());
            }
            jsonObject2.put("openUdid", (Object)ApplifierImpactDevice.getOpenUdid());
            jsonObject2.put("macAddress", (Object)ApplifierImpactDevice.getMacAddress());
            jsonObject2.put("sdkVersion", (Object)"109");
            jsonObject2.put("gameId", (Object)ApplifierImpactProperties.IMPACT_GAME_ID);
            jsonObject2.put("screenDensity", ApplifierImpactDevice.getScreenDensity());
            jsonObject2.put("screenSize", ApplifierImpactDevice.getScreenSize());
            jsonObject2.put("softwareVersion", (Object)ApplifierImpactDevice.getSoftwareVersion());
            jsonObject2.put("deviceType", ApplifierImpactDevice.getDeviceType());
            final String format = String.format("%s%s(%s);", "javascript:applifierimpact.", "init", jsonObject2.toString());
            ApplifierImpactUtils.Log("Initializing WebView with JS call: " + format, this);
            ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)new ApplifierImpactJavascriptRunner(format));
        }
        catch (Exception ex) {
            ApplifierImpactUtils.Log("Error creating webview init params", this);
        }
    }
    
    public boolean isWebAppLoaded() {
        return this._webAppLoaded;
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        switch (n) {
            default: {
                return false;
            }
            case 4: {
                ApplifierImpactUtils.Log("onKeyDown", this);
                if (this._listener != null) {
                    this._listener.onBackButtonClicked((View)this);
                }
                return true;
            }
        }
    }
    
    public void sendNativeEventToWebApp(final String s, final JSONObject jsonObject) {
        if (this.isWebAppLoaded()) {
            String string = "{}";
            if (jsonObject != null) {
                string = jsonObject.toString();
            }
            final String format = String.format("%s%s(\"%s\", %s);", "javascript:applifierimpact.", "handleNativeEvent", s, string);
            ApplifierImpactUtils.Log("Send native event to WebApp: " + format, this);
            ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)new ApplifierImpactJavascriptRunner(format));
        }
    }
    
    public void setRenderMode(final int i) {
        try {
            View.class.getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, i, null);
        }
        catch (Exception ex) {
            ApplifierImpactUtils.Log("Could not invoke setLayerType", this);
        }
    }
    
    public void setWebViewCurrentView(final String s) {
        this.setWebViewCurrentView(s, null);
    }
    
    public void setWebViewCurrentView(final String currentWebView, final JSONObject jsonObject) {
        if (!this.isWebAppLoaded()) {
            return;
        }
        String string = "{}";
        if (jsonObject != null) {
            string = jsonObject.toString();
        }
        final String format = String.format("%s%s(\"%s\", %s);", "javascript:applifierimpact.", "setView", currentWebView, string);
        this._currentWebView = currentWebView;
        ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)new ApplifierImpactJavascriptRunner(format));
        ApplifierImpactUtils.Log("Send change view to WebApp: " + format, this);
        if (jsonObject == null) {
            return;
        }
        String string2 = "test";
        while (true) {
            try {
                string2 = jsonObject.getString("action");
                ApplifierImpactUtils.Log("dataHasApiActionKey=" + jsonObject.has("action"), this);
                ApplifierImpactUtils.Log("actionEqualsWebViewApiOpen=" + string2.equals("open"), this);
                ApplifierImpactUtils.Log("isDebuggable=" + ApplifierImpactUtils.isDebuggable((Context)ApplifierImpactProperties.BASE_ACTIVITY), this);
                ApplifierImpactUtils.Log("runWebViewTests=" + ApplifierImpactProperties.RUN_WEBVIEW_TESTS, this);
                ApplifierImpactUtils.Log("testJavaScriptContents=" + ApplifierImpactProperties.TEST_JAVASCRIPT, this);
                if (jsonObject.has("action") && string2 != null && string2.equals("open") && ApplifierImpactUtils.isDebuggable((Context)ApplifierImpactProperties.BASE_ACTIVITY) && ApplifierImpactProperties.RUN_WEBVIEW_TESTS && ApplifierImpactProperties.TEST_JAVASCRIPT != null) {
                    ApplifierImpactUtils.Log("Running test-javascript: " + ApplifierImpactProperties.TEST_JAVASCRIPT, this);
                    ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)new ApplifierImpactJavascriptRunner(ApplifierImpactProperties.TEST_JAVASCRIPT));
                    ApplifierImpactProperties.RUN_WEBVIEW_TESTS = false;
                }
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    private class ApplifierImpactJavascriptRunner implements Runnable
    {
        private String _jsString;
        
        public ApplifierImpactJavascriptRunner(final String jsString) {
            super();
            this._jsString = null;
            this._jsString = jsString;
        }
        
        @Override
        public void run() {
            if (this._jsString != null) {
                try {
                    ApplifierImpactWebView.this.loadUrl(this._jsString);
                    return;
                }
                catch (Exception ex) {
                    ApplifierImpactUtils.Log("Error while processing JavaScriptString!", this);
                    return;
                }
            }
            ApplifierImpactUtils.Log("Could not process JavaScript, the string is NULL", this);
        }
    }
    
    private class ApplifierViewChromeClient extends WebChromeClient
    {
        public void onConsoleMessage(final String str, final int i, final String pathname) {
            String name = pathname;
            while (true) {
                try {
                    final File file = new File(pathname);
                    if (file != null && file.getName() != null) {
                        name = file.getName();
                    }
                    ApplifierImpactUtils.Log("JavaScript (sourceId=" + name + ", line=" + i + "): " + str, this);
                }
                catch (Exception ex) {
                    ApplifierImpactUtils.Log("Could not handle sourceId: " + ex.getMessage(), this);
                    final File file = null;
                    continue;
                }
                break;
            }
        }
        
        public void onReachedMaxAppCacheSize(final long n, final long n2, final WebStorage$QuotaUpdater webStorage$QuotaUpdater) {
            webStorage$QuotaUpdater.updateQuota(2L * n);
        }
    }
    
    private class ApplifierViewClient extends WebViewClient
    {
        public void onLoadResource(final WebView webView, final String s) {
            super.onLoadResource(webView, s);
        }
        
        public void onPageFinished(final WebView webView, final String str) {
            super.onPageFinished(webView, str);
            ApplifierImpactUtils.Log("Finished url: " + str, this);
            if (ApplifierImpactWebView.this._listener != null && !ApplifierImpactWebView.this._webAppLoaded) {
                ApplifierImpactWebView.access$2(ApplifierImpactWebView.this, true);
                ApplifierImpactWebView.this._listener.onWebAppLoaded();
            }
        }
        
        public void onReceivedError(final WebView webView, final int i, final String str, final String str2) {
            ApplifierImpactUtils.Log("ApplifierViewClient.onReceivedError() -> " + i + " (" + str2 + ") " + str, this);
            super.onReceivedError(webView, i, str, str2);
        }
        
        public boolean shouldOverrideUrlLoading(final WebView webView, final String str) {
            ApplifierImpactUtils.Log("Trying to load url: " + str, this);
            return false;
        }
    }
}
