package com.freshplanet.flurry.functions.analytics;

import android.util.*;
import com.flurry.android.*;
import com.adobe.fre.*;

public class StopTimedEventFunction implements FREFunction
{
    private static String TAG;
    
    static {
        StopTimedEventFunction.TAG = "StopTimedEventFunction";
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        Log.d(StopTimedEventFunction.TAG, "stopping time event");
        while (true) {
            try {
                final String asString = array[0].getAsString();
                if (asString != null) {
                    Log.d(StopTimedEventFunction.TAG, "timed event name " + asString);
                    FlurryAgent.endTimedEvent(asString);
                    return null;
                }
            }
            catch (IllegalStateException ex) {
                ex.printStackTrace();
                final String asString = null;
                continue;
            }
            catch (FRETypeMismatchException ex2) {
                ex2.printStackTrace();
                final String asString = null;
                continue;
            }
            catch (FREInvalidObjectException ex3) {
                ex3.printStackTrace();
                final String asString = null;
                continue;
            }
            catch (FREWrongThreadException ex4) {
                ex4.printStackTrace();
                final String asString = null;
                continue;
            }
            catch (Exception ex5) {
                ex5.printStackTrace();
                final String asString = null;
                continue;
            }
            break;
        }
        Log.d(StopTimedEventFunction.TAG, "null event name");
        return null;
    }
}
