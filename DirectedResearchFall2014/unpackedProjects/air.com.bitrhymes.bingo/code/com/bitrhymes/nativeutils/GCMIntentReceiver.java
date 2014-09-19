package com.bitrhymes.nativeutils;

import com.google.android.gcm.*;
import android.content.*;
import android.util.*;

public class GCMIntentReceiver extends GCMBroadcastReceiver
{
    @Override
    protected String getGCMIntentServiceClassName(final Context context) {
        Log.d("RegisterForPush", "getGCMIntentServiceClassName");
        return "com.bitrhymes.nativeutils.GCMIntentService";
    }
}
