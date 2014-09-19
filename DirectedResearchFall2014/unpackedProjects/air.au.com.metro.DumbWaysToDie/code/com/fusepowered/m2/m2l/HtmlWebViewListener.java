package com.fusepowered.m2.m2l;

public interface HtmlWebViewListener
{
    void onClicked();
    
    void onCollapsed();
    
    void onFailed(MoPubErrorCode p0);
    
    void onLoaded(BaseHtmlWebView p0);
}
