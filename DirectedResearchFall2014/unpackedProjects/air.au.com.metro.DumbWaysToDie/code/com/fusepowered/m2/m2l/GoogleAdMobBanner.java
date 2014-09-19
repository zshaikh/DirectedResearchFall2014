package com.fusepowered.m2.m2l;

import java.util.*;
import android.location.*;
import android.content.*;
import android.app.*;
import android.util.*;
import com.google.ads.*;
import com.fusepowered.m2.m2l.util.*;
import android.view.*;

class GoogleAdMobBanner extends CustomEventBanner implements AdListener
{
    public static final String AD_HEIGHT_KEY = "adHeight";
    public static final String AD_UNIT_ID_KEY = "adUnitID";
    public static final String AD_WIDTH_KEY = "adWidth";
    public static final String LOCATION_KEY = "location";
    private AdView mAdMobView;
    private CustomEventBannerListener mBannerListener;
    
    private AdSize calculateAdSize(final int n, final int n2) {
        if (n <= AdSize.BANNER.getWidth() && n2 <= AdSize.BANNER.getHeight()) {
            return AdSize.BANNER;
        }
        if (n <= AdSize.IAB_MRECT.getWidth() && n2 <= AdSize.IAB_MRECT.getHeight()) {
            return AdSize.IAB_MRECT;
        }
        if (n <= AdSize.IAB_BANNER.getWidth() && n2 <= AdSize.IAB_BANNER.getHeight()) {
            return AdSize.IAB_BANNER;
        }
        if (n <= AdSize.IAB_LEADERBOARD.getWidth() && n2 <= AdSize.IAB_LEADERBOARD.getHeight()) {
            return AdSize.IAB_LEADERBOARD;
        }
        return null;
    }
    
    private Location extractLocation(final Map<String, Object> map) {
        final Location value = map.get("location");
        if (value instanceof Location) {
            return value;
        }
        return null;
    }
    
    private boolean extrasAreValid(final Map<String, String> map) {
        try {
            Integer.parseInt(map.get("adWidth"));
            Integer.parseInt(map.get("adHeight"));
            return map.containsKey("adUnitID");
        }
        catch (NumberFormatException ex) {
            return false;
        }
    }
    
    @Deprecated
    AdView getAdMobView() {
        return this.mAdMobView;
    }
    
    @Override
    protected void loadBanner(final Context context, final CustomEventBannerListener mBannerListener, final Map<String, Object> map, final Map<String, String> map2) {
        this.mBannerListener = mBannerListener;
        if (!(context instanceof Activity)) {
            this.mBannerListener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        if (!this.extrasAreValid(map2)) {
            this.mBannerListener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        final String s = map2.get("adUnitID");
        final int int1 = Integer.parseInt(map2.get("adWidth"));
        final int int2 = Integer.parseInt(map2.get("adHeight"));
        final AdSize calculateAdSize = this.calculateAdSize(int1, int2);
        if (calculateAdSize == null) {
            Log.d("MoPub", "Unsupported AdMob ad size: " + int1 + "x" + int2);
            this.mBannerListener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        (this.mAdMobView = new AdView((Activity)context, calculateAdSize, s)).setAdListener((AdListener)this);
        final AdRequest adRequest = new AdRequest();
        final Location location = this.extractLocation(map);
        if (location != null) {
            adRequest.setLocation(location);
        }
        this.mAdMobView.loadAd(adRequest);
    }
    
    public void onDismissScreen(final Ad ad) {
    }
    
    public void onFailedToReceiveAd(final Ad ad, final AdRequest$ErrorCode adRequest$ErrorCode) {
        Log.d("MoPub", "Google AdMob banner ad failed to load.");
        this.mBannerListener.onBannerFailed(MoPubErrorCode.NETWORK_NO_FILL);
    }
    
    @Override
    protected void onInvalidate() {
        this.mAdMobView.setAdListener((AdListener)null);
        Views.removeFromParent((View)this.mAdMobView);
        this.mAdMobView.destroy();
    }
    
    public void onLeaveApplication(final Ad ad) {
    }
    
    public void onPresentScreen(final Ad ad) {
        Log.d("MoPub", "Google AdMob banner ad clicked.");
        this.mBannerListener.onBannerClicked();
    }
    
    public void onReceiveAd(final Ad ad) {
        Log.d("MoPub", "Google AdMob banner ad loaded successfully. Showing ad...");
        this.mBannerListener.onBannerLoaded((View)this.mAdMobView);
    }
}
