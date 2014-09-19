package com.google.android.apps.analytics;

public class AdHitIdGenerator
{
    private boolean adMobSdkInstalled;
    
    public AdHitIdGenerator() {
        super();
        try {
            this.adMobSdkInstalled = (Class.forName("com.google.ads.AdRequest") != null);
        }
        catch (ClassNotFoundException ex) {
            this.adMobSdkInstalled = false;
        }
    }
    
    AdHitIdGenerator(final boolean adMobSdkInstalled) {
        super();
        this.adMobSdkInstalled = adMobSdkInstalled;
    }
    
    int getAdHitId() {
        if (!this.adMobSdkInstalled) {
            return 0;
        }
        return AdMobInfo.getInstance().generateAdHitId();
    }
}
