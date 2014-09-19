package com.bitrhymes.messaging;

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
        final HashMap<String, LaunchSMS> hashMap = (HashMap<String, LaunchSMS>)new HashMap<String, IsSMSComposerAvailable>();
        hashMap.put("LaunchEmail", (IsSMSComposerAvailable)new LaunchEmail());
        hashMap.put("LaunchSms", (IsSMSComposerAvailable)new LaunchSMS());
        hashMap.put("IsMailComposerAvailable", (IsSMSComposerAvailable)new IsMailComposerAvailable());
        hashMap.put("IsSMSComposerAvailable", new IsSMSComposerAvailable());
        return (Map<String, FREFunction>)hashMap;
    }
}
