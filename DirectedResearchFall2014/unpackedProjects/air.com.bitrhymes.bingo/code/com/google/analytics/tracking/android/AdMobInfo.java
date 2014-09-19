package com.google.analytics.tracking.android;

import java.util.*;

class AdMobInfo
{
    private static final AdMobInfo INSTANCE;
    private int mAdHitId;
    private Random mRandom;
    
    static {
        INSTANCE = new AdMobInfo();
    }
    
    private AdMobInfo() {
        super();
        this.mRandom = new Random();
    }
    
    static AdMobInfo getInstance() {
        return AdMobInfo.INSTANCE;
    }
    
    int generateAdHitId() {
        return this.mAdHitId = 1 + this.mRandom.nextInt(2147483646);
    }
    
    int getAdHitId() {
        return this.mAdHitId;
    }
    
    Map<String, String> getJoinIds() {
        return null;
    }
    
    void setAdHitId(final int mAdHitId) {
        this.mAdHitId = mAdHitId;
    }
    
    enum AdMobKey
    {
        CLIENT_ID_KEY("ga_cid"), 
        HIT_ID_KEY("ga_hid"), 
        PROPERTY_ID_KEY("ga_wpids"), 
        VISITOR_ID_KEY("ga_uid");
        
        private String mBowParameter;
        
        private AdMobKey(final String mBowParameter) {
            this.mBowParameter = mBowParameter;
        }
        
        String getBowParameter() {
            return this.mBowParameter;
        }
    }
}
