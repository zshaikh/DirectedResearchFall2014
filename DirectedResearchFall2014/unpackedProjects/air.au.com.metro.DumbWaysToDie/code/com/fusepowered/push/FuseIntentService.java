package com.fusepowered.push;

import android.util.*;
import android.content.*;
import com.fusepowered.fuseapi.*;
import android.graphics.*;
import android.app.*;

public class FuseIntentService extends FuseGCMBaseIntentService
{
    @Override
    protected void onError(final Context obj, final String s) {
        Log.e("FuseIntentService", "Got an error  " + obj);
    }
    
    @Override
    protected void onMessage(final Context context, final Intent intent) {
        final String stringExtra = intent.getStringExtra("title");
        final String stringExtra2 = intent.getStringExtra("text");
        String ticker = intent.getStringExtra("name");
        if (ticker == null || ticker.length() == 0) {
            ticker = FuseAPI.appNameDisplay;
        }
        final FuseNotificationCompat.Builder builder = new FuseNotificationCompat.Builder(context);
        builder.setContentTitle(stringExtra);
        builder.setContentText(stringExtra2);
        builder.setSmallIcon(FuseAPI.iconID);
        builder.setTicker(ticker);
        builder.setContentIntent(PendingIntent.getActivity(context, 0, new Intent(FuseAPI.packageName + "." + FuseAPI.appName + ".fusepowered.push.FuseRecordGCMResponse"), 0));
        if (FuseAPI.drawerIconID != 0) {
            builder.setLargeIcon(BitmapFactory.decodeResource(context.getApplicationContext().getResources(), FuseAPI.drawerIconID));
        }
        FuseAPI.notificationID = intent.getStringExtra("notification_id");
        Log.d("PUSH NOTIFICATION", "This is the notification id " + FuseAPI.notificationID);
        final NotificationManager notificationManager = (NotificationManager)context.getSystemService("notification");
        final Notification build = builder.build();
        build.flags = 20;
        notificationManager.notify(Integer.parseInt(FuseAPI.notificationID), build);
    }
    
    @Override
    protected void onRegistered(final Context context, final String s) {
        FuseAPI.registerGCM(s);
    }
    
    @Override
    protected void onUnregistered(final Context context, final String s) {
    }
}
