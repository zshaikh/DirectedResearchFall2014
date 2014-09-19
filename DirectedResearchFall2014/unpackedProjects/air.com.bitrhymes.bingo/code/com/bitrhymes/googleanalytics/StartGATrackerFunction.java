package com.bitrhymes.googleanalytics;

import com.adobe.fre.*;
import android.util.*;
import android.content.*;
import com.google.analytics.tracking.android.*;

public class StartGATrackerFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String s = Utils.GOOGLE_ANALYTICS_ID = array[0].getAsString();
            Log.i(this.getClass().getSimpleName(), "started GA tracker");
            Log.i(this.getClass().getSimpleName(), "started GA tracker");
            final GoogleAnalytics instance = GoogleAnalytics.getInstance((Context)freContext.getActivity());
            instance.setDebug(true);
            final Tracker tracker = GoogleAnalytics.getInstance((Context)freContext.getActivity()).getTracker(s);
            tracker.setStartSession(true);
            instance.setDefaultTracker(tracker);
            return null;
        }
        catch (IllegalStateException ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
        catch (Exception ex2) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
            return null;
        }
    }
}
