package com.fiksu.asotracking;

import org.json.*;
import android.content.*;

public class FiksuConfiguration
{
    private static final String DEBUG_MODE_ENABLED_KEY = "debug_mode_enabled";
    private static final boolean DEFAULT_DEBUG_MODE_ENABLED_SETTING = false;
    private static final boolean DEFAULT_FACEBOOK_ATTRIBUTION_SETTING = true;
    private static final String FACEBOOK_ATTRIBUTION_KEY = "facebook_attribution";
    private static final String LAST_UPDATE_TIMESTAMP = "last_update_timestamp";
    private boolean mDebugModeEnabled;
    private boolean mFacebookAttributionEnabled;
    private long mLastUpdateTimestamp;
    
    protected FiksuConfiguration() {
        super();
        this.mFacebookAttributionEnabled = true;
        this.mDebugModeEnabled = false;
        this.mLastUpdateTimestamp = -1L;
    }
    
    private static final boolean getBooleanFromJSONObject(final JSONObject jsonObject, final String s, final boolean b) {
        try {
            return jsonObject.getBoolean(s);
        }
        catch (JSONException ex) {
            return b;
        }
    }
    
    protected final boolean hasEverSynchedWithServer() {
        return this.mLastUpdateTimestamp > 0L;
    }
    
    protected final boolean isDebugModeEnabled() {
        return this.mDebugModeEnabled;
    }
    
    protected final boolean isFacebookAttributionEnabled() {
        return this.mFacebookAttributionEnabled;
    }
    
    protected final boolean isUpToDate() {
        long n;
        if (this.mDebugModeEnabled) {
            n = 1800000L;
        }
        else {
            n = 86400000L;
        }
        return System.currentTimeMillis() - this.mLastUpdateTimestamp < n;
    }
    
    protected final boolean readFromJSONObject(final JSONObject jsonObject) {
        if (jsonObject == null) {
            return false;
        }
        this.mFacebookAttributionEnabled = getBooleanFromJSONObject(jsonObject, "facebook_attribution", this.mFacebookAttributionEnabled);
        this.mDebugModeEnabled = getBooleanFromJSONObject(jsonObject, "debug_mode_enabled", this.mDebugModeEnabled);
        this.mLastUpdateTimestamp = System.currentTimeMillis();
        return true;
    }
    
    protected final boolean readFromSharedPreferences(final SharedPreferences sharedPreferences) {
        if (sharedPreferences == null) {
            return false;
        }
        this.mFacebookAttributionEnabled = sharedPreferences.getBoolean("facebook_attribution", this.mFacebookAttributionEnabled);
        this.mDebugModeEnabled = sharedPreferences.getBoolean("debug_mode_enabled", this.mDebugModeEnabled);
        this.mLastUpdateTimestamp = sharedPreferences.getLong("last_update_timestamp", this.mLastUpdateTimestamp);
        return true;
    }
    
    public final void setDebugModeEnabled(final boolean mDebugModeEnabled) {
        this.mDebugModeEnabled = mDebugModeEnabled;
    }
    
    protected final void updateLastUpdateTimestamp() {
        this.mLastUpdateTimestamp = System.currentTimeMillis();
    }
    
    protected final boolean writeToSharedPreferences(final SharedPreferences sharedPreferences) {
        if (sharedPreferences == null) {
            return false;
        }
        final SharedPreferences$Editor edit = sharedPreferences.edit();
        edit.putBoolean("facebook_attribution", this.mFacebookAttributionEnabled);
        edit.putBoolean("debug_mode_enabled", this.mDebugModeEnabled);
        edit.putLong("last_update_timestamp", this.mLastUpdateTimestamp);
        return edit.commit();
    }
}
