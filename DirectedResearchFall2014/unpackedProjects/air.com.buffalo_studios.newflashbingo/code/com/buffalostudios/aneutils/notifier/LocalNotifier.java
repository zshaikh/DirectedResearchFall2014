package com.buffalostudios.aneutils.notifier;

import android.content.*;
import android.util.*;
import com.buffalostudios.aneutils.*;
import android.app.*;
import android.content.pm.*;
import com.adobe.fre.*;

public class LocalNotifier
{
    private static final int LOCAL_REQUEST_CODE = 5943788;
    private static final String TAG = "LocalNotifier";
    
    private static void cancelNotification(final FREContext freContext, final int n) {
        ((AlarmManager)freContext.getActivity().getSystemService("alarm")).cancel(PendingIntent.getBroadcast((Context)freContext.getActivity(), 5943788 + n, new Intent((Context)freContext.getActivity(), (Class)LocalNotifierReceiver.class), 134217728));
    }
    
    public static void onLocalMessage(final Context context, final Intent intent) {
        Log.d("LocalNotifier", "Wake lock.");
        WakeLocker.acquire(context);
        final String string = NotifierUtils.encodeNotificationIntent(intent).toString();
        Log.d("LocalNotifier", "Local Message received..:" + string);
        ANEContext.dispatchFlashEvent("LOCAL_MESSAGE_RECEIVED", string);
        if (ANEUtils.getInForeground()) {
            Log.d("LocalNotifier", "LN = in foreground.");
            return;
        }
        final NotificationManager notificationManager = (NotificationManager)context.getSystemService("notification");
        final PackageManager packageManager = context.getPackageManager();
        final Context applicationContext = context.getApplicationContext();
        final ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
        final String string2 = intent.getExtras().getString("message");
        final CharSequence loadLabel = context.getApplicationContext().getApplicationInfo().loadLabel(packageManager);
        CharSequence string3;
        Notification notification;
        String className;
        while (true) {
            try {
                string3 = intent.getExtras().getString("title");
                notification = new Notification(applicationInfo.icon, (CharSequence)string2, System.currentTimeMillis());
                notification.flags |= 0x1F;
                notification.flags &= 0xFFFFFFFB;
                notification.flags &= 0xFFFFFFFD;
                notification.defaults |= 0x3;
                notification.ledOnMS = 1000;
                notification.ledOffMS = 1000;
                notification.ledARGB = -1;
                final String packageName = applicationContext.getPackageName();
                Log.d("LocalNotifier", "LMPN:" + packageName);
                className = packageManager.getLaunchIntentForPackage(packageName).getComponent().getClassName();
                Log.d("LocalNotifier", "LLCN:" + className);
                final Context context2 = context;
                final String s = className;
                final Class<?> clazz = Class.forName(s);
                final Intent intent2 = new Intent(context2, (Class)clazz);
                final Intent intent4;
                final Intent intent3 = intent4 = intent2;
                final String s2 = "bufLocal";
                final String s3 = string;
                intent4.putExtra(s2, s3);
                final Intent intent5 = intent3;
                final int n = 603979776;
                intent5.setFlags(n);
                final Notification notification2 = notification;
                final Context context3 = context;
                final CharSequence charSequence = string3;
                final String s4 = string2;
                final Context context4 = context;
                final boolean b = false;
                final Intent intent6 = intent3;
                final int n2 = 134217728;
                final PendingIntent pendingIntent = PendingIntent.getActivity(context4, (int)(b ? 1 : 0), intent6, n2);
                notification2.setLatestEventInfo(context3, charSequence, (CharSequence)s4, pendingIntent);
                final Notification notification3 = notification;
                final int n3 = 16;
                final Notification notification4 = notification;
                final int n4 = notification4.flags;
                final int n5 = n3 | n4;
                notification3.flags = n5;
                final NotificationManager notificationManager2 = notificationManager;
                final boolean b2 = false;
                final Notification notification5 = notification;
                notificationManager2.notify((int)(b2 ? 1 : 0), notification5);
                final String s5 = "LocalNotifier";
                final String s6 = "release lock";
                Log.d(s5, s6);
                WakeLocker.release();
                return;
            }
            catch (Exception ex) {
                Log.d("LocalNotifier", "Local Message parse failed.");
                ex.printStackTrace();
                string3 = loadLabel;
                continue;
            }
            break;
        }
        try {
            final Context context2 = context;
            final String s = className;
            final Class<?> clazz = Class.forName(s);
            final Intent intent2 = new Intent(context2, (Class)clazz);
            final Intent intent4;
            final Intent intent3 = intent4 = intent2;
            final String s2 = "bufLocal";
            final String s3 = string;
            intent4.putExtra(s2, s3);
            final Intent intent5 = intent3;
            final int n = 603979776;
            intent5.setFlags(n);
            final Notification notification2 = notification;
            final Context context3 = context;
            final CharSequence charSequence = string3;
            final String s4 = string2;
            final Context context4 = context;
            final boolean b = false;
            final Intent intent6 = intent3;
            final int n2 = 134217728;
            final PendingIntent pendingIntent = PendingIntent.getActivity(context4, (int)(b ? 1 : 0), intent6, n2);
            notification2.setLatestEventInfo(context3, charSequence, (CharSequence)s4, pendingIntent);
            final Notification notification3 = notification;
            final int n3 = 16;
            final Notification notification4 = notification;
            final int n4 = notification4.flags;
            final int n5 = n3 | n4;
            notification3.flags = n5;
            final NotificationManager notificationManager2 = notificationManager;
            final boolean b2 = false;
            final Notification notification5 = notification;
            notificationManager2.notify((int)(b2 ? 1 : 0), notification5);
            final String s5 = "LocalNotifier";
            final String s6 = "release lock";
            Log.d(s5, s6);
            WakeLocker.release();
        }
        catch (Exception ex2) {
            Log.e("LocalNotifier", "Failed to locate the air main intent.");
            ex2.printStackTrace();
        }
    }
    
