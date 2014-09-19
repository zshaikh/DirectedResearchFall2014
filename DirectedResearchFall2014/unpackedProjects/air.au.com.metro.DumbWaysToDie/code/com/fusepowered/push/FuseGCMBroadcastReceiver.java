package com.fusepowered.push;

import android.content.*;
import android.util.*;
import android.os.*;

public class FuseGCMBroadcastReceiver extends BroadcastReceiver
{
    private static final String TAG = "GCMBroadcastReceiver";
    private static boolean mReceiverSet;
    
    static {
        FuseGCMBroadcastReceiver.mReceiverSet = false;
    }
    
    static String getDefaultIntentServiceClassName(final Context context) {
        return context.getPackageName() + ".GCMIntentService";
    }
    
    protected String getGCMIntentServiceClassName(final Context context) {
        return getDefaultIntentServiceClassName(context);
    }
    
    public final void onReceive(final Context context, final Intent intent) {
        Log.v("GCMBroadcastReceiver", "onReceive: " + intent.getAction());
        if (!FuseGCMBroadcastReceiver.mReceiverSet) {
            FuseGCMBroadcastReceiver.mReceiverSet = true;
            final String name = this.getClass().getName();
            if (!name.equals(FuseGCMBroadcastReceiver.class.getName())) {
                FuseGCMRegistrar.setRetryReceiverClassName(name);
            }
        }
        final String gcmIntentServiceClassName = this.getGCMIntentServiceClassName(context);
        Log.v("GCMBroadcastReceiver", "GCM IntentService class: " + gcmIntentServiceClassName);
        FuseGCMBaseIntentService.runIntentInService(context, intent, gcmIntentServiceClassName);
        this.setResult(-1, (String)null, (Bundle)null);
    }
}
