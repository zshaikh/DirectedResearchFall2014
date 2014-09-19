package com.fusepowered.m2.m2l;

import java.util.*;
import android.location.*;
import android.util.*;
import com.fusepowered.m1.android.*;
import android.content.*;

class MillennialInterstitial extends CustomEventInterstitial
{
    public static final String APID_KEY = "adUnitID";
    private MillennialBroadcastReceiver mBroadcastReceiver;
    private CustomEventInterstitialListener mInterstitialListener;
    private MMInterstitial mMillennialInterstitial;
    
    private boolean extrasAreValid(final Map<String, String> map) {
        return map.containsKey("adUnitID");
    }
    
    @Override
    protected void loadInterstitial(final Context context, final CustomEventInterstitialListener mInterstitialListener, final Map<String, Object> map, final Map<String, String> map2) {
        this.mInterstitialListener = mInterstitialListener;
        if (!this.extrasAreValid(map2)) {
            this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        final String apid = map2.get("adUnitID");
        MMSDK.initialize(context);
        MMSDK.setBroadcastEvents(true);
        (this.mBroadcastReceiver = new MillennialBroadcastReceiver()).register(context);
        final Location userLocation = map.get("location");
        if (userLocation != null) {
            MMRequest.setUserLocation(userLocation);
        }
        this.mMillennialInterstitial = new MMInterstitial(context);
        if (this.mMillennialInterstitial.isAdAvailable()) {
            Log.d("MoPub", "Millennial interstitial ad already loaded.");
            this.mInterstitialListener.onInterstitialLoaded();
            return;
        }
        this.mMillennialInterstitial.setMMRequest(new MMRequest());
        this.mMillennialInterstitial.setApid(apid);
        this.mMillennialInterstitial.fetch();
    }
    
    @Override
    protected void onInvalidate() {
        this.mMillennialInterstitial.setListener(null);
        this.mBroadcastReceiver.unregister();
    }
    
    @Override
    protected void showInterstitial() {
        if (this.mMillennialInterstitial.isAdAvailable()) {
            this.mMillennialInterstitial.display();
            return;
        }
        Log.d("MoPub", "Tried to show a Millennial interstitial ad before it finished loading. Please try again.");
    }
    
    class MillennialBroadcastReceiver extends MMBroadcastReceiver
    {
        private Context mContext;
        
        private void fetchFinished(final MoPubErrorCode moPubErrorCode) {
            if (MillennialInterstitial.this.mMillennialInterstitial.isAdAvailable()) {
                Log.d("MoPub", "Millennial interstitial ad loaded successfully.");
                MillennialInterstitial.this.mInterstitialListener.onInterstitialLoaded();
                return;
            }
            Log.d("MoPub", "Millennial interstitial ad failed to load.");
            MillennialInterstitial.this.mInterstitialListener.onInterstitialFailed(moPubErrorCode);
        }
        
        @Override
        public void displayStarted(final MMAd mmAd) {
            super.displayStarted(mmAd);
            Log.d("MoPub", "Showing Millennial interstitial ad.");
            MillennialInterstitial.this.mInterstitialListener.onInterstitialShown();
        }
        
        @Override
        public void fetchFailure(final MMAd mmAd) {
            super.fetchFailure(mmAd);
            this.fetchFinished(MoPubErrorCode.NETWORK_NO_FILL);
        }
        
        @Override
        public void fetchFinishedCaching(final MMAd mmAd) {
            super.fetchFinishedCaching(mmAd);
            this.fetchFinished(MoPubErrorCode.NETWORK_INVALID_STATE);
        }
        
        @Override
        public void getAdFailure(final MMAd mmAd) {
            super.getAdFailure(mmAd);
            Log.d("MoPub", "Millennial interstitial ad failed to load.");
            MillennialInterstitial.this.mInterstitialListener.onInterstitialFailed(MoPubErrorCode.NETWORK_NO_FILL);
        }
        
        @Override
        public void intentStarted(final MMAd mmAd, final String s) {
            super.intentStarted(mmAd, s);
            Log.d("MoPub", "Millennial interstitial ad clicked.");
            MillennialInterstitial.this.mInterstitialListener.onInterstitialClicked();
        }
        
        @Override
        public void overlayClosed(final MMAd mmAd) {
            super.overlayClosed(mmAd);
            Log.d("MoPub", "Millennial interstitial ad dismissed.");
            MillennialInterstitial.this.mInterstitialListener.onInterstitialDismissed();
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
