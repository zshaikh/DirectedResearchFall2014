package com.bitrhyms.tapjoylib;

import com.adobe.fre.*;
import android.app.*;
import android.content.*;
import com.tapjoy.*;
import android.util.*;

public class InitVideoAd implements FREFunction, TapjoyVideoNotifier
{
    private static final String TAG;
    AndroidExtensionContext adec;
    
    static {
        TAG = InitVideoAd.class.getSimpleName();
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final AndroidExtensionContext androidExtensionContext = (AndroidExtensionContext)freContext;
        AndroidExtensionContext.setFREContext(freContext);
        new AlertDialog$Builder((Context)androidExtensionContext.activity);
        try {
            TapjoyLog.enableLogging(true);
            if (TapjoyConnect.getTapjoyConnectInstance() != null) {
                TapjoyConnect.getTapjoyConnectInstance().setVideoNotifier(this);
            }
            return null;
        }
        catch (Exception ex) {
            Log.i(InitVideoAd.TAG, ex.getMessage());
            freContext.dispatchStatusEventAsync("ERROR_EVENT", ex.toString());
            return null;
        }
    }
    
    @Override
    public void videoComplete() {
        Log.i(InitVideoAd.TAG, " videoStart ");
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_VIDEO_LOAD_EVENT", "1");
        }
    }
    
    @Override
    public void videoError(final int n) {
        Log.i(InitVideoAd.TAG, " videoError ");
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_VIDEO_LOAD_EVENT", "0");
        }
    }
    
    @Override
    public void videoStart() {
        Log.i(InitVideoAd.TAG, "  videoStart ");
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_VIDEO_LOAD_EVENT", "1");
        }
    }
}
