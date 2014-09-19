package com.bitrhymes.nativeutils.localnotify;

import com.adobe.fre.*;
import com.bitrhymes.nativeutils.utils.*;
import android.app.*;
import java.util.*;
import android.content.*;
import android.util.*;

public class ClearAlarmNotifications implements FREFunction
{
    public final String TAG;
    
    public ClearAlarmNotifications() {
        super();
        this.TAG = "LocalNotification";
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        this.debugLog("ClearAlarmNotifications -> FREObject call");
        this.clearAlarms((Context)freContext.getActivity());
        this.clearLocalNotificationsSetByBackend((Context)freContext.getActivity());
        return null;
    }
    
    public void clearAlarms(final Context context) {
        this.debugLog("clearAlarms clicked");
        AlarmReceiver.notificationcount = 0;
        final Intent intent = new Intent();
        intent.setClass(context, (Class)AlarmReceiver.class);
        int i = 1;
        while (i <= 100) {
            ((AlarmManager)context.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(context, Utils.requestCode1 + i * 10, intent, 134217728));
            if (i < 3) {
                i = 3;
            }
            else if (i < 5) {
                i = 5;
            }
            else {
                i += 5;
            }
        }
    }
    
    public void clearLocalNotificationsSetByBackend(final Context context) {
        final Intent intent = new Intent();
        intent.setClass(context, (Class)AlarmReceiver.class);
        final SharedPreferences sharedPreferences = context.getSharedPreferences("local-notification", 0);
        final Map all = sharedPreferences.getAll();
        if (all != null && !all.isEmpty()) {
            for (final String s : all.keySet()) {
                if (!sharedPreferences.getBoolean(s, false)) {
                    ((AlarmManager)context.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(context, Utils.requestCode1 + Integer.parseInt(s) * 10, intent, 134217728));
                    final SharedPreferences$Editor edit = sharedPreferences.edit();
                    edit.putBoolean(s, true);
                    edit.commit();
                }
            }
        }
    }
    
    public void debugLog(final String s) {
        Log.d("LocalNotification", s);
    }
}
