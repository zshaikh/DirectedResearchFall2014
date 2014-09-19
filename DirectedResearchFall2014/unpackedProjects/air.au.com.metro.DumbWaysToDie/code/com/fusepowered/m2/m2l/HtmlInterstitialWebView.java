package com.fusepowered.m2.m2l;

import android.os.*;
import android.content.*;
import android.webkit.*;

public class HtmlInterstitialWebView extends BaseHtmlWebView
{
    private Handler mHandler;
    
    public HtmlInterstitialWebView(final Context context, final AdConfiguration adConfiguration) {
        super(context, adConfiguration);
        this.mHandler = new Handler();
    }
    
    private void postHandlerRunnable(final Runnable runnable) {
        this.mHandler.post(runnable);
    }
    
    void addMoPubUriJavascriptInterface(final MoPubUriJavascriptFireFinishLoadListener moPubUriJavascriptFireFinishLoadListener) {
        this.addJavascriptInterface((Object)new MoPubUriJavascriptInterface(moPubUriJavascriptFireFinishLoadListener), "mopubUriInterface");
    }
    
    public void init(final CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, final boolean b, final String s, final String s2) {
        super.init(b);
        this.setWebViewClient((WebViewClient)new HtmlWebViewClient(new HtmlInterstitialWebViewListener(customEventInterstitialListener), this, s2, s));
        this.addMoPubUriJavascriptInterface((MoPubUriJavascriptFireFinishLoadListener)new MoPubUriJavascriptFireFinishLoadListener() {
            @Override
            public void onInterstitialLoaded() {
                customEventInterstitialListener.onInterstitialLoaded();
            }
        });
    }
    
    final class MoPubUriJavascriptInterface
    {
        private final /* synthetic */ MoPubUriJavascriptFireFinishLoadListener val$moPubUriJavascriptFireFinishLoadListener;
        
        MoPubUriJavascriptInterface(final MoPubUriJavascriptFireFinishLoadListener val$moPubUriJavascriptFireFinishLoadListener) {
            this.val$moPubUriJavascriptFireFinishLoadListener = val$moPubUriJavascriptFireFinishLoadListener;
            super();
        }
        
        public boolean fireFinishLoad() {
            HtmlInterstitialWebView.this.postHandlerRunnable(new Runnable() {
                private final /* synthetic */ MoPubUriJavascriptFireFinishLoadListener val$moPubUriJavascriptFireFinishLoadListener = MoPubUriJavascriptInterface.this.val$moPubUriJavascriptFireFinishLoadListener;
                
                @Override
                public void run() {
                    this.val$moPubUriJavascriptFireFinishLoadListener.onInterstitialLoaded();
                }
            });
            return true;
        }
    }
    
    static class HtmlInterstitialWebViewListener implements HtmlWebViewListener
    {
        private final CustomEventInterstitial.CustomEventInterstitialListener mCustomEventInterstitialListener;
        
        public HtmlInterstitialWebViewListener(final CustomEventInterstitial.CustomEventInterstitialListener mCustomEventInterstitialListener) {
            super();
            this.mCustomEventInterstitialListener = mCustomEventInterstitialListener;
        }
        
        @Override
        public void onClicked() {
            this.mCustomEventInterstitialListener.onInterstitialClicked();
        }
        
        @Override
        public void onCollapsed() {
        }
        
        @Override
        public void onFailed(final MoPubErrorCode moPubErrorCode) {
            this.mCustomEventInterstitialListener.onInterstitialFailed(moPubErrorCode);
        }
        
        @Override
        public void onLoaded(final BaseHtmlWebView baseHtmlWebView) {
            this.mCustomEventInterstitialListener.onInterstitialLoaded();
        }
    }
    
    interface MoPubUriJavascriptFireFinishLoadListener
    {
        void onInterstitialLoaded();
    }
}
