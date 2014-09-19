package com.bitrhymes.admobext;

import com.adobe.fre.*;
import android.util.*;
import com.google.ads.*;

public class AdMobExtAdListener implements AdListener
{
    private static final String TAG = "AdMob";
    static FREContext context;
    InterstitialAd interstitial;
    
    public AdMobExtAdListener(final FREContext context, final InterstitialAd interstitial) {
        super();
        AdMobExtAdListener.context = context;
        this.interstitial = interstitial;
    }
    
    @Override
    public void onDismissScreen(final Ad ad) {
        Log.i("AdMob", "onDismissScreen");
        if (AdMobContext.getFreContext() != null) {
            AdMobContext.getFreContext().dispatchStatusEventAsync("ON_DISPLAY_AD_EVENT", "2");
        }
    }
    
    @Override
    public void onFailedToReceiveAd(final Ad ad, final AdRequest.ErrorCode errorCode) {
        Log.i("AdMob", "onFailedToReceiveAd");
        if (AdMobContext.getFreContext() != null) {
            AdMobContext.getFreContext().dispatchStatusEventAsync("ON_RECEIVE_AD_EVENT", "0");
        }
    }
    
    @Override
    public void onLeaveApplication(final Ad ad) {
        Log.i("AdMob", "onLeaveApplication");
    }
    
    @Override
    public void onPresentScreen(final Ad ad) {
        Log.i("AdMob", "onPresentScreen");
        if (AdMobContext.getFreContext() != null) {
            AdMobContext.getFreContext().dispatchStatusEventAsync("ON_DISPLAY_AD_EVENT", "1");
        }
    }
    
    @Override
    public void onReceiveAd(final Ad ad) {
        Log.i("AdMob", "onReceiveAd");
        if (AdMobContext.getFreContext() != null && ad == this.interstitial && this.interstitial.isReady()) {
            AdMobContext.getFreContext().dispatchStatusEventAsync("ON_RECEIVE_AD_EVENT", "1");
            this.interstitial.show();
        }
    }
}
