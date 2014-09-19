package com.fusepowered.m2.m2l.factories;

import android.content.*;
import com.fusepowered.m2.m2l.*;

public class HtmlInterstitialWebViewFactory
{
    protected static HtmlInterstitialWebViewFactory instance;
    
    static {
        HtmlInterstitialWebViewFactory.instance = new HtmlInterstitialWebViewFactory();
    }
    
    public static HtmlInterstitialWebView create(final Context context, final CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, final boolean b, final String s, final String s2, final AdConfiguration adConfiguration) {
        return HtmlInterstitialWebViewFactory.instance.internalCreate(context, customEventInterstitialListener, b, s, s2, adConfiguration);
    }
    
    @Deprecated
    public static void setInstance(final HtmlInterstitialWebViewFactory instance) {
        HtmlInterstitialWebViewFactory.instance = instance;
    }
    
    public HtmlInterstitialWebView internalCreate(final Context context, final CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, final boolean b, final String s, final String s2, final AdConfiguration adConfiguration) {
        final HtmlInterstitialWebView htmlInterstitialWebView = new HtmlInterstitialWebView(context, adConfiguration);
        htmlInterstitialWebView.init(customEventInterstitialListener, b, s, s2);
        return htmlInterstitialWebView;
    }
}
