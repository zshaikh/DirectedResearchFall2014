package com.buffalostudios.aneutils.notifier;

import android.util.*;
import com.google.android.gcm.*;
import android.content.*;
import com.buffalostudios.aneutils.*;
import android.app.*;
import android.content.pm.*;
import com.adobe.fre.*;

public class PushNotifier
{
    private static final String TAG = "PushNotifier";
    private static String _lastGCMSender;
    
    public static String[] getGCMSenderIds(final Context context) {
        final String[] array = { null };
        if (PushNotifier._lastGCMSender != null) {
            array[0] = PushNotifier._lastGCMSender;
            return array;
        }
        array[0] = (PushNotifier._lastGCMSender = context.getApplicationContext().getSharedPreferences("bfpref", 0).getString("lklast", ""));
        return array;
    }
    
    private static void initGCM(final String lastGCMSender) {
        final ANEContext freContext = ANEContext.getFREContext();
        PushNotifier._lastGCMSender = lastGCMSender;
        final SharedPreferences$Editor edit = freContext.getActivity().getApplicationContext().getSharedPreferences("bfpref", 0).edit();
        edit.putString("lklast", PushNotifier._lastGCMSender);
        edit.commit();
        Log.d("PushNotifier", "Init GCM..");
        final String registrationId = GCMRegistrar.getRegistrationId((Context)freContext.getActivity());
        Log.d("PushNotifier", "String res:" + registrationId);
        if (registrationId.equals("")) {
            Log.d("PushNotifier", "No current token, starting registration...");
            GCMRegistrar.register((Context)freContext.getActivity(), lastGCMSender);
        }
        else {
            Log.d("PushNotifier", "Has token already.");
            if (GCMRegistrar.isRegisteredOnServer((Context)freContext.getActivity())) {
                Log.d("PushNotifier", "Token already registered.");
                ANEContext.dispatchFlashEvent("GCM_ALREADY_REGISTERED", registrationId);
            }
        }
    }
    
    private static boolean isGCMAvailable(final FREContext freContext) {
        Log.d("PushNotifier", "Check gcm available...");
        try {
            Log.d("PushNotifier", "Checking device...");
            GCMRegistrar.checkDevice((Context)freContext.getActivity());
            Log.d("PushNotifier", "Checking manifest...");
            final String s = "PushNotifier";
            final String s2 = "Check manifest configuration...";
            Log.d(s, s2);
            final FREContext freContext2 = freContext;
            final Activity activity = freContext2.getActivity();
            GCMRegistrar.checkManifest((Context)activity);
            final String s3 = "PushNotifier";
            final String s4 = "Check complete.";
            Log.d(s3, s4);
            final String s5 = "PushNotifier";
            final String s6 = "Complete available";
            Log.d(s5, s6);
            return true;
        }
        catch (UnsupportedOperationException ex) {
            Log.d("PushNotifier", "Device fail: unsupported.");
            Log.e("PushNotifier", "Notifications not supported on this device.");
            return false;
        }
        try {
            final String s = "PushNotifier";
            final String s2 = "Check manifest configuration...";
            Log.d(s, s2);
            final FREContext freContext2 = freContext;
            final Activity activity = freContext2.getActivity();
            GCMRegistrar.checkManifest((Context)activity);
            final String s3 = "PushNotifier";
            final String s4 = "Check complete.";
            Log.d(s3, s4);
            final String s5 = "PushNotifier";
            final String s6 = "Complete available";
            Log.d(s5, s6);
            return true;
        }
        catch (IllegalStateException ex2) {
            Log.d("PushNotifier", "Manifest failed configuration.");
            Log.e("PushNotifier", "Manifest is not properly configured.");
            return false;
        }
    }
    
    private static boolean isGCMRegistered(final FREContext freContext) {
        return GCMRegistrar.isRegistered((Context)freContext.getActivity());
    }
    
    private static boolean isGCMRegisteredOnServer(final FREContext freContext) {
        return GCMRegistrar.isRegisteredOnServer((Context)freContext.getActivity());
    }
    
    public static void onGCMError(final Context context, final String str) {
        Log.d("PushNotifier", "GCM Error:" + str);
        ANEContext.dispatchFlashEvent("GCM_ERROR", str);
    }
    
