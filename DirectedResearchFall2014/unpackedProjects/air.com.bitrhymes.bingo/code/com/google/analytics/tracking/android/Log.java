package com.google.analytics.tracking.android;

import com.google.android.gms.common.util.*;
import android.util.*;

public class Log
{
    @VisibleForTesting
    static final String LOG_TAG = "GAV2";
    private static boolean sDebug;
    
    public static int d(final String s) {
        return android.util.Log.d("GAV2", formatMessage(s));
    }
    
    public static int dDebug(final String s) {
        if (Log.sDebug) {
            return d(s);
        }
        return 0;
    }
    
    public static int e(final String s) {
        return android.util.Log.e("GAV2", formatMessage(s));
    }
    
    public static int eDebug(final String s) {
        if (Log.sDebug) {
            return e(s);
        }
        return 0;
    }
    
    private static String formatMessage(final String str) {
        return Thread.currentThread().toString() + ": " + str;
    }
    
    public static int i(final String s) {
        return android.util.Log.i("GAV2", formatMessage(s));
    }
    
    public static int iDebug(final String s) {
        if (Log.sDebug) {
            return i(s);
        }
        return 0;
    }
    
    public static boolean isDebugEnabled() {
        return Log.sDebug;
    }
    
    public static void setDebug(final boolean sDebug) {
        Log.sDebug = sDebug;
    }
    
    public static int v(final String s) {
        return android.util.Log.v("GAV2", formatMessage(s));
    }
    
    public static int vDebug(final String s) {
        if (Log.sDebug) {
            return v(s);
        }
        return 0;
    }
    
    public static int w(final String s) {
        return android.util.Log.w("GAV2", formatMessage(s));
    }
    
    public static int wDebug(final String s) {
        if (Log.sDebug) {
            return w(s);
        }
        return 0;
    }
}
