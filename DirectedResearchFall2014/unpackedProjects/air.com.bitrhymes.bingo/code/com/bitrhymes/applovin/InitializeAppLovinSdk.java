package com.bitrhymes.applovin;

import com.adobe.fre.*;
import android.content.*;
import com.applovin.sdk.*;
import android.util.*;
import com.applovin.adview.*;

public class InitializeAppLovinSdk implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            AndroidExtensionContext.setFREContext(freContext);
            AppLovinSdk.initializeSdk((Context)freContext.getActivity());
            AppLovinSdk.getInstance((Context)freContext.getActivity()).getSettings().setVerboseLogging(true);
            AppLovinSdk.getInstance((Context)freContext.getActivity()).getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, new AppLovinAdLoadListener() {
                @Override
                public void adReceived(final AppLovinAd appLovinAd) {
                    Log.d("AppLovin-AdLoadListener", "Received ad");
                    final FREContext freContext = AndroidExtensionContext.getFreContext();
                    if (freContext != null) {
                        freContext.dispatchStatusEventAsync("APPLOVIN_AD_LOAD_EVENT", "1");
                    }
                }
                
                @Override
                public void failedToReceiveAd(final int i) {
                    Log.e("AppLovin-AdLoadListener", "Failed to receive ad with error code " + i);
                    final FREContext freContext = AndroidExtensionContext.getFreContext();
                    if (freContext != null) {
                        freContext.dispatchStatusEventAsync("APPLOVIN_AD_LOAD_EVENT", "0");
                    }
                }
            });
            Utils.appLovinInterestitialDialog = AppLovinInterstitialAd.create(AppLovinSdk.getInstance((Context)freContext.getActivity()), freContext.getActivity());
            return null;
        }
        catch (IllegalStateException ex) {
            ex.printStackTrace();
            freContext.dispatchStatusEventAsync("APPLOVIN_ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
