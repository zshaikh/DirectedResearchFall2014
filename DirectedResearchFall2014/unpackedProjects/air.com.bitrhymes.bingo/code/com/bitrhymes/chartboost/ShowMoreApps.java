package com.bitrhymes.chartboost;

import com.adobe.fre.*;
import android.util.*;
import com.chartboost.sdk.*;

public class ShowMoreApps implements FREFunction
{
    private static final String TAG = "Chartboost";
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            Log.i("Chartboost", " ** Chartboost_showMoreApps**");
            Chartboost.sharedChartboost().showMoreApps();
            return null;
        }
        catch (Exception ex) {
            Log.i("Chartboost", "error = " + ex.toString());
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
