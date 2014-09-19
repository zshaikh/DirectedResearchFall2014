package com.fusepowered.m2.m2l;

import java.util.*;
import android.net.*;

class MraidInterstitial extends ResponseBodyInterstitial
{
    private String mHtmlData;
    
    @Override
    protected void extractExtras(final Map<String, String> map) {
        this.mHtmlData = Uri.decode((String)map.get("Html-Response-Body"));
    }
    
    @Override
    protected void preRenderHtml(final CustomEventInterstitialListener customEventInterstitialListener) {
        M2RActivity.preRenderHtml(this.mContext, customEventInterstitialListener, this.mHtmlData);
    }
    
    @Override
    protected void showInterstitial() {
        M2RActivity.start(this.mContext, this.mHtmlData, this.mAdConfiguration);
    }
}
