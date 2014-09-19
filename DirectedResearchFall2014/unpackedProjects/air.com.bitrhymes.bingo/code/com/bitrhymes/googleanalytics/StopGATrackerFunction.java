package com.bitrhymes.googleanalytics;

import com.adobe.fre.*;
import com.google.analytics.tracking.android.*;
import android.content.*;
import android.util.*;

public class StopGATrackerFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            GoogleAnalytics.getInstance((Context)freContext.getActivity()).closeTracker(GoogleAnalytics.getInstance((Context)freContext.getActivity()).getTracker(Utils.GOOGLE_ANALYTICS_ID));
            Log.i(this.getClass().getSimpleName(), "stopped GA tracker");
            return null;
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
