package com.fusepowered.m2.m2l.util;

import android.os.*;

public enum VersionCode
{
    BASE("BASE", 0, 1), 
    BASE_1_1("BASE_1_1", 1, 2), 
    CUPCAKE("CUPCAKE", 2, 3), 
    CUR_DEVELOPMENT("CUR_DEVELOPMENT", 18, 10000), 
    DONUT("DONUT", 3, 4), 
    ECLAIR("ECLAIR", 4, 5), 
    ECLAIR_0_1("ECLAIR_0_1", 5, 6), 
    ECLAIR_MR1("ECLAIR_MR1", 6, 7), 
    FROYO("FROYO", 7, 8), 
    GINGERBREAD("GINGERBREAD", 8, 9), 
    GINGERBREAD_MR1("GINGERBREAD_MR1", 9, 10), 
    HONEYCOMB("HONEYCOMB", 10, 11), 
    HONEYCOMB_MR1("HONEYCOMB_MR1", 11, 12), 
    HONEYCOMB_MR2("HONEYCOMB_MR2", 12, 13), 
    ICE_CREAM_SANDWICH("ICE_CREAM_SANDWICH", 13, 14), 
    ICE_CREAM_SANDWICH_MR1("ICE_CREAM_SANDWICH_MR1", 14, 15), 
    JELLY_BEAN("JELLY_BEAN", 15, 16), 
    JELLY_BEAN_MR1("JELLY_BEAN_MR1", 16, 17), 
    JELLY_BEAN_MR2("JELLY_BEAN_MR2", 17, 18);
    
    private int mApiLevel;
    
    private VersionCode(final String name, final int ordinal, final int mApiLevel) {
        this.mApiLevel = mApiLevel;
    }
    
    public static VersionCode currentApiLevel() {
        return forApiLevel(Build$VERSION.SDK_INT);
    }
    
    private static VersionCode forApiLevel(final int n) {
        for (final VersionCode versionCode : values()) {
            if (versionCode.getApiLevel() == n) {
                return versionCode;
            }
        }
        return VersionCode.CUR_DEVELOPMENT;
    }
    
    public int getApiLevel() {
        return this.mApiLevel;
    }
    
    public boolean isAtLeast(final VersionCode versionCode) {
        return this.getApiLevel() >= versionCode.getApiLevel();
    }
    
    public boolean isAtMost(final VersionCode versionCode) {
        return this.getApiLevel() <= versionCode.getApiLevel();
    }
    
    public boolean isBelow(final VersionCode versionCode) {
        return this.getApiLevel() < versionCode.getApiLevel();
    }
}
