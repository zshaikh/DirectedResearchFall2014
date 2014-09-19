package com.fusepowered.m2.m2l;

import android.content.*;
import java.util.*;

abstract class ResponseBodyInterstitial extends CustomEventInterstitial
{
    protected AdConfiguration mAdConfiguration;
    private EventForwardingBroadcastReceiver mBroadcastReceiver;
    protected Context mContext;
    
    private boolean extrasAreValid(final Map<String, String> map) {
        return map.containsKey("Html-Response-Body");
    }
    
    protected abstract void extractExtras(final Map<String, String> p0);
    
    @Override
    protected void loadInterstitial(final Context mContext, final CustomEventInterstitialListener customEventInterstitialListener, final Map<String, Object> map, final Map<String, String> map2) {
        this.mContext = mContext;
        if (this.extrasAreValid(map2)) {
            this.extractExtras(map2);
            this.mAdConfiguration = AdConfiguration.extractFromMap(map);
            (this.mBroadcastReceiver = new EventForwardingBroadcastReceiver(customEventInterstitialListener)).register(mContext);
            this.preRenderHtml(customEventInterstitialListener);
            return;
        }
        customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
    }
    
    @Override
    protected void onInvalidate() {
        if (this.mBroadcastReceiver != null) {
            this.mBroadcastReceiver.unregister();
        }
    }
    
    protected abstract void preRenderHtml(final CustomEventInterstitialListener p0);
    
    @Override
    protected abstract void showInterstitial();
}
