package com.bitrhymes.chartboost;

import com.adobe.fre.*;
import android.util.*;
import com.chartboost.sdk.*;

public class CacheMoreApps implements FREFunction
{
    private static final String TAG = "Chartboost";
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            Log.i("Chartboost", " ** Chartboost_cacheMoreApps**");
            Chartboost.sharedChartboost().cacheMoreApps();
            return null;
        }
        catch (Exception ex) {
            Log.d("Chartboost", "error : " + ex.toString());
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
