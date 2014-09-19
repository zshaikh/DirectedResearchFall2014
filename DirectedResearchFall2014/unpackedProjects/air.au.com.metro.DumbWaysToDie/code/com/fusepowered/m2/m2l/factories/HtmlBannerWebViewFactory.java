package com.fusepowered.m2.m2l.factories;

import android.content.*;
import com.fusepowered.m2.m2l.*;

public class HtmlBannerWebViewFactory
{
    protected static HtmlBannerWebViewFactory instance;
    
    static {
        HtmlBannerWebViewFactory.instance = new HtmlBannerWebViewFactory();
    }
    
    public static HtmlBannerWebView create(final Context context, final CustomEventBanner.CustomEventBannerListener customEventBannerListener, final boolean b, final String s, final String s2, final AdConfiguration adConfiguration) {
        return HtmlBannerWebViewFactory.instance.internalCreate(context, customEventBannerListener, b, s, s2, adConfiguration);
    }
    
    @Deprecated
    public static void setInstance(final HtmlBannerWebViewFactory instance) {
        HtmlBannerWebViewFactory.instance = instance;
    }
    
    public HtmlBannerWebView internalCreate(final Context context, final CustomEventBanner.CustomEventBannerListener customEventBannerListener, final boolean b, final String s, final String s2, final AdConfiguration adConfiguration) {
        final HtmlBannerWebView htmlBannerWebView = new HtmlBannerWebView(context, adConfiguration);
        htmlBannerWebView.init(customEventBannerListener, b, s, s2);
        return htmlBannerWebView;
    }
}
