package com.tapjoy.mraid.util;

import com.tapjoy.mraid.controller.*;
import android.content.*;

public class NetworkBroadcastReceiver extends BroadcastReceiver
{
    private Network mMraidNetwork;
    
    public NetworkBroadcastReceiver(final Network mMraidNetwork) {
        super();
        this.mMraidNetwork = mMraidNetwork;
    }
    
    public void onReceive(final Context context, final Intent intent) {
        if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            this.mMraidNetwork.onConnectionChanged();
        }
    }
}
