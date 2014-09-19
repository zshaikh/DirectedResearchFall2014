package com.fusepowered.m2.m2l;

import android.location.*;
import android.content.*;
import android.util.*;
import android.text.*;
import android.app.*;
import android.widget.*;
import android.graphics.*;
import android.view.*;
import com.fusepowered.m1.android.*;
import java.util.*;
import android.view.animation.*;
import android.os.*;

class MillennialBanner extends CustomEventBanner
{
    public static final String AD_HEIGHT_KEY = "adHeight";
    public static final String AD_WIDTH_KEY = "adWidth";
    public static final String APID_KEY = "adUnitID";
    private CustomEventBannerListener mBannerListener;
    private MillennialBroadcastReceiver mBroadcastReceiver;
    private MMAdView mMillennialAdView;
    
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
    MMAdView getMMAdView() {
        return this.mMillennialAdView;
    }
    
    @Override
    protected void loadBanner(final Context context, final CustomEventBannerListener mBannerListener, final Map<String, Object> map, final Map<String, String> map2) {
        this.mBannerListener = mBannerListener;
        if (this.extrasAreValid(map2)) {
            final String apid = map2.get("adUnitID");
            final int int1 = Integer.parseInt(map2.get("adWidth"));
            final int int2 = Integer.parseInt(map2.get("adHeight"));
            MMSDK.initialize(context);
            MMSDK.setBroadcastEvents(true);
            (this.mBroadcastReceiver = new MillennialBroadcastReceiver()).register(context);
            (this.mMillennialAdView = new MMAdView(context)).setApid(apid);
            this.mMillennialAdView.setWidth(int1);
            this.mMillennialAdView.setHeight(int2);
            final Location userLocation = map.get("location");
            if (userLocation != null) {
                MMRequest.setUserLocation(userLocation);
            }
            this.mMillennialAdView.setMMRequest(new MMRequest());
            this.mMillennialAdView.setId(MMSDK.getDefaultAdId());
            AdViewController.setShouldHonorServerDimensions((View)this.mMillennialAdView);
            this.mMillennialAdView.getAd();
            return;
        }
        this.mBannerListener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
    }
    
    @Override
    protected void onInvalidate() {
        this.mMillennialAdView.setListener(null);
        this.mBroadcastReceiver.unregister();
    }
    
    class MillennialBroadcastReceiver extends MMBroadcastReceiver
    {
        private Context mContext;
        
        @Override
        public void getAdFailure(final MMAd mmAd) {
            super.getAdFailure(mmAd);
            Log.d("MoPub", "Millennial banner ad failed to load.");
            MillennialBanner.this.mBannerListener.onBannerFailed(MoPubErrorCode.NETWORK_NO_FILL);
        }
        
        @Override
        public void getAdSuccess(final MMAd mmAd) {
            super.getAdSuccess(mmAd);
            Log.d("MoPub", "Millennial banner ad loaded successfully. Showing ad...");
            MillennialBanner.this.mBannerListener.onBannerLoaded((View)MillennialBanner.this.mMillennialAdView);
        }
        
        @Override
        public void intentStarted(final MMAd mmAd, final String s) {
            super.intentStarted(mmAd, s);
            Log.d("MoPub", "Millennial banner ad clicked.");
            MillennialBanner.this.mBannerListener.onBannerClicked();
        }
        
        void register(final Context mContext) {
            (this.mContext = mContext).registerReceiver((BroadcastReceiver)this, MMBroadcastReceiver.createIntentFilter());
        }
        
        void unregister() {
            try {
                this.mContext.unregisterReceiver((BroadcastReceiver)this);
            }
            catch (Exception ex) {
                Log.d("MoPub", "Unable to unregister MMBroadcastReceiver", (Throwable)ex);
            }
            finally {
                this.mContext = null;
            }
        }
    }
}
