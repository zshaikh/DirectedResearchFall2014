package com.bitrhymes.admobext;

import android.app.*;
import android.util.*;
import com.adobe.fre.*;
import java.util.*;

public class AdMobContext extends FREContext
{
    static FREContext appsContext;
    public Activity activity;
    
    public static FREContext getFreContext() {
        if (AdMobContext.appsContext != null) {
            return AdMobContext.appsContext;
        }
        Log.d("AdMobContext", "appsContext is null. So, we cannot communicate back to the flash project.");
        return null;
    }
    
    public static void setFREContext(final FREContext appsContext) {
        AdMobContext.appsContext = appsContext;
    }
    
    @Override
    public void dispose() {
        this.activity = null;
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, ShowInterstitialAd> hashMap = (HashMap<String, ShowInterstitialAd>)new HashMap<String, FREFunction>();
        hashMap.put("getVersion", new GetVersion());
        hashMap.put("showInterstitialAd", new ShowInterstitialAd());
        return (Map<String, FREFunction>)hashMap;
    }
}
