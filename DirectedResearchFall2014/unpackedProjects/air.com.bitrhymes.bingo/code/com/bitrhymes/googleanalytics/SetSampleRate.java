package com.bitrhymes.googleanalytics;

import com.google.analytics.tracking.android.*;
import android.content.*;
import com.adobe.fre.*;

public class SetSampleRate implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        while (true) {
            while (true) {
                double double1 = 0.0;
                Label_0323: {
                    try {
                        final String asString = array[0].getAsString();
                        double1 = 100.0;
                        if (asString != null && asString.length() > 0) {
                            double1 = Double.parseDouble(asString);
                        }
                        break Label_0323;
                        GoogleAnalytics.getInstance((Context)freContext.getActivity()).getTracker(Utils.GOOGLE_ANALYTICS_ID).setSampleRate(double1);
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
                }
                if (double1 <= 0.0) {
                    double1 = 100.0;
                    continue;
                }
                continue;
            }
        }
    }
}
