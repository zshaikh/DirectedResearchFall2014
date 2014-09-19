package com.bitrhymes.chartboost;

import android.util.*;
import com.adobe.fre.*;
import java.util.*;

public class AndroidExtensionContext extends FREContext
{
    static AndroidExtensionContext context;
    
    public static AndroidExtensionContext getFreContext() {
        if (AndroidExtensionContext.context != null) {
            return AndroidExtensionContext.context;
        }
        Log.i("Chartboost Ext", "context is null, why? why? why?, can't return value to flash");
        return null;
    }
    
    @Override
    public void dispose() {
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        AndroidExtensionContext.context = this;
        final HashMap<String, StartSession> hashMap = (HashMap<String, StartSession>)new HashMap<String, ShowMoreApps>();
        hashMap.put("getVersion", (ShowMoreApps)new GetVersion());
        hashMap.put("startSession", (ShowMoreApps)new StartSession());
        hashMap.put("showInterstitial", (ShowMoreApps)new ShowInterstitial());
        hashMap.put("cacheInterstitial", (ShowMoreApps)new CacheInterstitial());
        hashMap.put("hasCachedInterstitial", (ShowMoreApps)new HasCachedInterstitial());
        hashMap.put("cacheMoreApps", (ShowMoreApps)new CacheMoreApps());
        hashMap.put("showMoreApps", new ShowMoreApps());
        return (Map<String, FREFunction>)hashMap;
    }
}
