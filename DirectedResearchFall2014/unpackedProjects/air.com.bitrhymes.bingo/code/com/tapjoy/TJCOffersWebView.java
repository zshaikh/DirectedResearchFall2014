package com.tapjoy;

import android.annotation.*;
import android.webkit.*;
import android.os.*;

@TargetApi(9)
public class TJCOffersWebView extends TJAdUnitView
{
    private static final String TAG = "Offers";
    private boolean isInitialLoad;
    
    public TJCOffersWebView() {
        super();
        this.isInitialLoad = true;
    }
    
    @Override
    public void handleWebViewOnPageFinished(final WebView webView, final String s) {
        if (this.isInitialLoad) {
            this.isInitialLoad = false;
            TJCOffers.getOffersNotifierResponse();
            TapjoyLog.i("Offers", "getOffersNotifierResponse fired");
            return;
        }
        super.handleWebViewOnPageFinished(webView, s);
    }
    
    @Override
    public void handleWebViewOnReceivedError(final WebView webView, final int n, final String s, final String s2) {
        if (this.isInitialLoad) {
            this.isInitialLoad = false;
            this.finish();
            TJCOffers.getOffersNotifierResponseFailed("Failed to load offers from server");
            TapjoyLog.i("Offers", "getOffersNotifierResponseFailed fired");
            return;
        }
        super.handleWebViewOnReceivedError(webView, n, s, s2);
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        TapjoyConnectCore.viewWillOpen(0);
        TapjoyConnectCore.viewDidOpen(0);
    }
    
    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (!this.skipOfferWall && this.isFinishing()) {
            TapjoyConnectCore.viewWillClose(0);
            TapjoyConnectCore.viewDidClose(0);
        }
    }
    
    @Override
    protected void onResume() {
        super.onResume();
        if (this.offersURL != null && this.webView != null && this.pauseCalled && this.redirectedActivity) {
            TapjoyLog.i("Offers", "onResume reload offer wall: " + this.offersURL);
            this.webView.loadUrl(this.offersURL);
            ++this.historyIndex;
        }
    }
}
