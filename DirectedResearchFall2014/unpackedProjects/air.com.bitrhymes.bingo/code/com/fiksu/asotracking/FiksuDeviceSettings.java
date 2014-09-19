package com.fiksu.asotracking;

import android.content.*;

public class FiksuDeviceSettings
{
    private static final String APP_TRACKING_ENABLED_ATTRIBUTION_KEY = "app_tracking_enabled";
    private static final String CLIENT_ID_ATTRIBUTION_KEY = "clientId";
    private boolean mAppTrackingEnabled;
    private String mClientId;
    
    protected FiksuDeviceSettings() {
        super();
        this.mClientId = "";
        this.mAppTrackingEnabled = true;
    }
    
    private static final String makeNonNull(final String s) {
        if (s == null) {
            return "";
        }
        return s;
    }
    
    protected final String getClientId() {
        return this.mClientId;
    }
    
    protected final boolean isAppTrackingEnabled() {
        return this.mAppTrackingEnabled;
    }
    
    protected final void readFromSharedPreferences(final SharedPreferences sharedPreferences) {
        this.mClientId = sharedPreferences.getString("clientId", this.mClientId);
        this.mAppTrackingEnabled = sharedPreferences.getBoolean("app_tracking_enabled", this.mAppTrackingEnabled);
    }
    
    protected final void setAppTrackingEnabled(final boolean mAppTrackingEnabled) {
        this.mAppTrackingEnabled = mAppTrackingEnabled;
    }
    
    protected final void setClientId(final String s) {
        this.mClientId = makeNonNull(s);
    }
    
    protected final void writeToSharedPreferences(final SharedPreferences sharedPreferences) {
        final SharedPreferences$Editor edit = sharedPreferences.edit();
        edit.putString("clientId", this.mClientId);
        edit.putBoolean("app_tracking_enabled", this.mAppTrackingEnabled);
        edit.commit();
    }
}
