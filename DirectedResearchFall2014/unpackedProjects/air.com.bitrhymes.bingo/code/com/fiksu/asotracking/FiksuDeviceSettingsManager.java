package com.fiksu.asotracking;

import android.content.*;
import android.util.*;
import android.provider.*;
import android.telephony.*;

public class FiksuDeviceSettingsManager
{
    private static final FiksuDeviceSettingsManager INSTANCE;
    private final FiksuDeviceSettings mFiksuDeviceSettings;
    private SharedPreferences mSharedPreferences;
    
    static {
        INSTANCE = new FiksuDeviceSettingsManager();
    }
    
    private FiksuDeviceSettingsManager() {
        super();
        this.mFiksuDeviceSettings = new FiksuDeviceSettings();
        this.mSharedPreferences = null;
    }
    
    protected static FiksuDeviceSettingsManager getInstance() {
        return FiksuDeviceSettingsManager.INSTANCE;
    }
    
    private void setSharedPreferences(final Context context) {
        if (this.mSharedPreferences != null) {
            return;
        }
        if (context == null) {
            Log.e("FiksuTracking", "Context is null so we cannot load configuration from SharedPreferences");
            return;
        }
        this.mSharedPreferences = context.getSharedPreferences("FiksuDeviceSettingsSharedPreferences", 0);
    }
    
    public final String getAndroidId(final Context context) {
        final String string = Settings$Secure.getString(context.getContentResolver(), "android_id");
        if (string == null) {
            Log.e("FiksuTracking", "Could not retrieve android_id.  The android_id is not available on emulators running Android 2.1 or below.  Run the code on emulator 2.2 or better or an a device.");
            return "";
        }
        return string;
    }
    
    public final String getClientId() {
        return this.mFiksuDeviceSettings.getClientId();
    }
    
    public final String getDeviceId(final Context context) {
        try {
            final TelephonyManager telephonyManager = (TelephonyManager)context.getSystemService("phone");
            if (telephonyManager == null) {
                Log.e("FiksuTracking", "Could not access telephonyManager.");
                return "";
            }
            final String deviceId = telephonyManager.getDeviceId();
            if (deviceId == null || deviceId.length() == 0) {
                Log.e("FiksuTracking", "Could not retrieve deviceId. ");
                return "";
            }
            return deviceId;
        }
        catch (SecurityException ex) {
            Log.e("FiksuTracking", "Could not retrieve deviceId: READ_PHONE_STATE permission not granted. " + ex.getMessage());
            return "";
        }
    }
    
    protected final void initialize(final Context sharedPreferences) {
        this.setSharedPreferences(sharedPreferences);
        if (this.mSharedPreferences != null) {
            this.mFiksuDeviceSettings.readFromSharedPreferences(this.mSharedPreferences);
        }
    }
    
    public final boolean isAppTrackingEnabled() {
        return this.mFiksuDeviceSettings.isAppTrackingEnabled();
    }
    
    protected final void setAppTrackingEnabled(final Context sharedPreferences, final boolean appTrackingEnabled) {
        this.mFiksuDeviceSettings.setAppTrackingEnabled(appTrackingEnabled);
        this.setSharedPreferences(sharedPreferences);
        if (this.mSharedPreferences != null) {
            this.mFiksuDeviceSettings.writeToSharedPreferences(this.mSharedPreferences);
        }
    }
    
    protected final void setClientId(final Context sharedPreferences, final String clientId) {
        this.mFiksuDeviceSettings.setClientId(clientId);
        this.setSharedPreferences(sharedPreferences);
        if (this.mSharedPreferences != null) {
            this.mFiksuDeviceSettings.writeToSharedPreferences(this.mSharedPreferences);
        }
    }
}
