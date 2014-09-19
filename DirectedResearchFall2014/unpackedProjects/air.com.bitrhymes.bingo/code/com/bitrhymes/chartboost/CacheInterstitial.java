package com.bitrhymes.chartboost;

import com.adobe.fre.*;
import android.util.*;
import com.chartboost.sdk.*;

public class CacheInterstitial implements FREFunction
{
    private static final String TAG = "Chartboost";
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String asString = array[0].getAsString();
            Log.i("Chartboost", " ** Chartboost_cacheInterstitial**");
            final Chartboost sharedChartboost = Chartboost.sharedChartboost();
            if (asString != null && asString.length() > 0) {
                sharedChartboost.cacheInterstitial(asString);
            }
            else {
                sharedChartboost.cacheInterstitial();
            }
        }
        catch (Exception ex) {
            Log.i("Chartboost", "Errore:" + ex.toString());
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
        }
        return null;
    }
}
