package com.bitrhymes.applovin;

import android.app.*;
import android.util.*;
import com.adobe.fre.*;
import java.util.*;

public class AndroidExtensionContext extends FREContext
{
    static FREContext appsContext;
    public Activity activity;
    
    public static FREContext getFreContext() {
        if (AndroidExtensionContext.appsContext != null) {
            return AndroidExtensionContext.appsContext;
        }
        Log.d("AdMobContext", "appsContext is null. So, we cannot communicate back to the flash project.");
        return null;
    }
    
    public static void setFREContext(final FREContext appsContext) {
        AndroidExtensionContext.appsContext = appsContext;
    }
    
    @Override
    public void dispose() {
        this.activity = null;
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, InitializeAppLovinSdk> hashMap = (HashMap<String, InitializeAppLovinSdk>)new HashMap<String, ShowOverInterstitialAd>();
        hashMap.put("getVersion", (ShowOverInterstitialAd)new GetVersion());
        hashMap.put("initializeAppLovinSdk", (ShowOverInterstitialAd)new InitializeAppLovinSdk());
        hashMap.put("showOverInterestitialAd", new ShowOverInterstitialAd());
        return (Map<String, FREFunction>)hashMap;
    }
}
