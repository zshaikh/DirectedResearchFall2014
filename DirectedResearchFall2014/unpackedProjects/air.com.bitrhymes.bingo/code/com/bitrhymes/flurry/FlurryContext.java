package com.bitrhymes.flurry;

import android.util.*;
import com.adobe.fre.*;
import java.util.*;

public class FlurryContext extends FREContext
{
    static FREContext appsContext;
    
    public static FREContext getFreContext() {
        if (FlurryContext.appsContext != null) {
            return FlurryContext.appsContext;
        }
        Log.d("JungleAppsContext", "appsContext is null. So, we cannot communicate back to the flash project.");
        return null;
    }
    
    public static void setFREContext(final FREContext appsContext) {
        FlurryContext.appsContext = appsContext;
    }
    
    @Override
    public void dispose() {
        Log.i(this.getClass().getSimpleName(), "Inside dispose method");
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        Log.i(this.getClass().getSimpleName(), "Inside getFunctions method");
        final HashMap<String, GetVersion> hashMap = (HashMap<String, GetVersion>)new HashMap<String, FREFunction>();
        hashMap.put("getVersion", new GetVersion());
        hashMap.put("startSession", (GetVersion)new StartSessionFunction());
        hashMap.put("logEvent", (GetVersion)new LogEvent());
        hashMap.put("logEvent2", (GetVersion)new LogEvent2());
        hashMap.put("endTimedEvent", (GetVersion)new EndTimedEvent());
        hashMap.put("endTimedEvent2", (GetVersion)new EndTimedEvent2());
        hashMap.put("logError", (GetVersion)new LogError());
        hashMap.put("setUserID", (GetVersion)new SetUserIDFunction());
        hashMap.put("setAge", (GetVersion)new SetAgeFunction());
        hashMap.put("setGender", (GetVersion)new SetGenderFunction());
        hashMap.put("stopSession", (GetVersion)new StopSessionFunction());
        hashMap.put("fetchAds", (GetVersion)new FetchAdsFunction());
        hashMap.put("showAd", (GetVersion)new DisplayAdsFunction());
        hashMap.put("setUserCookies", (GetVersion)new SetUserCookiesFunction());
        Log.i(this.getClass().getSimpleName(), "End of getFunctions method");
        return (Map<String, FREFunction>)hashMap;
    }
}
