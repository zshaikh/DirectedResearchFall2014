package com.bitrhymes.nativeutils.localnotify;

import android.util.*;
import android.content.*;
import android.content.pm.*;
import android.widget.*;
import android.app.*;

public class AlarmReceiver extends BroadcastReceiver
{
    public static int notificationcount;
    public final String TAG;
    
    static {
        AlarmReceiver.notificationcount = 0;
    }
    
    public AlarmReceiver() {
        super();
        this.TAG = "LocalNotification";
    }
    
    public static int getResourseIdByName(final String obj, final String anObject, final String name) {
        int n = 0;
        int int1;
        while (true) {
            try {
                if (n >= Class.forName(String.valueOf(obj) + ".R").getClasses().length) {
                    int1 = 0;
                    break;
                }
                if (Class.forName(String.valueOf(obj) + ".R").getClasses()[n].getName().split("\\$")[1].equals(anObject)) {
                    final Class<?> clazz = Class.forName(String.valueOf(obj) + ".R").getClasses()[n];
                    int1 = 0;
                    if (clazz != null) {
                        int1 = Class.forName(String.valueOf(obj) + ".R").getClasses()[n].getField(name).getInt(Class.forName(String.valueOf(obj) + ".R").getClasses()[n]);
                        Log.i("Alarm Mang == ", " *** = " + int1);
                        break;
                    }
                    break;
                }
            }
            catch (Exception ex) {
                return -1;
            }
            ++n;
        }
        return int1;
    }
    
    public void debugLog(final String s) {
        Log.d("LocalNotification", s);
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.debugLog("AlarmReceiver.->onReceive");
        Log.i("LocalNotification", "*** alarm onReceive ***");
        final String stringExtra = intent.getStringExtra("src_text");
        final String stringExtra2 = intent.getStringExtra("src_title");
        final String stringExtra3 = intent.getStringExtra("src_scroll");
        final String stringExtra4 = intent.getStringExtra("src_package");
        final PackageManager packageManager = context.getPackageManager();
        try {
            final int icon = packageManager.getApplicationInfo(context.getPackageName(), 128).icon;
            this.debugLog("============================================");
            this.debugLog("iconid: " + Integer.toString(icon));
            this.debugLog("============================================");
            this.showNotification(context, stringExtra2, stringExtra3, stringExtra, icon, stringExtra4);
        }
        catch (PackageManager$NameNotFoundException ex) {
            ex.printStackTrace();
            this.debugLog("current package name not found. hence no notification set");
        }
    }
    
    public void showNotification(final Context context, final String s, final String s2, final String s3, final int n, final String s4) {
        try {
            this.debugLog("1.step");
            final PackageManager packageManager = context.getPackageManager();
            this.debugLog("2.step");
            final NotificationManager notificationManager = (NotificationManager)context.getSystemService("notification");
            final Notification notification = new Notification(n, (CharSequence)s2, System.currentTimeMillis());
            new Intent("android.intent.action.MAIN");
            Log.i("AlarmReceiver", s4);
            final Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(s4);
            if (launchIntentForPackage == null) {
                this.debugLog("Package intent not found. Please make sure that the package is specified correctly.");
                return;
            }
            Log.i("LocalNotification", "pkg name == " + context.getPackageName());
            final RemoteViews contentView = new RemoteViews(context.getPackageName(), getResourseIdByName(context.getPackageName(), "layout", "custom_notification_layout"));
            contentView.setImageViewResource(getResourseIdByName(context.getPackageName(), "id", "notImg"), n);
            contentView.setTextViewText(getResourseIdByName(context.getPackageName(), "id", "notTxt"), (CharSequence)s3);
            notification.contentView = contentView;
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
            notification.contentIntent = PendingIntent.getActivity(context, 0, launchIntentForPackage, 0);
            notification.flags |= 0x10;
            notification.number = 1;
            notification.defaults = 1;
            notificationManager.notify(0, notification);
            this.debugLog("Notified");
        }
        catch (Exception ex) {
            this.debugLog("Error: " + ex.getMessage());
            ex.printStackTrace();
        }
    }
}
