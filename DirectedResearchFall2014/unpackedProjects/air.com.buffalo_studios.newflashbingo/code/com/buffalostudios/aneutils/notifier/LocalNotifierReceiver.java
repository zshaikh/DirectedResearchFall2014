package com.buffalostudios.aneutils.notifier;

import android.content.*;

public class LocalNotifierReceiver extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        LocalNotifier.onLocalMessage(context, intent);
    }
}
