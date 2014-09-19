package com.bitrhymes.chartboost;

import com.adobe.fre.*;
import android.util.*;
import com.chartboost.sdk.*;

public class StartSession implements FREFunction
{
    private static final String TAG = "Chartboost";
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            Log.i("Chartboost", " ** Chartboost_startSession**");
            final String asString = array[0].getAsString();
            final String asString2 = array[1].getAsString();
            Log.i("Chartboost", "Chartboost start session method:" + asString + "---" + asString2);
            final Chartboost sharedChartboost = Chartboost.sharedChartboost();
            sharedChartboost.onCreate(freContext.getActivity(), asString, asString2, new ChartboostListener(freContext));
            sharedChartboost.startSession();
            return null;
        }
        catch (Exception ex) {
            Log.i("Chartboost", "error = " + ex.toString());
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
