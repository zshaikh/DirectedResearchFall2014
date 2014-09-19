package com.google.analytics.tracking.android;

class Hit
{
    private final long mHitId;
    private String mHitString;
    private final long mHitTime;
    private String mHitUrl;
    
    Hit(final String mHitString, final long mHitId, final long mHitTime) {
        super();
        this.mHitString = mHitString;
        this.mHitId = mHitId;
        this.mHitTime = mHitTime;
    }
    
    long getHitId() {
        return this.mHitId;
    }
    
    String getHitParams() {
        return this.mHitString;
    }
    
    long getHitTime() {
        return this.mHitTime;
    }
    
    String getHitUrl() {
        return this.mHitUrl;
    }
    
    void setHitString(final String mHitString) {
        this.mHitString = mHitString;
    }
    
    void setHitUrl(final String mHitUrl) {
        this.mHitUrl = mHitUrl;
    }
}
