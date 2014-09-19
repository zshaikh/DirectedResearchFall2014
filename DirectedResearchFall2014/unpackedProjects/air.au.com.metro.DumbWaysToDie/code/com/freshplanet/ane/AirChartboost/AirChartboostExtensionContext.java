package com.freshplanet.ane.AirChartboost;

import com.adobe.fre.*;
import java.util.*;
import com.freshplanet.ane.AirChartboost.functions.*;

public class AirChartboostExtensionContext extends FREContext
{
    @Override
    public void dispose() {
        AirChartboostExtension.context = null;
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, ShowInterstitialFunction> hashMap = (HashMap<String, ShowInterstitialFunction>)new HashMap<String, HasCachedInterstitialFunction>();
        hashMap.put("startSession", (HasCachedInterstitialFunction)new StartSessionFunction());
        hashMap.put("showInterstitial", (HasCachedInterstitialFunction)new ShowInterstitialFunction());
        hashMap.put("cacheInterstitial", (HasCachedInterstitialFunction)new CacheInterstitialFunction());
        hashMap.put("hasCachedInterstitial", new HasCachedInterstitialFunction());
        return (Map<String, FREFunction>)hashMap;
    }
}
