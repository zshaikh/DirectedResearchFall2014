package com.applovin.sdk;

import android.content.*;
import com.applovin.impl.sdk.*;
import android.util.*;

public abstract class AppLovinSdk
{
    public static final String URI_HOST = "com.applovin.sdk";
    public static final String URI_SCHEME = "applovin";
    public static final String VERSION = "5.1.1";
    private static AppLovinSdk[] a;
    private static final Object b;
    
    static {
        AppLovinSdk.a = new AppLovinSdk[0];
        b = new Object();
    }
    
    public static AppLovinSdk getInstance(final Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return getInstance(AppLovinSdkUtils.retrieveSdkKey(context), AppLovinSdkUtils.retrieveUserSettings(context), context);
    }
    
    public static AppLovinSdk getInstance(final AppLovinSdkSettings appLovinSdkSettings, final Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return getInstance(AppLovinSdkUtils.retrieveSdkKey(context), appLovinSdkSettings, context);
    }
    
    public static AppLovinSdk getInstance(final String s, final AppLovinSdkSettings appLovinSdkSettings, final Context context) {
        int i = 0;
        synchronized (AppLovinSdk.b) {
            if (AppLovinSdk.a.length == 1 && AppLovinSdk.a[0].getSdkKey().equals(s)) {
                return AppLovinSdk.a[0];
            }
            for (AppLovinSdk[] a = AppLovinSdk.a; i < a.length; ++i) {
                final AppLovinSdk appLovinSdk = a[i];
                if (appLovinSdk.getSdkKey().equals(s)) {
                    return appLovinSdk;
                }
            }
            try {
                final AppLovinSdkImpl appLovinSdkImpl = new AppLovinSdkImpl();
                appLovinSdkImpl.initialize(s, appLovinSdkSettings, context.getApplicationContext());
                final AppLovinSdk[] a2 = new AppLovinSdk[1 + AppLovinSdk.a.length];
                System.arraycopy(AppLovinSdk.a, 0, a2, 0, AppLovinSdk.a.length);
                a2[AppLovinSdk.a.length] = appLovinSdkImpl;
                AppLovinSdk.a = a2;
                return appLovinSdkImpl;
            }
            catch (Throwable t) {
                Log.e("AppLovinSdk", "Failed to create AppLovin SDK. Try cleaning application data and starting the applion again.", t);
                throw new RuntimeException("Unable to create AppLovin SDK");
            }
        }
    }
    
    public static void initializeSdk(final Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        final AppLovinSdk instance = getInstance(context);
        if (instance != null) {
            instance.initializeSdk();
            return;
        }
        Log.e("AppLovinSdk", "Unable to initialize AppLovin SDK: SDK object not created");
    }
    
    public abstract AppLovinAdService getAdService();
    
    public abstract Context getApplicationContext();
    
    public abstract AppLovinEventService getEventService();
    
    public abstract AppLovinLogger getLogger();
    
    public abstract String getSdkKey();
    
    public abstract AppLovinSdkSettings getSettings();
    
    public abstract AppLovinTargetingData getTargetingData();
    
    public abstract boolean hasCriticalErrors();
    
    protected abstract void initialize(final String p0, final AppLovinSdkSettings p1, final Context p2);
    
    public abstract void initializeSdk();
    
    public abstract boolean isEnabled();
    
    public abstract void setPluginVersion(final String p0);
}
