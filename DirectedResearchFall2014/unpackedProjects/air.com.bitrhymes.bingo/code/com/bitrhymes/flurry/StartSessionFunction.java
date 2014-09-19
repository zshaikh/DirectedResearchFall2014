package com.bitrhymes.flurry;

import android.content.*;
import android.util.*;
import com.flurry.android.*;
import com.adobe.fre.*;

public class StartSessionFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            FlurryAgent.onStartSession((Context)freContext.getActivity(), array[0].getAsString());
            Log.i(this.getClass().getSimpleName(), "end of flurry request");
            FlurryAgent.setLogEnabled(true);
            FlurryAgent.setLogLevel(2);
            FlurryAds.initializeAds((Context)freContext.getActivity());
            FlurryAds.setAdListener(FlurryAdListenerClass.getInstance(freContext));
            return null;
        }
        catch (IllegalStateException ex) {
            ex.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            ex2.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            ex3.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex3.toString()) + "," + ex3.getMessage() + "," + ex3.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex3));
            return null;
        }
        catch (FREWrongThreadException ex4) {
            ex4.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex4.toString()) + "," + ex4.getMessage() + "," + ex4.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex4));
            return null;
        }
    }
}
