package com.tapjoy.mraid.controller;

import com.tapjoy.mraid.util.*;
import com.tapjoy.mraid.view.*;
import com.tapjoy.*;
import android.content.*;
import android.net.*;

public class Network extends Abstract
{
    private static final String TAG = "MRAID Network";
    private NetworkBroadcastReceiver mBroadCastReceiver;
    private ConnectivityManager mConnectivityManager;
    private IntentFilter mFilter;
    private int mNetworkListenerCount;
    
    public Network(final MraidView mraidView, final Context context) {
        super(mraidView, context);
        this.mConnectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
    }
    
    public String getNetwork() {
    Label_0022_Outer:
        while (true) {
            while (true) {
                NetworkInfo activeNetworkInfo;
                while (true) {
                    try {
                        activeNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();
                        String str = "unknown";
                        if (activeNetworkInfo == null) {
                            str = "offline";
                            TapjoyLog.d("MRAID Network", "getNetwork: " + str);
                            return str;
                        }
                    }
                    catch (Exception ex) {
                        ex.printStackTrace();
                        activeNetworkInfo = null;
                        continue Label_0022_Outer;
                    }
                    break;
                }
                switch (activeNetworkInfo.getState()) {
                    default: {
                        final int type = activeNetworkInfo.getType();
                        if (type == 0) {
                            final String str = "cell";
                            continue;
                        }
                        if (type == 1) {
                            final String str = "wifi";
                            continue;
                        }
                        continue;
                    }
                    case UNKNOWN: {
                        final String str = "unknown";
                        continue;
                    }
                    case DISCONNECTED: {
                        final String str = "offline";
                        continue;
                    }
                }
                break;
            }
        }
    }
    
    public void onConnectionChanged() {
        final String string = "window.mraidview.fireChangeEvent({ network: '" + this.getNetwork() + "'});";
        TapjoyLog.d("MRAID Network", string);
        this.mMraidView.injectMraidJavaScript(string);
    }
    
    public void startNetworkListener() {
        if (this.mNetworkListenerCount == 0) {
            this.mBroadCastReceiver = new NetworkBroadcastReceiver(this);
            (this.mFilter = new IntentFilter()).addAction("android.net.conn.CONNECTIVITY_CHANGE");
        }
        ++this.mNetworkListenerCount;
        this.mContext.registerReceiver((BroadcastReceiver)this.mBroadCastReceiver, this.mFilter);
    }
    
    @Override
    public void stopAllListeners() {
        this.mNetworkListenerCount = 0;
        try {
            this.mContext.unregisterReceiver((BroadcastReceiver)this.mBroadCastReceiver);
        }
        catch (Exception ex) {}
    }
    
    public void stopNetworkListener() {
        --this.mNetworkListenerCount;
        if (this.mNetworkListenerCount == 0) {
            this.mContext.unregisterReceiver((BroadcastReceiver)this.mBroadCastReceiver);
            this.mBroadCastReceiver = null;
            this.mFilter = null;
        }
    }
}
