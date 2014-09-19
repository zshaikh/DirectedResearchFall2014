package com.bitrhymes.PlayHavenAndroidLib;

import android.app.*;
import com.adobe.fre.*;
import java.util.*;
import android.util.*;

public class AndroidExtensionContext extends FREContext
{
    public Activity activity;
    
    @Override
    public void dispose() {
        this.activity = null;
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, RequestForApp> hashMap = (HashMap<String, RequestForApp>)new HashMap<String, RequestContentPH>();
        Log.i("playhave n", "start ");
        hashMap.put("getVersion", (RequestContentPH)new GetVersion());
        hashMap.put("requestForApp", (RequestContentPH)new RequestForApp());
        hashMap.put("displayPlayHavenFullScreen", (RequestContentPH)new DisplayFullScreenAd());
        hashMap.put("requestContentPH", new RequestContentPH());
        Log.i("playhave n", "end");
        return (Map<String, FREFunction>)hashMap;
    }
}
