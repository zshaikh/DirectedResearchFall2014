package com.applovin.sdk;

import android.content.*;

public class AppLovinBootReceiver extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            context.startService(new Intent(context, (Class)AppLovinService.class));
        }
    }
}
