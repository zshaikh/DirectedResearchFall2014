package com.milkmangames.extensions.android;

import com.google.android.gcm.*;
import android.content.*;

public class GCMBroadcastReceiver extends com.google.android.gcm.GCMBroadcastReceiver
{
    @Override
    protected String getGCMIntentServiceClassName(final Context context) {
        return "com.milkmangames.extensions.android.GCMIntentService";
    }
}
