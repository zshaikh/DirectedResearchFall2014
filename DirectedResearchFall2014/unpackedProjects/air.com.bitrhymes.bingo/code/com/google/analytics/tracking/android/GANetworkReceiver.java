package com.google.analytics.tracking.android;

import android.content.*;
import android.os.*;

class GANetworkReceiver extends BroadcastReceiver
{
    private final ServiceManager mManager;
    
    GANetworkReceiver(final ServiceManager mManager) {
        super();
        this.mManager = mManager;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            final Bundle extras = intent.getExtras();
            Boolean b = Boolean.FALSE;
            if (extras != null) {
                b = intent.getExtras().getBoolean("noConnectivity");
            }
            this.mManager.updateConnectivityStatus(!b);
        }
    }
}
