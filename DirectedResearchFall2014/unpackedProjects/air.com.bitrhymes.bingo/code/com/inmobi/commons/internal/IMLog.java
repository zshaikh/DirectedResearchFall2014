package com.inmobi.commons.internal;

import android.util.*;

public class IMLog
{
    protected static INTERNAL_LOG_LEVEL debugLevel;
    
    static {
        IMLog.debugLevel = INTERNAL_LOG_LEVEL.NONE;
    }
    
    static /* synthetic */ int[] a() {
        final int[] a = IMLog.a;
        if (a != null) {
            return a;
        }
        final int[] a2 = new int[INTERNAL_LOG_LEVEL.values().length];
        while (true) {
            try {
                a2[INTERNAL_LOG_LEVEL.DEBUG.ordinal()] = 2;
                try {
                    a2[INTERNAL_LOG_LEVEL.INTERNAL.ordinal()] = 3;
                    try {
                        a2[INTERNAL_LOG_LEVEL.NONE.ordinal()] = 1;
                        return IMLog.a = a2;
                    }
                    catch (NoSuchFieldError noSuchFieldError) {}
                }
                catch (NoSuchFieldError noSuchFieldError2) {}
            }
            catch (NoSuchFieldError noSuchFieldError3) {
                continue;
            }
            break;
        }
    }
    
    public static void debug(final String s, final String s2) {
        if (IMLog.debugLevel.getValue() >= INTERNAL_LOG_LEVEL.DEBUG.getValue()) {
            Log.d(s, s2);
        }
    }
    
    public static void debug(final String s, final String s2, final Throwable t) {
        switch (a()[IMLog.debugLevel.ordinal()]) {
            default: {}
            case 2: {
                debug(s, s2);
            }
            case 3: {
                internal(s, s2, t);
            }
        }
    }
    
    public static INTERNAL_LOG_LEVEL getLogLevel() {
        return IMLog.debugLevel;
    }
    
    public static void internal(final String s, final String str) {
        if (IMLog.debugLevel.getValue() >= INTERNAL_LOG_LEVEL.INTERNAL.getValue()) {
            final StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
            Log.v(s, String.valueOf(stackTraceElement.getFileName()) + ": " + stackTraceElement.getMethodName() + " " + str);
        }
    }
    
    public static void internal(final String s, final String str, final Throwable t) {
        if (IMLog.debugLevel.getValue() >= INTERNAL_LOG_LEVEL.INTERNAL.getValue()) {
            final StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
            Log.v(s, String.valueOf(stackTraceElement.getFileName()) + ": " + stackTraceElement.getMethodName() + " " + str, t);
        }
    }
    
    public static void setInternalLogLevel(final INTERNAL_LOG_LEVEL debugLevel) {
        IMLog.debugLevel = debugLevel;
    }
    
    public enum INTERNAL_LOG_LEVEL
    {
        DEBUG("DEBUG", 1, 1), 
        INTERNAL("INTERNAL", 2, 2), 
        NONE("NONE", 0, 0);
        
        private final int a;
        
        static {
            b = new INTERNAL_LOG_LEVEL[] { INTERNAL_LOG_LEVEL.NONE, INTERNAL_LOG_LEVEL.DEBUG, INTERNAL_LOG_LEVEL.INTERNAL };
        }
        
        private INTERNAL_LOG_LEVEL(final String name, final int ordinal, final int a) {
            this.a = a;
        }
        
        public int getValue() {
            return this.a;
        }
    }
}
