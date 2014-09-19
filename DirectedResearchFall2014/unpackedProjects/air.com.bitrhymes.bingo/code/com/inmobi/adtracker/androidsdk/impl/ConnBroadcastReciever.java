package com.inmobi.adtracker.androidsdk.impl;

import android.content.*;
import android.net.*;
import com.inmobi.commons.internal.*;
import com.inmobi.adtracker.androidsdk.impl.net.*;

public class ConnBroadcastReciever extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            final NetworkInfo networkInfo = (NetworkInfo)intent.getParcelableExtra("networkInfo");
            if (networkInfo.getType() == 1 && networkInfo.isConnected()) {
                IMLog.internal("IMAdTrackerSDK_V_2_5_1", "Received CONNECTIVITY BROADCAST");
                NetworkInterface.init();
                WebViewLoader.initializeWebview();
                NetworkInterface.reportOnConnected();
            }
        }
    }
}
