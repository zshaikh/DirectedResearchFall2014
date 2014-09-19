package com.fusepowered.push;

import android.content.*;

public class FusePushNotificationReceiver extends FuseGCMBroadcastReceiver
{
    protected static String getDefaultIntentServiceClassName(final Context context) {
        return "com.fusepowered.push.FuseIntentService";
    }
    
    @Override
    protected String getGCMIntentServiceClassName(final Context context) {
        return getDefaultIntentServiceClassName(context);
    }
}
