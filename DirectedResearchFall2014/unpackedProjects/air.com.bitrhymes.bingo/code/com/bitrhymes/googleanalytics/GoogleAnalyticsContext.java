package com.bitrhymes.googleanalytics;

import android.util.*;
import com.adobe.fre.*;
import java.util.*;

public class GoogleAnalyticsContext extends FREContext
{
    private static final String TAG = "GoogleAnalytics";
    static FREContext appsContext;
    
    public static FREContext getFreContext() {
        if (GoogleAnalyticsContext.appsContext != null) {
            return GoogleAnalyticsContext.appsContext;
        }
        Log.d("JungleAppsContext", "appsContext is null. So, we cannot communicate back to the flash project.");
        return null;
    }
    
    public static void setFREContext(final FREContext appsContext) {
        GoogleAnalyticsContext.appsContext = appsContext;
    }
    
    @Override
    public void dispose() {
        Log.i(this.getClass().getSimpleName(), "Inside dispose method");
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        Log.i("GoogleAnalytics", "Inside getFunctions method");
        final HashMap<String, GetVersion> hashMap = (HashMap<String, GetVersion>)new HashMap<String, FREFunction>();
        hashMap.put("getVersion", new GetVersion());
        hashMap.put("startGATracker", (GetVersion)new StartGATrackerFunction());
        hashMap.put("setGACustomVariableAtIndex", (GetVersion)new SetGACustomVariableAtIndexFunction());
        hashMap.put("trackGAEvent", (GetVersion)new TrackGAEventFunction());
        hashMap.put("trackGAPageview", (GetVersion)new TrackGAPageviewFunction());
        hashMap.put("stopGATracker", (GetVersion)new StopGATrackerFunction());
        hashMap.put("addInAppTransaction", (GetVersion)new AddInAppTransactionFunction());
        hashMap.put("setSampleRate", (GetVersion)new SetSampleRate());
        Log.i("GoogleAnalytics", "End of getFunctions method");
        return (Map<String, FREFunction>)hashMap;
    }
}
