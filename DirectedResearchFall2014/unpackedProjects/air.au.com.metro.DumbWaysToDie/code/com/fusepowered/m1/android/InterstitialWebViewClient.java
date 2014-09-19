package com.fusepowered.m1.android;

class InterstitialWebViewClient extends MMWebViewClient
{
    InterstitialWebViewClient(final MMWebViewClientListener mmWebViewClientListener, final HttpRedirection.RedirectionListenerImpl redirectionListenerImpl) {
        super(mmWebViewClientListener, redirectionListenerImpl);
    }
    
    @Override
    void setMraidState(final MMWebView mmWebView) {
        mmWebView.setMraidPlacementTypeInterstitial();
        mmWebView.setMraidDefault();
        mmWebView.setMraidReady();
    }
}
