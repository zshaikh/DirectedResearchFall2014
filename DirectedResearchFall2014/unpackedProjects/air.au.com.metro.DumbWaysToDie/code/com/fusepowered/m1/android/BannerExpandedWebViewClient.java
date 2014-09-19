package com.fusepowered.m1.android;

class BannerExpandedWebViewClient extends MMWebViewClient
{
    BannerExpandedWebViewClient(final MMWebViewClientListener mmWebViewClientListener, final HttpRedirection.RedirectionListenerImpl redirectionListenerImpl) {
        super(mmWebViewClientListener, redirectionListenerImpl);
    }
    
    @Override
    void setMraidState(final MMWebView mmWebView) {
        mmWebView.setMraidPlacementTypeInline();
        mmWebView.setMraidExpanded();
        mmWebView.setMraidReady();
    }
}
