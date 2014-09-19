package com.freshplanet.flurry;

import android.util.*;
import com.adobe.fre.*;
import java.util.*;
import com.freshplanet.flurry.functions.analytics.*;

public class ExtensionContext extends FREContext
{
    public ExtensionContext() {
        super();
        Log.d(Extension.TAG, "Context created.");
    }
    
    @Override
    public void dispose() {
        Log.d(Extension.TAG, "Context disposed.");
        Extension.context = null;
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, StopSessionFunction> hashMap = (HashMap<String, StopSessionFunction>)new HashMap<String, StopTimedEventFunction>();
        hashMap.put("startSession", (StopTimedEventFunction)new StartSessionFunction());
        hashMap.put("stopSession", (StopTimedEventFunction)new StopSessionFunction());
        hashMap.put("logEvent", (StopTimedEventFunction)new LogEventFunction());
        hashMap.put("logError", (StopTimedEventFunction)new LogErrorFunction());
        hashMap.put("setAppVersion", (StopTimedEventFunction)new SetAppVersionFunction());
        hashMap.put("setUserId", (StopTimedEventFunction)new SetUserIdFunction());
        hashMap.put("setUserInfo", (StopTimedEventFunction)new SetUserInfoFunction());
        hashMap.put("setSendEventsOnPause", (StopTimedEventFunction)new SetSendEventsOnPauseFunction());
        hashMap.put("startTimedEvent", (StopTimedEventFunction)new StartTimedEventFunction());
        hashMap.put("stopTimedEvent", new StopTimedEventFunction());
        return (Map<String, FREFunction>)hashMap;
    }
}
