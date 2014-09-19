package com.bitrhymes.admobext;

import com.google.ads.*;
import com.adobe.fre.*;

public class ShowInterstitialAd implements FREFunction
{
    private InterstitialAd interstitial;
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            AdMobContext.setFREContext(freContext);
            this.interstitial = new InterstitialAd(freContext.getActivity(), array[0].getAsString());
            final AdRequest adRequest = new AdRequest();
            adRequest.addTestDevice("6957C567D0FBC01297253A353BB5BD71");
            adRequest.addTestDevice("F96E255C0D171F0D5FCF0B49304EB66A");
            this.interstitial.setAdListener(new AdMobExtAdListener(freContext, this.interstitial));
            this.interstitial.loadAd(adRequest);
            return null;
        }
        catch (FRETypeMismatchException ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + AppConstants.getExceptionStackTraceAsString(ex));
            return null;
        }
        catch (FREInvalidObjectException ex2) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + AppConstants.getExceptionStackTraceAsString(ex2));
            return null;
        }
        catch (FREWrongThreadException ex3) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex3.toString()) + "," + ex3.getMessage() + "," + ex3.getLocalizedMessage() + "," + AppConstants.getExceptionStackTraceAsString(ex3));
            return null;
        }
    }
}
