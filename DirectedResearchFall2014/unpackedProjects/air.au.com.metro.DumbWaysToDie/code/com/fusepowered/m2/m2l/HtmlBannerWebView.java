package com.fusepowered.m2.m2l;

import android.content.*;
import android.webkit.*;
import android.view.*;

public class HtmlBannerWebView extends BaseHtmlWebView
{
    public static final String EXTRA_AD_CLICK_DATA = "com.mopub.intent.extra.AD_CLICK_DATA";
    
    public HtmlBannerWebView(final Context context, final AdConfiguration adConfiguration) {
        super(context, adConfiguration);
    }
    
    public void init(final CustomEventBanner.CustomEventBannerListener customEventBannerListener, final boolean b, final String s, final String s2) {
        super.init(b);
        this.setWebViewClient((WebViewClient)new HtmlWebViewClient(new HtmlBannerWebViewListener(customEventBannerListener), this, s2, s));
    }
    
    static class HtmlBannerWebViewListener implements HtmlWebViewListener
    {
        private final CustomEventBanner.CustomEventBannerListener mCustomEventBannerListener;
        
        public HtmlBannerWebViewListener(final CustomEventBanner.CustomEventBannerListener mCustomEventBannerListener) {
            super();
            this.mCustomEventBannerListener = mCustomEventBannerListener;
        }
        
        @Override
        public void onClicked() {
            this.mCustomEventBannerListener.onBannerClicked();
        }
        
        @Override
        public void onCollapsed() {
            this.mCustomEventBannerListener.onBannerCollapsed();
        }
        
        @Override
        public void onFailed(final MoPubErrorCode moPubErrorCode) {
            this.mCustomEventBannerListener.onBannerFailed(moPubErrorCode);
        }
        
        @Override
        public void onLoaded(final BaseHtmlWebView baseHtmlWebView) {
            this.mCustomEventBannerListener.onBannerLoaded((View)baseHtmlWebView);
        }
    }
}
