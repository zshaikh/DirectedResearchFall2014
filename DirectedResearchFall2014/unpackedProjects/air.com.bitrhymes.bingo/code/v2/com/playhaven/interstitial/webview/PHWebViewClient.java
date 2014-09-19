package v2.com.playhaven.interstitial.webview;

import v2.com.playhaven.configuration.*;
import v2.com.playhaven.model.*;
import java.lang.ref.*;
import v2.com.playhaven.interstitial.jsbridge.*;
import v2.com.playhaven.utils.*;
import v2.com.playhaven.requests.crashreport.*;
import android.webkit.*;
import v2.com.playhaven.interstitial.requestbridge.bridges.*;
import android.os.*;

public class PHWebViewClient extends WebViewClient
{
    private PHJSBridge bridge;
    private PHConfiguration config;
    private PHContent content;
    private WeakReference<ManipulatableContentDisplayer> contentDisplayer;
    
    public PHWebViewClient(final ManipulatableContentDisplayer referent, final PHJSBridge bridge, final PHContent content) {
        super();
        this.bridge = bridge;
        this.contentDisplayer = new WeakReference<ManipulatableContentDisplayer>(referent);
        this.config = new PHConfiguration();
        this.content = content;
    }
    
    private boolean routePlayhavenCallback(final String str) {
        PHStringUtil.log("Received webview callback: " + str);
        try {
            if (this.bridge.hasRoute(str)) {
                this.bridge.route(str);
                return true;
            }
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHWebViewClient - url routing", PHCrashReport.Urgency.critical);
        }
        return false;
    }
    
    public boolean doesntHaveContentDisplayer() {
        return this.contentDisplayer == null || this.contentDisplayer.get() == null;
    }
    
    public void onLoadResource(final WebView webView, final String s) {
        try {
            if (s.startsWith("ph://")) {
                this.routePlayhavenCallback(s);
            }
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHWebViewClient - onLoadResource", PHCrashReport.Urgency.critical);
        }
    }
    
    public void onPageFinished(final WebView webView, final String s) {
        if (!this.doesntHaveContentDisplayer() && s.startsWith(this.content.url.toString())) {
            final String string = ContentRequestToInterstitialBridge.InterstitialEvent.Loaded.toString();
            final Bundle bundle = new Bundle();
            bundle.putParcelable(ContentRequestToInterstitialBridge.InterstitialEventArgument.Content.getKey(), (Parcelable)this.content);
            this.contentDisplayer.get().sendEventToRequester(string, bundle);
        }
    }
    
    public void onReceivedError(final WebView webView, final int i, final String s, final String s2) {
        if (this.doesntHaveContentDisplayer()) {
            return;
        }
        try {
            webView.loadUrl("");
            final String format = String.format("Error loading template at url: %s Code: %d Description: %s", s2, i, s);
            PHStringUtil.log(format);
            final Bundle bundle = new Bundle();
            final String string = ContentRequestToInterstitialBridge.InterstitialEvent.Failed.toString();
            bundle.putString(string, format);
            this.contentDisplayer.get().sendEventToRequester(string, bundle);
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHWebViewClient - onReceivedError", PHCrashReport.Urgency.low);
        }
    }
    
    public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
        try {
            return this.routePlayhavenCallback(s);
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHWebViewClient - shouldOverrideUrlLoading", PHCrashReport.Urgency.critical);
            return false;
        }
    }
}
