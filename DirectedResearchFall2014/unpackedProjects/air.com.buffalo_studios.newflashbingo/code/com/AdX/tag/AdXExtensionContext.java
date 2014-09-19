package com.AdX.tag;

import android.util.*;
import com.adobe.fre.*;
import java.util.*;

public class AdXExtensionContext extends FREContext
{
    public AdXExtensionContext() {
        super();
        Log.i("AdXExtensionContext", "constructor");
    }
    
    @Override
    public void dispose() {
        Log.i("AdXExtensionContext", "dispose");
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        Log.i("AdXExtensionContext", "getFunctions");
        final HashMap<String, AdXSendEventFunction> hashMap = (HashMap<String, AdXSendEventFunction>)new HashMap<String, AdXGetDeviceIDFunction>();
        hashMap.put("reportAppOpen", (AdXGetDeviceIDFunction)new AdXSendAppOpenFunction());
        hashMap.put("reportAppResume", (AdXGetDeviceIDFunction)new AdXSendAppOpenFunction());
        hashMap.put("reportAppEvent", (AdXGetDeviceIDFunction)new AdXSendEventFunction());
        hashMap.put("initNativeCode", (AdXGetDeviceIDFunction)new AdXInitNativeCodeFunction());
        hashMap.put("getReferral", (AdXGetDeviceIDFunction)new AdXGetReferralFunction());
        hashMap.put("getDeviceID", new AdXGetDeviceIDFunction());
        return (Map<String, FREFunction>)hashMap;
    }
}
