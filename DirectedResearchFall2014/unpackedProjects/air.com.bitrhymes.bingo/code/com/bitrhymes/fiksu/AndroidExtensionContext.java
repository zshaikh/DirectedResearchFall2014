package com.bitrhymes.fiksu;

import android.app.*;
import com.adobe.fre.*;
import java.util.*;

public class AndroidExtensionContext extends FREContext
{
    public Activity activity;
    
    @Override
    public void dispose() {
        this.activity = null;
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, C2dMessageReceived> hashMap = (HashMap<String, C2dMessageReceived>)new HashMap<String, UploadRegistrationEvent>();
        hashMap.put("getVersion", (UploadRegistrationEvent)new GetVersion());
        hashMap.put("c2dMessageReceived", (UploadRegistrationEvent)new C2dMessageReceived());
        hashMap.put("promptForRating", (UploadRegistrationEvent)new PromptForRating());
        hashMap.put("uploadPurchaseEvent", (UploadRegistrationEvent)new UploadPurchaseEvent());
        hashMap.put("uploadRegistrationEvent", new UploadRegistrationEvent());
        return (Map<String, FREFunction>)hashMap;
    }
}
