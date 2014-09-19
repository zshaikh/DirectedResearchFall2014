package com.applovin.impl.adview;

import com.applovin.sdk.*;
import android.webkit.*;

class u extends WebChromeClient
{
    private final AppLovinLogger a;
    
    public u(final AppLovinSdk appLovinSdk) {
        super();
        this.a = appLovinSdk.getLogger();
    }
    
    public boolean onConsoleMessage(final ConsoleMessage consoleMessage) {
        this.a.d("AdWebView", consoleMessage.sourceId() + ": " + consoleMessage.lineNumber() + ": " + consoleMessage.message());
        return true;
    }
    
    public boolean onJsAlert(final WebView webView, final String s, final String str, final JsResult jsResult) {
        this.a.w("AdWebView", "Alert reported: " + str);
        return super.onJsAlert(webView, s, str, jsResult);
    }
}
