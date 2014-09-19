package com.freshplanet.flurry.functions.analytics;

import com.adobe.fre.*;
import com.flurry.android.*;
import android.content.*;
import android.util.*;

public class StartSessionFunction implements FREFunction
{
    private static String TAG;
    
    static {
        StartSessionFunction.TAG = "Flurry - StartSessionFunction";
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        while (true) {
            try {
                final String asString = array[0].getAsString();
                if (asString != null) {
                    FlurryAgent.setLogEnabled(false);
                    FlurryAgent.setLogLevel(3);
                    FlurryAgent.onStartSession((Context)freContext.getActivity(), asString);
                    Log.d(StartSessionFunction.TAG, "Started session and initalized ads");
                    return null;
                }
            }
            catch (Exception ex) {
                ex.printStackTrace();
                final String asString = null;
                continue;
            }
            break;
        }
        Log.e(StartSessionFunction.TAG, "API Key is null");
        return null;
    }
}
