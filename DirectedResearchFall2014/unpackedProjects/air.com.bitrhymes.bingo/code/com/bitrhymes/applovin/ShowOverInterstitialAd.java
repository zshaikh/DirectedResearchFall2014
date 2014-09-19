package com.bitrhymes.applovin;

import com.adobe.fre.*;
import android.content.*;
import com.applovin.adview.*;
import android.util.*;
import com.applovin.sdk.*;

public class ShowOverInterstitialAd implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            AndroidExtensionContext.setFREContext(freContext);
            if (Utils.appLovinInterestitialDialog == null) {
                Utils.appLovinInterestitialDialog = AppLovinInterstitialAd.create(AppLovinSdk.getInstance((Context)freContext.getActivity()), freContext.getActivity());
            }
            Utils.appLovinInterestitialDialog.setAdDisplayListener(new AppLovinAdDisplayListener() {
                @Override
                public void adDisplayed(final AppLovinAd appLovinAd) {
                    Log.e("AppLovin-AdLoadListener", "adDisplayed");
                }
                
                @Override
                public void adHidden(final AppLovinAd appLovinAd) {
                    Log.e("AppLovin-AdLoadListener", "adHidden ");
                    Utils.appLovinInterestitialDialog.setAdLoadListener(null);
                    Utils.appLovinInterestitialDialog = null;
                }
            });
            Utils.appLovinInterestitialDialog.show();
            return null;
        }
        catch (IllegalStateException ex) {
            ex.printStackTrace();
            freContext.dispatchStatusEventAsync("APPLOVIN_ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
