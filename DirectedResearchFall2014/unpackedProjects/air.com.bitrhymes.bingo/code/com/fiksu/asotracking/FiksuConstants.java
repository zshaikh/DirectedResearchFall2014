package com.fiksu.asotracking;

public class FiksuConstants
{
    protected static final String CONFIGURATION_PREFERENCES_FILENAME = "FiksuConfigurationSharedPreferences";
    public static final long DAY_IN_MILLISECONDS = 86400000L;
    protected static final String DEVICE_SETTINGS_PREFERENCES_FILENAME = "FiksuDeviceSettingsSharedPreferences";
    protected static final long FIKSU_CONFIGURATION_UPDATE_THRESHOLD = 86400000L;
    protected static final long FIKSU_CONFIGURATION_UPDATE_THRESHOLD_IN_DEBUG_MODE = 1800000L;
    public static final long HOUR_IN_MILLISECONDS = 3600000L;
    public static final long MINUTE_IN_MILLISECONDS = 60000L;
    protected static final String PREFERENCES_FILENAME = "FiksuSharedPreferences";
    protected static final String SDK_CONFIGURATION_ENDPOINT_PREFIX = "https://sdk.fiksu.com/config/FiksuConfiguration_android_";
    public static final long SECOND_IN_MILLISECONDS = 1000L;
    protected static final Object SHARED_PREFERENCES_LOCK;
    public static final long WEEK_IN_MILLISECONDS = 604800000L;
    public static final long YEAR_IN_MILLISECONDS = 31536000000L;
    
    static {
        SHARED_PREFERENCES_LOCK = new Object();
    }
}
