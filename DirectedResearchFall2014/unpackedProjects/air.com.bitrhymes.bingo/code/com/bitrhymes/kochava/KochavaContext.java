package com.bitrhymes.kochava;

import android.util.*;
import com.adobe.fre.*;
import java.util.*;

public class KochavaContext extends FREContext
{
    static FREContext appsContext;
    
    public static FREContext getFreContext() {
        if (KochavaContext.appsContext != null) {
            return KochavaContext.appsContext;
        }
        Log.d("JungleAppsContext", "appsContext is null. So, we cannot communicate back to the flash project.");
        return null;
    }
    
    public static void setFREContext(final FREContext appsContext) {
        KochavaContext.appsContext = appsContext;
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
        hashMap.put("setKochavaSDKAppID", (GetVersion)new StartSession());
        hashMap.put("stopKochavaSession", (GetVersion)new StopSession());
        Log.i(this.getClass().getSimpleName(), "End of getFunctions method");
        return (Map<String, FREFunction>)hashMap;
    }
}
