package com.bitrhymes.chartboost;

import com.adobe.fre.*;
import android.util.*;
import com.chartboost.sdk.*;

public class ShowInterstitial implements FREFunction
{
    private static final String TAG = "Chartboost";
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            Log.i("Chartboost", " ** Chartboost_showInterstitial**");
            final String asString = array[0].getAsString();
            final Chartboost sharedChartboost = Chartboost.sharedChartboost();
            if (asString != null && asString.length() > 0) {
                sharedChartboost.showInterstitial(asString);
            }
            else {
                sharedChartboost.showInterstitial();
            }
        }
        catch (Exception ex) {
            Log.i("Chartboost", "Error : " + ex.toString());
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
        }
        return null;
    }
}
