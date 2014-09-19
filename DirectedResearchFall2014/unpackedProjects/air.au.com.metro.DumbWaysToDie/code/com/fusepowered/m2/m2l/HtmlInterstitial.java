package com.fusepowered.m2.m2l;

import java.util.*;
import android.net.*;

public class HtmlInterstitial extends ResponseBodyInterstitial
{
    private String mClickthroughUrl;
    private String mHtmlData;
    private boolean mIsScrollable;
    private String mRedirectUrl;
    
    @Override
    protected void extractExtras(final Map<String, String> map) {
        this.mHtmlData = Uri.decode((String)map.get("Html-Response-Body"));
        this.mIsScrollable = Boolean.valueOf(map.get("Scrollable"));
        this.mRedirectUrl = map.get("Redirect-Url");
        this.mClickthroughUrl = map.get("Clickthrough-Url");
    }
    
    @Override
    protected void preRenderHtml(final CustomEventInterstitialListener customEventInterstitialListener) {
        M2Activity.preRenderHtml(this.mContext, customEventInterstitialListener, this.mHtmlData);
    }
    
    @Override
    protected void showInterstitial() {
        M2Activity.start(this.mContext, this.mHtmlData, this.mIsScrollable, this.mRedirectUrl, this.mClickthroughUrl, this.mAdConfiguration);
    }
}
