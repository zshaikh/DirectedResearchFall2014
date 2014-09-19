package com.fusepowered.m2.m2l;

import java.util.*;
import android.location.*;
import android.content.*;
import android.app.*;
import android.util.*;
import com.google.ads.*;

class GoogleAdMobInterstitial extends CustomEventInterstitial implements AdListener
{
    public static final String AD_UNIT_ID_KEY = "adUnitID";
    public static final String LOCATION_KEY = "location";
    private boolean mHasAlreadyRegisteredClick;
    private InterstitialAd mInterstitialAd;
    private CustomEventInterstitialListener mInterstitialListener;
    
    private Location extractLocation(final Map<String, Object> map) {
        final Location value = map.get("location");
        if (value instanceof Location) {
            return value;
        }
        return null;
    }
    
    private boolean extrasAreValid(final Map<String, String> map) {
        return map.containsKey("adUnitID");
    }
    
    @Deprecated
    InterstitialAd getAdMobInterstitial() {
        return this.mInterstitialAd;
    }
    
    @Override
    protected void loadInterstitial(final Context context, final CustomEventInterstitialListener mInterstitialListener, final Map<String, Object> map, final Map<String, String> map2) {
        this.mInterstitialListener = mInterstitialListener;
        if (!(context instanceof Activity)) {
            this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        if (this.extrasAreValid(map2)) {
            (this.mInterstitialAd = new InterstitialAd((Activity)context, (String)map2.get("adUnitID"))).setAdListener((AdListener)this);
            final AdRequest adRequest = new AdRequest();
            final Location location = this.extractLocation(map);
            if (location != null) {
                adRequest.setLocation(location);
            }
            this.mInterstitialAd.loadAd(adRequest);
            return;
        }
        this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
    }
    
    public void onDismissScreen(final Ad ad) {
        Log.d("MoPub", "Google AdMob interstitial ad dismissed.");
        this.mInterstitialListener.onInterstitialDismissed();
    }
    
    public void onFailedToReceiveAd(final Ad ad, final AdRequest$ErrorCode adRequest$ErrorCode) {
        Log.d("MoPub", "Google AdMob interstitial ad failed to load.");
        this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
    }
    
    @Override
    protected void onInvalidate() {
        if (this.mInterstitialAd != null) {
            this.mInterstitialAd.setAdListener((AdListener)null);
        }
    }
    
    public void onLeaveApplication(final Ad ad) {
        if (!this.mHasAlreadyRegisteredClick) {
            Log.d("MoPub", "Google AdMob interstitial ad clicked.");
            this.mHasAlreadyRegisteredClick = true;
            this.mInterstitialListener.onInterstitialClicked();
        }
    }
    
    public void onPresentScreen(final Ad ad) {
        Log.d("MoPub", "Showing Google AdMob interstitial ad.");
        this.mInterstitialListener.onInterstitialShown();
    }
    
    public void onReceiveAd(final Ad ad) {
        Log.d("MoPub", "Google AdMob interstitial ad loaded successfully.");
        this.mInterstitialListener.onInterstitialLoaded();
    }
    
    @Override
    protected void showInterstitial() {
        if (this.mInterstitialAd.isReady()) {
            this.mInterstitialAd.show();
            return;
        }
        Log.d("MoPub", "Tried to show a Google AdMob interstitial ad before it finished loading. Please try again.");
    }
}
