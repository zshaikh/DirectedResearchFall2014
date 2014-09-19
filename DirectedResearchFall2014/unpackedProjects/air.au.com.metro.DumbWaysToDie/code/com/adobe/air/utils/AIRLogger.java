package com.adobe.air.utils;

import android.util.*;

public class AIRLogger
{
    static boolean g_enableReleaseLogging;
    private static String mflag;
    
    static {
        AIRLogger.g_enableReleaseLogging = false;
        AIRLogger.mflag = Utils.GetExternalStorageDirectory() + "/.AIR/enable_logging";
    }
    
    public static void Enable(final boolean g_enableReleaseLogging) {
        AIRLogger.g_enableReleaseLogging = g_enableReleaseLogging;
        Log.v("Release Logging: ", "enabled = " + AIRLogger.g_enableReleaseLogging);
    }
    
    public static int d(final String s, final String s2) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.d(s, s2);
        }
        return 0;
    }
    
    public static int d(final String s, final String s2, final Throwable t) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.d(s, s2, t);
        }
        return 0;
    }
    
    public static int e(final String s, final String s2) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.e(s, s2);
        }
        return 0;
    }
    
    public static int e(final String s, final String s2, final Throwable t) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.e(s, s2, t);
        }
        return 0;
    }
    
    public static int i(final String s, final String s2) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.i(s, s2);
        }
        return 0;
    }
    
    public static int i(final String s, final String s2, final Throwable t) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.i(s, s2, t);
        }
        return 0;
    }
    
    public static boolean isEnabled() {
        return AIRLogger.g_enableReleaseLogging;
    }
    
    public static boolean isLoggable(final String s, final int n) {
        return AIRLogger.g_enableReleaseLogging && Log.isLoggable(s, n);
    }
    
    public static int println(final int n, final String s, final String s2) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.println(n, s, s2);
        }
        return 0;
    }
    
    public static int v(final String s, final String s2) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.v(s, s2);
        }
        return 0;
    }
    
    public static int v(final String s, final String s2, final Throwable t) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.v(s, s2, t);
        }
        return 0;
    }
    
    public static int w(final String s, final String s2) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.w(s, s2);
        }
        return 0;
    }
    
    public static int w(final String s, final String s2, final Throwable t) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.w(s, s2, t);
        }
        return 0;
    }
    
    public static int w(final String s, final Throwable t) {
        if (AIRLogger.g_enableReleaseLogging) {
            return Log.w(s, t);
        }
        return 0;
    }
}
