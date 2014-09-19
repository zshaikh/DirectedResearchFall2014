package com.milkmangames.extensions.android;

import android.content.*;
import android.util.*;

public class LocalReceiver extends BroadcastReceiver
{
    public void onReceive(final Context context, final Intent intent) {
        Log.d("[BUExtension]", "LocalReceiver->onReceive");
        Log.d("[BUExtension]", "Wake lock.");
        WakeLocker.acquire(context);
        BuffaloExtensionContext.onLocalMessage(context, intent);
    }
}
