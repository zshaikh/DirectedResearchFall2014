package com.milkmangames.extensions.android;

import android.content.*;
import android.util.*;

public class ReferralReceiver extends BroadcastReceiver
{
    public static final String TAG = "[BURefReceiver]";
    
    public void onReceive(final Context context, final Intent intent) {
        try {
            BuffaloExtensionContext.onReferrerReceived(intent.getStringExtra("referrer"));
        }
        catch (Exception ex) {
            Log.e("[BURefReceiver]", "Failed to parse referrer.");
            ex.printStackTrace();
        }
    }
}
