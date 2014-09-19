package com.milkmangames.extensions.android;

import com.google.android.gcm.*;
import android.content.*;
import android.util.*;

public class GCMIntentService extends GCMBaseIntentService
{
    @Override
    protected String[] getSenderIds(final Context context) {
        return BuffaloExtensionContext.getSenderIds(context);
    }
    
    @Override
    protected void onError(final Context context, final String s) {
        BuffaloExtensionContext.onGCMError(context, s);
    }
    
    @Override
    protected void onMessage(final Context context, final Intent intent) {
        Log.d("[BUExtension]", "Wake lock.");
        WakeLocker.acquire(context);
        BuffaloExtensionContext.onGCMMessage(context, intent);
    }
    
    @Override
    protected void onRegistered(final Context context, final String s) {
        BuffaloExtensionContext.onGCMRegistered(context, s);
    }
    
    @Override
    protected void onUnregistered(final Context context, final String s) {
        BuffaloExtensionContext.onGCMUnregistered(context, s);
    }
}