    private static void scheduleNotification(final FREContext freContext, final int n, final long n2, final String s, final String s2, final String s3) {
        final Intent intent = new Intent((Context)freContext.getActivity(), (Class)LocalNotifierReceiver.class);
        intent.putExtra("message", s2);
        intent.putExtra("title", s);
        intent.putExtra("extraData", s3);
        ((AlarmManager)freContext.getActivity().getSystemService("alarm")).set(0, 1000L * n2, PendingIntent.getBroadcast((Context)freContext.getActivity(), 5943788 + n, intent, 134217728));
    }
    
    private static void scheduleNotificationRepeating(final FREContext freContext, final int n, final long n2, final long n3, final String s, final String s2, final String s3) {
        final Intent intent = new Intent((Context)freContext.getActivity(), (Class)LocalNotifierReceiver.class);
        intent.putExtra("message", s2);
        intent.putExtra("title", s);
        intent.putExtra("extraData", s3);
        ((AlarmManager)freContext.getActivity().getSystemService("alarm")).setInexactRepeating(0, n2 * 1000L, n3 * 1000L, PendingIntent.getBroadcast((Context)freContext.getActivity(), n + 5943788, intent, 134217728));
    }
    
    public static class CancelNotification implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                cancelNotification(freContext, array[0].getAsInt());
                return null;
            }
            catch (Exception ex) {
                Log.d("LocalNotifier", "Parse exception");
                return null;
            }
        }
    }
    
    static class Event
    {
        static final String LOCAL_MESSAGE_RECEIVED = "LOCAL_MESSAGE_RECEIVED";
        static final String LOCAL_MESSAGE_SELECTED = "LOCAL_MESSAGE_SELECTED";
    }
    
    public static class Init implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            return null;
        }
    }
    
    public static class ScheduleNotification implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                scheduleNotification(freContext, array[0].getAsInt(), (long)array[1].getAsDouble(), array[2].getAsString(), array[3].getAsString(), array[4].getAsString());
                return null;
            }
            catch (Exception ex) {
                Log.d("LocalNotifier", "Parse exception");
                return null;
            }
        }
    }
    
    public static class ScheduleNotificationRepeating implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                scheduleNotificationRepeating(freContext, array[0].getAsInt(), (long)array[1].getAsDouble(), (long)array[2].getAsDouble(), array[3].getAsString(), array[4].getAsString(), array[5].getAsString());
                return null;
            }
            catch (Exception ex) {
                Log.d("LocalNotifier", "Parse exception");
                return null;
            }
        }
    }
}
