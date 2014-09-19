package com.bitrhymes.inmobiext;

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
        final HashMap<String, ReportInMobiCustomGoal> hashMap = (HashMap<String, ReportInMobiCustomGoal>)new HashMap<String, GetVersion>();
        hashMap.put("inMobiInit", (GetVersion)new InMobiInit());
        hashMap.put("inMobiRequestCustomGoal", (GetVersion)new ReportInMobiCustomGoal());
        hashMap.put("inMobiShowFullScreenAd", (GetVersion)new IMAdInterstitialFunction());
        hashMap.put("getVersion", new GetVersion());
        return (Map<String, FREFunction>)hashMap;
    }
}
