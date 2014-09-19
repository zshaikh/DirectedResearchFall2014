package com.bitrhymes.googleanalytics;

import android.content.*;
import android.util.*;
import com.adobe.fre.*;
import com.google.analytics.tracking.android.*;

public class SetGACustomVariableAtIndexFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final int int1 = Integer.parseInt(array[0].getAsString());
            final String asString = array[1].getAsString();
            final String asString2 = array[2].getAsString();
            final Tracker tracker = GoogleAnalytics.getInstance((Context)freContext.getActivity()).getTracker(Utils.GOOGLE_ANALYTICS_ID);
            Log.i(this.getClass().getSimpleName(), "index=" + int1 + ";name=" + asString + ";value" + asString2);
            tracker.setCustomDimension(int1, asString2);
            tracker.sendView();
            Log.i(this.getClass().getSimpleName(), "GA custom variable is set");
            return null;
        }
        catch (IllegalStateException ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex3.toString()) + "," + ex3.getMessage() + "," + ex3.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex3));
            return null;
        }
        catch (FREWrongThreadException ex4) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex4.toString()) + "," + ex4.getMessage() + "," + ex4.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex4));
            return null;
        }
        catch (Exception ex5) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex5.toString()) + "," + ex5.getMessage() + "," + ex5.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex5));
            return null;
        }
    }
}
