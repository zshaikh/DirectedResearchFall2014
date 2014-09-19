package com.google.android.apps.analytics;

import java.util.*;

public class AdMobInfo
{
    private static final AdMobInfo INSTANCE;
    private int adHitId;
    private Random random;
    
    static {
        INSTANCE = new AdMobInfo();
    }
    
    private AdMobInfo() {
        super();
        this.random = new Random();
    }
    
    public static AdMobInfo getInstance() {
        return AdMobInfo.INSTANCE;
    }
    
    public int generateAdHitId() {
        return this.adHitId = this.random.nextInt();
    }
    
    public int getAdHitId() {
        return this.adHitId;
    }
    
    public String getJoinId() {
        if (this.adHitId == 0) {
            return null;
        }
        final GoogleAnalyticsTracker instance = GoogleAnalyticsTracker.getInstance();
        final String visitorIdForAds = instance.getVisitorIdForAds();
        final String sessionIdForAds = instance.getSessionIdForAds();
        if (visitorIdForAds == null || sessionIdForAds == null) {
            return null;
        }
        return String.format("A,%s,%s,%d", visitorIdForAds, sessionIdForAds, this.adHitId);
    }
    
    public void setAdHitId(final int adHitId) {
        this.adHitId = adHitId;
    }
}
