package com.bitrhymes.iab;

import android.app.*;
import android.util.*;
import com.adobe.fre.*;
import java.util.*;
import com.bitrhymes.iab.functions.*;

public class InAppContext extends FREContext
{
    static FREContext appsContext;
    public Activity activity;
    
    public static FREContext getFreContext() {
        if (InAppContext.appsContext != null) {
            return InAppContext.appsContext;
        }
        Log.d("TapjoyContext", "appsContext is null. So, we cannot communicate back to the flash project.");
        return null;
    }
    
    public static void setFREContext(final FREContext appsContext) {
        InAppContext.appsContext = appsContext;
    }
    
    @Override
    public void dispose() {
        this.activity = null;
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        InAppContext.appsContext = this;
        final HashMap<String, IsSupported> hashMap = (HashMap<String, IsSupported>)new HashMap<String, NavigateToAddAccountPage>();
        hashMap.put("getVersion", (NavigateToAddAccountPage)new GetVersion());
        hashMap.put("muted", (NavigateToAddAccountPage)new IsSupported());
        hashMap.put("getProducts", (NavigateToAddAccountPage)new GetPurchaseInfo());
        hashMap.put("startPayment", (NavigateToAddAccountPage)new PurchaseItem());
        hashMap.put("finish", (NavigateToAddAccountPage)new ConfirmItemPurchase());
        hashMap.put("restore", (NavigateToAddAccountPage)new GetPurchaseInfo());
        hashMap.put("trans", (NavigateToAddAccountPage)new Trasaction());
        hashMap.put("navigateToAddAccountPage", new NavigateToAddAccountPage());
        return (Map<String, FREFunction>)hashMap;
    }
}
