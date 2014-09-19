package com.fusepowered.m2.m2l;

import android.content.*;
import android.support.v4.content.*;

class EventForwardingBroadcastReceiver extends BroadcastReceiver
{
    private Context mContext;
    private final CustomEventInterstitial.CustomEventInterstitialListener mCustomEventInterstitialListener;
    
    public EventForwardingBroadcastReceiver(final CustomEventInterstitial.CustomEventInterstitialListener mCustomEventInterstitialListener) {
        super();
        this.mCustomEventInterstitialListener = mCustomEventInterstitialListener;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        if (this.mCustomEventInterstitialListener != null) {
            final String action = intent.getAction();
            if (action.equals("com.mopub.action.interstitial.fail")) {
                this.mCustomEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
                return;
            }
            if (action.equals("com.mopub.action.interstitial.show")) {
                this.mCustomEventInterstitialListener.onInterstitialShown();
                return;
            }
            if (action.equals("com.mopub.action.interstitial.dismiss")) {
                this.mCustomEventInterstitialListener.onInterstitialDismissed();
                return;
            }
            if (action.equals("com.mopub.action.interstitial.click")) {
                this.mCustomEventInterstitialListener.onInterstitialClicked();
            }
        }
    }
    
    public void register(final Context mContext) {
        this.mContext = mContext;
        LocalBroadcastManager.getInstance(this.mContext).registerReceiver(this, BaseInterstitialActivity.HTML_INTERSTITIAL_INTENT_FILTER);
    }
    
    public void unregister() {
        if (this.mContext != null) {
            LocalBroadcastManager.getInstance(this.mContext).unregisterReceiver(this);
            this.mContext = null;
        }
    }
}