    public static void onGCMMessage(final Context context, final Intent intent) {
        Log.d("PushNotifier", "Wake lock.");
        WakeLocker.acquire(context);
        final String string = NotifierUtils.encodeNotificationIntent(intent).toString();
        Log.d("PushNotifier", "Message received:" + string);
        ANEContext.dispatchFlashEvent("GCM_MESSAGE_RECEIVED", string);
        if (ANEUtils.getInForeground()) {
            Log.d("PushNotifier", "GCM = in foreground.");
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
                Log.d("PushNotifier", "MPN:" + packageName);
                className = packageManager.getLaunchIntentForPackage(packageName).getComponent().getClassName();
                Log.d("PushNotifier", "LCN:" + className);
                final Context context2 = context;
                final String s = className;
                final Class<?> clazz = Class.forName(s);
                final Intent intent2 = new Intent(context2, (Class)clazz);
                final Intent intent4;
                final Intent intent3 = intent4 = intent2;
                final String s2 = "bufGcm";
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
                final String s5 = "PushNotifier";
                final String s6 = "release lock";
                Log.d(s5, s6);
                WakeLocker.release();
                return;
            }
            catch (Exception ex) {
                Log.d("PushNotifier", "Message parse failed.");
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
            final String s2 = "bufGcm";
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
            final String s5 = "PushNotifier";
            final String s6 = "release lock";
            Log.d(s5, s6);
            WakeLocker.release();
        }
        catch (Exception ex2) {
            Log.e("PushNotifier", "Failed to locate the air main intent.");
            ex2.printStackTrace();
        }
    }
    
    public static void onGCMRegistered(final Context context, final String str) {
        Log.d("PushNotifier", "GCM Registered:" + str);
        ANEContext.dispatchFlashEvent("GCM_REGISTERED", str);
    }
    
    public static void onGCMUnregistered(final Context context, final String str) {
        Log.d("PushNotifier", "GCM Unregistered:" + str);
        ANEContext.dispatchFlashEvent("GCM_UNREGISTERED", str);
    }
    
    private static boolean setGCMRegisteredOnServer(final FREContext freContext, final boolean b) {
        if (GCMRegistrar.isRegisteredOnServer((Context)freContext.getActivity()) != b) {
            GCMRegistrar.setRegisteredOnServer((Context)freContext.getActivity(), b);
            return true;
        }
        return false;
    }
    
    private static boolean unregisterGCM(final FREContext freContext) {
        if (GCMRegistrar.isRegistered((Context)freContext.getActivity())) {
            GCMRegistrar.unregister((Context)freContext.getActivity());
            return true;
        }
        return false;
    }
    
    static class Event
    {
        static final String GCM_ALREADY_REGISTERED = "GCM_ALREADY_REGISTERED";
        static final String GCM_ERROR = "GCM_ERROR";
        static final String GCM_MESSAGE_RECEIVED = "GCM_MESSAGE_RECEIVED";
        static final String GCM_MESSAGE_SELECTED = "GCM_MESSAGE_SELECTED";
        static final String GCM_REGISTERED = "GCM_REGISTERED";
        static final String GCM_UNREGISTERED = "GCM_UNREGISTERED";
    }
    
    public static class Init implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            return null;
        }
    }
    
    public static class InitGCM implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                initGCM(array[0].getAsString());
                return null;
            }
            catch (Exception ex) {
                Log.e("PushNotifier", ex.getMessage());
                return null;
            }
        }
    }
    
    public static class IsGCMAvailable implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            Log.d("PushNotifier", "call isGCMAvailable");
            final boolean access$0 = isGCMAvailable(freContext);
            Log.d("PushNotifier", "GCM Result:+" + access$0);
            try {
                return FREObject.newObject(access$0);
            }
            catch (Exception ex) {
                Log.e("PushNotifier", "Thread Exception");
                return null;
            }
        }
    }
    
    public static class IsGCMRegistered implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final boolean access$1 = isGCMRegistered(freContext);
            try {
                return FREObject.newObject(access$1);
            }
            catch (Exception ex) {
                Log.e("PushNotifier", "Thread Exception");
                return null;
            }
        }
    }
    
    public static class IsGCMRegisteredOnServer implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final boolean access$2 = isGCMRegisteredOnServer(freContext);
            try {
                return FREObject.newObject(access$2);
            }
            catch (Exception ex) {
                Log.e("PushNotifier", "Thread Exception");
                return null;
            }
        }
    }
    
    public static class SetGCMRegisteredOnServer implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                return FREObject.newObject(setGCMRegisteredOnServer(freContext, array[0].getAsBool()));
            }
            catch (Exception ex) {
                Log.e("PushNotifier", "Thread Exception");
                return null;
            }
        }
    }
    
    public static class UnregisterGCM implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                return FREObject.newObject(unregisterGCM(freContext));
            }
            catch (Exception ex) {
                Log.e("PushNotifier", "Thread Exception");
                return null;
            }
        }
    }
}
