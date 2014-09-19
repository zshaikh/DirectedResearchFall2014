package com.google.analytics.tracking.android;

import android.app.*;
import android.content.*;
import java.io.*;

public final class CampaignTrackingService extends IntentService
{
    public CampaignTrackingService() {
        super("CampaignIntentService");
    }
    
    public CampaignTrackingService(final String s) {
        super(s);
    }
    
    protected void onHandleIntent(final Intent intent) {
        final String stringExtra = intent.getStringExtra("referrer");
        try {
            final FileOutputStream openFileOutput = this.openFileOutput("gaInstallData", 0);
            openFileOutput.write(stringExtra.getBytes());
            openFileOutput.close();
        }
        catch (IOException ex) {
            Log.e("Error storing install campaign.");
        }
    }
}
