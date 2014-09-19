package com.inmobi.commons;

import com.inmobi.commons.internal.*;

public class IMCommonUtil
{
    public static final int DEVICE_ID_EXCLUDE_ODIN1 = 2;
    public static final int DEVICE_ID_INCLUDE_DEFAULT = 1;
    private static int a;
    
    static {
        IMCommonUtil.a = 1;
    }
    
    public static int getDeviceIdMask() {
        return IMCommonUtil.a;
    }
    
    public static LOG_LEVEL getLogLevel() {
        if (IMLog.getLogLevel().equals(IMLog.INTERNAL_LOG_LEVEL.NONE)) {
            return LOG_LEVEL.NONE;
        }
        return LOG_LEVEL.DEBUG;
    }
    
    public static String getReleaseVersion() {
        return "3.6.1";
    }
    
    public static void setDeviceIDMask(final int a) {
        IMCommonUtil.a = a;
    }
    
    public static void setLogLevel(final LOG_LEVEL log_LEVEL) {
        if (log_LEVEL == LOG_LEVEL.NONE) {
            IMLog.setInternalLogLevel(IMLog.INTERNAL_LOG_LEVEL.NONE);
            return;
        }
        IMLog.setInternalLogLevel(IMLog.INTERNAL_LOG_LEVEL.DEBUG);
    }
    
    public enum LOG_LEVEL
    {
        DEBUG("DEBUG", 1, 1), 
        NONE("NONE", 0, 0);
        
        private final int a;
        
        static {
            b = new LOG_LEVEL[] { LOG_LEVEL.NONE, LOG_LEVEL.DEBUG };
        }
        
        private LOG_LEVEL(final String name, final int ordinal, final int a) {
            this.a = a;
        }
        
        int a() {
            return this.a;
        }
    }
}
