package com.google.android.apps.analytics;

import android.content.pm.*;

class DeviceOptOutImpl implements OptOut
{
    static final String OPTOUT_ID = "com.google.analytics.optout";
    static final int OPTOUT_TIME_CHECK_IN_SECONDS = 300;
    private final long checkIntervalInMillis;
    private long lastTimeChecked;
    private final String optOutApp;
    private boolean optedOut;
    private final PackageManager pm;
    
    DeviceOptOutImpl(final PackageManager pm) {
        super();
        this.pm = pm;
        this.optedOut = false;
        this.optOutApp = "com.google.analytics.optout";
        this.checkIntervalInMillis = 300000L;
    }
    
    @Override
    public boolean optedOut() {
        final long currentTimeMillis = System.currentTimeMillis();
        Label_0041: {
            if (currentTimeMillis <= this.lastTimeChecked + this.checkIntervalInMillis) {
                break Label_0041;
            }
            while (true) {
                try {
                    this.pm.getPackageInfo(this.optOutApp, 0);
                    this.optedOut = true;
                    this.lastTimeChecked = currentTimeMillis;
                    return this.optedOut;
                }
                catch (PackageManager$NameNotFoundException ex) {
                    this.optedOut = false;
                    continue;
                }
                break;
            }
        }
    }
    
    void resetLastTimeChecked() {
        this.lastTimeChecked = 0L;
    }
}
