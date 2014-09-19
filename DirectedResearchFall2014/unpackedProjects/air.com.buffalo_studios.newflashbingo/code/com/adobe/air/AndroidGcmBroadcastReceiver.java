package com.adobe.air;

import android.support.v4.content.*;
import android.content.*;

public class AndroidGcmBroadcastReceiver extends WakefulBroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        startWakefulService(context, intent.setComponent(new ComponentName(context.getPackageName(), AndroidGcmIntentService.class.getName())));
        this.setResultCode(-1);
    }
}
