package com.adobe.air;

import android.net.*;
import android.content.*;

public class AndroidNetworkDetector
{
    private static final String NET_DETECT_TAG = "AndroidNetworkDetector";
    private BroadcastReceiver mReceiver;
    private long objReference;
    private boolean registered;
    
    public AndroidNetworkDetector() {
        super();
        this.registered = false;
    }
    
    private native void callOnNetworkChange(final long p0);
    
    public void RegisterForNetworkChange(final Context context, final long objReference) {
        if (this.registered) {
            return;
        }
        try {
            this.mReceiver = new BroadcastReceiver() {
                public void onReceive(final Context context, final Intent intent) {
                    if (!this.isInitialStickyBroadcast()) {
                        final NetworkInfo networkInfo = (NetworkInfo)intent.getParcelableExtra("networkInfo");
                        if (networkInfo != null) {
                            networkInfo.getDetailedState();
                        }
                        AndroidNetworkDetector.this.callOnNetworkChange(AndroidNetworkDetector.this.objReference);
                    }
                }
            };
            this.objReference = objReference;
            final IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            context.registerReceiver(this.mReceiver, intentFilter);
            this.registered = true;
        }
        catch (Exception ex) {}
    }
}
