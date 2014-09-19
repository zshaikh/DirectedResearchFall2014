package com.fusepowered.m2.m2l;

import java.util.*;
import android.content.*;
import android.net.*;
import com.fusepowered.m2.m2l.factories.*;
import android.view.*;

public class HtmlBanner extends CustomEventBanner
{
    private HtmlBannerWebView mHtmlBannerWebView;
    
    private boolean extrasAreValid(final Map<String, String> map) {
        return map.containsKey("Html-Response-Body");
    }
    
    @Override
    protected void loadBanner(final Context context, final CustomEventBannerListener customEventBannerListener, final Map<String, Object> map, final Map<String, String> map2) {
        if (this.extrasAreValid(map2)) {
            final String decode = Uri.decode((String)map2.get("Html-Response-Body"));
            AdViewController.setShouldHonorServerDimensions((View)(this.mHtmlBannerWebView = HtmlBannerWebViewFactory.create(context, customEventBannerListener, Boolean.valueOf(map2.get("Scrollable")), map2.get("Redirect-Url"), map2.get("Clickthrough-Url"), AdConfiguration.extractFromMap(map))));
            this.mHtmlBannerWebView.loadHtmlResponse(decode);
            return;
        }
        customEventBannerListener.onBannerFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
    }
    
    @Override
    protected void onInvalidate() {
        if (this.mHtmlBannerWebView != null) {
            this.mHtmlBannerWebView.destroy();
        }
    }
}
