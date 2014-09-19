package com.fusepowered.m1.android;

class BannerWebViewClient extends MMWebViewClient
{
    BannerWebViewClient(final MMWebViewClientListener mmWebViewClientListener, final HttpRedirection.RedirectionListenerImpl redirectionListenerImpl) {
        super(mmWebViewClientListener, redirectionListenerImpl);
    }
    
    @Override
    void setMraidState(final MMWebView mmWebView) {
        mmWebView.setMraidPlacementTypeInline();
        mmWebView.setMraidDefault();
        mmWebView.setMraidReady();
    }
}
