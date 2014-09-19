package com.google.analytics.tracking.android;

class AdHitIdGenerator
{
    private boolean mAdMobSdkInstalled;
    
    AdHitIdGenerator() {
        super();
        try {
            this.mAdMobSdkInstalled = (Class.forName("com.google.ads.AdRequest") != null);
        }
        catch (ClassNotFoundException ex) {
            this.mAdMobSdkInstalled = false;
        }
    }
    
    AdHitIdGenerator(final boolean mAdMobSdkInstalled) {
        super();
        this.mAdMobSdkInstalled = mAdMobSdkInstalled;
    }
    
    int getAdHitId() {
        if (!this.mAdMobSdkInstalled) {
            return 0;
        }
        return AdMobInfo.getInstance().generateAdHitId();
    }
}
