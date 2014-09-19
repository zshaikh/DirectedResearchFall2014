package com.buffalostudios.aneutils.notifier;

import com.google.android.gcm.*;
import android.content.*;

public class PushNotifierService extends GCMBaseIntentService
{
    @Override
    protected String[] getSenderIds(final Context context) {
        return PushNotifier.getGCMSenderIds(context);
    }
    
    @Override
    protected void onError(final Context context, final String s) {
        PushNotifier.onGCMError(context, s);
    }
    
    @Override
    protected void onMessage(final Context context, final Intent intent) {
        PushNotifier.onGCMMessage(context, intent);
    }
    
    @Override
    protected void onRegistered(final Context context, final String s) {
        PushNotifier.onGCMRegistered(context, s);
    }
    
    @Override
    protected void onUnregistered(final Context context, final String s) {
        PushNotifier.onGCMUnregistered(context, s);
    }
}
