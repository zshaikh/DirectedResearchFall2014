package com.buffalostudios.aneutils.notifier;

import com.google.android.gcm.*;
import android.content.*;

public class PushNotifierReceiver extends GCMBroadcastReceiver
{
    @Override
    protected String getGCMIntentServiceClassName(final Context context) {
        return "com.buffalostudios.aneutils.notifier.PushNotifierService";
    }
}
