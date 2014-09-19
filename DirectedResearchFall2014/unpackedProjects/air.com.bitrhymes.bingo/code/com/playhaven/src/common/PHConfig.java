package com.playhaven.src.common;

import v2.com.playhaven.configuration.*;
import android.content.*;

public class PHConfig
{
    public static String api;
    public static boolean precache;
    public static boolean runningTests;
    public static String sdk_version;
    public static String secret;
    public static String token;
    
    static {
        PHConfig.api = "";
        PHConfig.sdk_version = Version.PROJECT_VERSION;
        PHConfig.precache = true;
    }
    
    public static void cacheDeviceInfo(final Context context) {
    }
}
