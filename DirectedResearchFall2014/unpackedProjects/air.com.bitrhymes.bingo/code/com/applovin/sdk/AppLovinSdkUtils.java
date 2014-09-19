package com.applovin.sdk;

import android.content.*;
import android.os.*;
import android.util.*;
import android.content.pm.*;

public class AppLovinSdkUtils
{
    public static long getAdRefreshSeconds(final Context context) {
        final Bundle retrieveMetadata = retrieveMetadata(context);
        if (retrieveMetadata != null) {
            return retrieveMetadata.getInt("applovin.sdk.ad_refresh_seconds", -100);
        }
        return -100L;
    }
    
    public static String getAutoPreloadSizes(final Context context) {
        final Bundle retrieveMetadata = retrieveMetadata(context);
        if (retrieveMetadata != null) {
            final String string = retrieveMetadata.getString("applovin.sdk.auto_preload_ad_sizes");
            if (string != null) {
                return string;
            }
        }
        return "BANNER,INTER";
    }
    
    public static boolean isVerboseLoggingEnabled(final Context context) {
        final Bundle retrieveMetadata = retrieveMetadata(context);
        return retrieveMetadata != null && retrieveMetadata.getBoolean("applovin.sdk.verbose_logging", false);
    }
    
    protected static Bundle retrieveMetadata(final Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        }
        catch (PackageManager$NameNotFoundException ex) {
            Log.e("AppLovinSdk", "Unable to retrieve application metadata", (Throwable)ex);
            return null;
        }
    }
    
    public static String retrieveSdkKey(final Context context) {
        final Bundle retrieveMetadata = retrieveMetadata(context);
        if (retrieveMetadata == null) {
            return null;
        }
        final String string = retrieveMetadata.getString("applovin.sdk.key");
        if (string != null) {
            return string;
        }
        return "";
    }
    
    public static AppLovinSdkSettings retrieveUserSettings(final Context context) {
        final AppLovinSdkSettings appLovinSdkSettings = new AppLovinSdkSettings();
        appLovinSdkSettings.setVerboseLogging(isVerboseLoggingEnabled(context));
        appLovinSdkSettings.setBannerAdRefreshSeconds(getAdRefreshSeconds(context));
        appLovinSdkSettings.setAutoPreloadSizes(getAutoPreloadSizes(context));
        return appLovinSdkSettings;
    }
}
