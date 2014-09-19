package com.tapjoy;

import java.util.*;
import android.util.*;

public class TapjoyLog
{
    private static final int MAX_STRING_SIZE = 4096;
    private static final String TAG = "TapjoyLog";
    private static ArrayList<String> logHistory;
    private static boolean saveLog;
    private static boolean showLog;
    
    static {
        TapjoyLog.showLog = false;
        TapjoyLog.saveLog = false;
    }
    
    public static void clearLogHistory() {
        if (TapjoyLog.logHistory != null) {
            TapjoyLog.logHistory.clear();
        }
    }
    
    public static void d(final String s, final String e) {
        if (TapjoyLog.showLog) {
            Log.d(s, e);
        }
        if (TapjoyLog.saveLog) {
            TapjoyLog.logHistory.add(e);
        }
    }
    
    public static void e(final String s, final String e) {
        if (TapjoyLog.showLog) {
            Log.e(s, e);
        }
        if (TapjoyLog.saveLog) {
            TapjoyLog.logHistory.add(e);
        }
    }
    
    public static void enableLogging(final boolean b) {
        Log.i("TapjoyLog", "enableLogging: " + b);
        TapjoyLog.showLog = b;
    }
    
    public static ArrayList<String> getLogHistory() {
        return TapjoyLog.logHistory;
    }
    
    public static void i(final String s, final String e) {
        if (TapjoyLog.showLog) {
            if (e.length() > 4096) {
                for (int i = 0; i <= e.length() / 4096; ++i) {
                    final int beginIndex = i * 4096;
                    int length = 4096 * (i + 1);
                    if (length > e.length()) {
                        length = e.length();
                    }
                    Log.i(s, e.substring(beginIndex, length));
                }
            }
            else {
                Log.i(s, e);
            }
        }
        if (TapjoyLog.saveLog) {
            TapjoyLog.logHistory.add(e);
        }
    }
    
    public static boolean isLoggingEnabled() {
        return TapjoyLog.showLog;
    }
    
    public static void saveLogHistory(final boolean saveLog) {
        TapjoyLog.saveLog = saveLog;
        if (TapjoyLog.saveLog) {
            TapjoyLog.logHistory = new ArrayList<String>(1024);
            return;
        }
        TapjoyLog.logHistory = null;
    }
    
    public static void v(final String s, final String e) {
        if (TapjoyLog.showLog) {
            Log.v(s, e);
        }
        if (TapjoyLog.saveLog) {
            TapjoyLog.logHistory.add(e);
        }
    }
    
    public static void w(final String s, final String e) {
        if (TapjoyLog.showLog) {
            Log.w(s, e);
        }
        if (TapjoyLog.saveLog) {
            TapjoyLog.logHistory.add(e);
        }
    }
}
