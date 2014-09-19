package com.bitrhyms.tapjoylib;

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
        Log.d("TapjoyContext", "appsContext is null. So, we cannot communicate back to the flash project.");
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
        AndroidExtensionContext.appsContext = this;
        final HashMap<String, AndroidInitFunction> hashMap = (HashMap<String, AndroidInitFunction>)new HashMap<String, ShowOffersWithCurrencyID>();
        hashMap.put("AndroidDialogMessage", (ShowOffersWithCurrencyID)new AndroidShowDialogFunction());
        hashMap.put("ffiInit", (ShowOffersWithCurrencyID)new AndroidInitFunction());
        hashMap.put("getVersion", (ShowOffersWithCurrencyID)new GetVersion());
        hashMap.put("ConnectTapjoy", (ShowOffersWithCurrencyID)new ConnectTapjoy());
        hashMap.put("ActionComplete", (ShowOffersWithCurrencyID)new ActionComplete());
        hashMap.put("GetFeaturedApp", (ShowOffersWithCurrencyID)new GetFeaturedApp());
        hashMap.put("GetFeaturedAppWithCurrencyID", (ShowOffersWithCurrencyID)new GetFeaturedAppWithCurrencyID());
        hashMap.put("GetTapJoyPoints", (ShowOffersWithCurrencyID)new GetTapJoyPoints());
        hashMap.put("InitVideoAd", (ShowOffersWithCurrencyID)new InitVideoAd());
        hashMap.put("SetUserID", (ShowOffersWithCurrencyID)new SetUserID());
        hashMap.put("SetVideoCacheCount", (ShowOffersWithCurrencyID)new SetVideoCacheCount());
        hashMap.put("ShowOffers", (ShowOffersWithCurrencyID)new ShowOffers());
        hashMap.put("ShowOffersWithCurrencyID", new ShowOffersWithCurrencyID());
        return (Map<String, FREFunction>)hashMap;
    }
}
