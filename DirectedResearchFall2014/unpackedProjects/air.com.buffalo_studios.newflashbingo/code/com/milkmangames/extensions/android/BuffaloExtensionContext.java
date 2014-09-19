package com.milkmangames.extensions.android;

import android.annotation.*;
import android.util.*;
import org.json.*;
import android.content.pm.*;
import android.provider.*;
import java.util.*;
import android.net.wifi.*;
import com.google.android.gcm.*;
import android.content.*;
import android.app.*;
import android.net.*;
import android.os.*;
import com.adobe.fre.*;

@TargetApi(7)
public class BuffaloExtensionContext extends FREContext
{
    static final String EXTRA_MESSAGE = "message";
    private static final int LOCAL_REQUEST_CODE = 5943788;
    public static final String TAG = "[BUExtension]";
    private static final String WIFI_UNAVAILABLE = "unavailable";
    private static BuffaloExtensionContext instance;
    private static boolean isInForeground;
    private static String lastReferrerId;
    private static ArrayList<PendingFlashEvent> pendingEvents;
    private boolean isFlashInitialized;
    private String lastGCMSender;
    
    static {
        BuffaloExtensionContext.pendingEvents = new ArrayList<PendingFlashEvent>();
    }
    
    private BuffaloExtensionContext() {
        super();
        BuffaloExtensionContext.instance = this;
        BuffaloExtensionContext.isInForeground = true;
    }
    
    private static JSONObject encodeNotificationIntent(final Intent intent) {
        final JSONObject jsonObject = new JSONObject();
        final JSONObject jsonObject2 = new JSONObject();
        final Iterator<String> iterator = intent.getExtras().keySet().iterator();
        while (true) {
            Label_0048: {
                if (iterator.hasNext()) {
                    break Label_0048;
                }
                try {
                    jsonObject.put("extras", (Object)jsonObject2);
                    return jsonObject;
                    final String s = iterator.next();
                    try {
                        jsonObject2.put(s, intent.getExtras().get(s));
                    }
                    catch (JSONException ex) {
                        Log.e("[BUExtension]", "Failed posting extra to callback");
                        ex.printStackTrace();
                    }
                }
                catch (JSONException ex2) {
                    Log.e("[BUExtension]", "Failed posting extras obj to callback");
                    ex2.printStackTrace();
                    return jsonObject;
                }
            }
        }
    }
    
    public static void enqueueFlashEvent(final String str, final String s) {
        if (BuffaloExtensionContext.instance != null) {
            BuffaloExtensionContext.instance.dispatchFlashEvent(str, s);
            return;
        }
        Log.d("[BUExtension]", "Enqueue->" + str);
        BuffaloExtensionContext.pendingEvents.add(new PendingFlashEvent(str, s));
    }
    
    public static BuffaloExtensionContext getInstance() {
        return getInstance(false);
    }
    
    public static BuffaloExtensionContext getInstance(final boolean isFlashInitialized) {
        if (BuffaloExtensionContext.instance == null) {
            BuffaloExtensionContext.instance = new BuffaloExtensionContext();
            BuffaloExtensionContext.instance.isFlashInitialized = isFlashInitialized;
        }
        return BuffaloExtensionContext.instance;
    }
    
    public static String[] getSenderIds(final Context context) {
        final String[] array = { null };
        if (BuffaloExtensionContext.instance != null && BuffaloExtensionContext.instance.lastGCMSender != null) {
            array[0] = BuffaloExtensionContext.instance.lastGCMSender;
            return array;
        }
        array[0] = (BuffaloExtensionContext.instance.lastGCMSender = context.getApplicationContext().getSharedPreferences("bfpref", 0).getString("lklast", ""));
        return array;
    }
    
    public static void onGCMError(final Context context, final String str) {
        Log.d("[BUExtension]", "GCM Error:" + str);
        enqueueFlashEvent("GCM_ERROR", str);
    }
    
    public static void onGCMMessage(final Context context, final Intent intent) {
        final String string = encodeNotificationIntent(intent).toString();
        Log.d("[BUExtension]", "Message received:" + string);
        enqueueFlashEvent("MESSAGE_RECEIVED", string);
        if (BuffaloExtensionContext.isInForeground) {
            Log.d("[BUExtension]", "GCM = in foreground.");
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
                Log.d("[BUExtension]", "MPN:" + packageName);
                className = packageManager.getLaunchIntentForPackage(packageName).getComponent().getClassName();
                Log.d("[BUExtension]", "LCN:" + className);
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
                final String s5 = "[BUExtension]";
                final String s6 = "release lock";
                Log.d(s5, s6);
                WakeLocker.release();
                return;
            }
            catch (Exception ex) {
                Log.d("[BUExtension]", "Message parse failed.");
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
            final String s5 = "[BUExtension]";
            final String s6 = "release lock";
            Log.d(s5, s6);
            WakeLocker.release();
        }
        catch (Exception ex2) {
            Log.e("[BUExtension]", "Failed to locate the air main intent.");
            ex2.printStackTrace();
        }
    }
    
    public static void onGCMRegistered(final Context context, final String str) {
        Log.d("[BUExtension]", "GCM Registered:" + str);
        enqueueFlashEvent("TOKEN_REGISTERED", str);
    }
    
    public static void onGCMUnregistered(final Context context, final String str) {
        Log.d("[BUExtension]", "GCM Unregistered:" + str);
        enqueueFlashEvent("TOKEN_UNREGISTERED", str);
    }
    
    public static void onLocalMessage(final Context context, final Intent intent) {
        final String string = encodeNotificationIntent(intent).toString();
        Log.d("[BUExtension]", "Local Message received..:" + string);
        enqueueFlashEvent("LOCAL_MESSAGE_RECEIVED", string);
        if (BuffaloExtensionContext.isInForeground) {
            Log.d("[BUExtension]", "LN = in foreground.");
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
                Log.d("[BUExtension]", "LMPN:" + packageName);
                className = packageManager.getLaunchIntentForPackage(packageName).getComponent().getClassName();
                Log.d("[BUExtension]", "LLCN:" + className);
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
                final String s5 = "[BUExtension]";
                final String s6 = "release lock";
                Log.d(s5, s6);
                WakeLocker.release();
                return;
            }
            catch (Exception ex) {
                Log.d("[BUExtension]", "Local Message parse failed.");
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
            final String s5 = "[BUExtension]";
            final String s6 = "release lock";
            Log.d(s5, s6);
            WakeLocker.release();
        }
        catch (Exception ex2) {
            Log.e("[BUExtension]", "Failed to locate the air main intent.");
            ex2.printStackTrace();
        }
    }
    
    public static void onReferrerReceived(final String s) {
        BuffaloExtensionContext.lastReferrerId = s;
        Log.d("[BUExtension]", "Referrer received:" + s);
        enqueueFlashEvent("REFERRER_RECEIVED", BuffaloExtensionContext.lastReferrerId);
    }
    
    public void cancelLocalNotification(final int n) {
        ((AlarmManager)this.getActivity().getSystemService("alarm")).cancel(PendingIntent.getBroadcast((Context)this.getActivity(), 5943788 + n, new Intent((Context)this.getActivity(), (Class)LocalReceiver.class), 134217728));
    }
    
    public void dispatchFlashEvent(final String str, final String s) {
        Log.d("[BUExtension]", "Dispatch->" + str);
        this.dispatchStatusEventAsync(str, s);
    }
    
    public void dispatchQueuedEvents() {
        for (final PendingFlashEvent pendingFlashEvent : BuffaloExtensionContext.pendingEvents) {
            this.dispatchFlashEvent(pendingFlashEvent.eventId, pendingFlashEvent.eventData);
        }
        BuffaloExtensionContext.pendingEvents.clear();
    }
    
    @Override
    public void dispose() {
    }
    
    public String getAndroidId() {
        return Settings$Secure.getString(this.getActivity().getApplicationContext().getContentResolver(), "android_id");
    }
    
    public String getAsId() {
        return null;
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, BUGetMacFunction> hashMap = (HashMap<String, BUGetMacFunction>)new HashMap<String, BUTestInvokeFunction>();
        hashMap.put("ffiInitBuffalo", (BUTestInvokeFunction)new BUInitFunction((BUInitFunction)null));
        hashMap.put("ffiGetMacAddress", (BUTestInvokeFunction)new BUGetMacFunction((BUGetMacFunction)null));
        hashMap.put("ffiIsAsIdAvailable", (BUTestInvokeFunction)new BUIsAsIdAvailabledFunction((BUIsAsIdAvailabledFunction)null));
        hashMap.put("ffiIsAndroidIdAvailable", (BUTestInvokeFunction)new BUIsAndroidIdAvailabledFunction((BUIsAndroidIdAvailabledFunction)null));
        hashMap.put("ffiGetAsId", (BUTestInvokeFunction)new BUGetAsIdFunction((BUGetAsIdFunction)null));
        hashMap.put("ffiIsTrackingEnabled", (BUTestInvokeFunction)new BUIsTrackingEnabledFunction((BUIsTrackingEnabledFunction)null));
        hashMap.put("ffiGetAndroidId", (BUTestInvokeFunction)new BUGetAndroidIdFunction((BUGetAndroidIdFunction)null));
        hashMap.put("ffiGetReferrerId", (BUTestInvokeFunction)new BUGetReferrerIdFunction((BUGetReferrerIdFunction)null));
        hashMap.put("ffiInitGCM", (BUTestInvokeFunction)new BUInitGCMFunction((BUInitGCMFunction)null));
        hashMap.put("ffiSetServerRegistration", (BUTestInvokeFunction)new BUSetServerRegistrationFunction((BUSetServerRegistrationFunction)null));
        hashMap.put("ffiUnregisterToken", (BUTestInvokeFunction)new BUUnregisterTokenFunction((BUUnregisterTokenFunction)null));
        hashMap.put("ffiIsTokenRegistered", (BUTestInvokeFunction)new BUIsTokenRegisteredFunction((BUIsTokenRegisteredFunction)null));
        hashMap.put("ffiIsTokenRegisteredServer", (BUTestInvokeFunction)new BUIsTokenRegisteredServerFunction((BUIsTokenRegisteredServerFunction)null));
        hashMap.put("ffiIsGCMAvailable", (BUTestInvokeFunction)new BUIsGCMAvailableFunction((BUIsGCMAvailableFunction)null));
        hashMap.put("ffiIsNetworkReachable", (BUTestInvokeFunction)new BUIsNetworkReachableFunction((BUIsNetworkReachableFunction)null));
        hashMap.put("ffiScheduleOnceLocalNotification", (BUTestInvokeFunction)new BUScheduleOnceLocalNotificaitonFunction((BUScheduleOnceLocalNotificaitonFunction)null));
        hashMap.put("ffiScheduleRepeatingLocalNotification", (BUTestInvokeFunction)new BUScheduleRepeatingLocalNotificaitonFunction((BUScheduleRepeatingLocalNotificaitonFunction)null));
        hashMap.put("ffiCancelLocalNotification", (BUTestInvokeFunction)new BUCancelLocalNotificationFunction((BUCancelLocalNotificationFunction)null));
        hashMap.put("ffiSetInForeground", (BUTestInvokeFunction)new BUSetInForegroundFunction((BUSetInForegroundFunction)null));
        hashMap.put("ffiTestInvoke", new BUTestInvokeFunction((BUTestInvokeFunction)null));
        return (Map<String, FREFunction>)hashMap;
    }
    
    public String getMACAddress() {
        while (true) {
            try {
                final String macAddress = ((WifiManager)this.getActivity().getSystemService("wifi")).getConnectionInfo().getMacAddress();
                Log.d("[BUExtension]", "Get Mac");
                return macAddress;
            }
            catch (Exception ex) {
                Log.d("[BUExtension]", "Wifi access failed->");
                ex.printStackTrace();
                final String macAddress = "unavailable";
                continue;
            }
            break;
        }
    }
    
    public String getReferrerId() {
        return BuffaloExtensionContext.lastReferrerId;
    }
    
    public void initBuffalo() {
        Log.d("[BUExtension]", "Initialize Buffalo");
        final BroadcastReceiver broadcastReceiver = new BroadcastReceiver() {
            public void onReceive(final Context context, final Intent intent) {
                final BuffaloExtensionContext this$0 = BuffaloExtensionContext.this;
                String s;
                if (BuffaloExtensionContext.this.isNetworkReachable()) {
                    s = "true";
                }
                else {
                    s = "false";
                }
                this$0.dispatchFlashEvent("NETWORK_CHANGE", s);
            }
        };
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.getActivity().registerReceiver((BroadcastReceiver)broadcastReceiver, intentFilter);
    }
    
    public void initGCM(final String lastGCMSender) {
        this.lastGCMSender = lastGCMSender;
        final SharedPreferences$Editor edit = this.getActivity().getApplicationContext().getSharedPreferences("bfpref", 0).edit();
        edit.putString("lklast", this.lastGCMSender);
        edit.commit();
        Log.d("[BUExtension]", "Init GCM..");
        final String registrationId = GCMRegistrar.getRegistrationId((Context)this.getActivity());
        Log.d("[BUExtension]", "String res:" + registrationId);
        if (registrationId.equals("")) {
            Log.d("[BUExtension]", "No current token, starting registration...");
            GCMRegistrar.register((Context)this.getActivity(), lastGCMSender);
        }
        else {
            Log.d("[BUExtension]", "Has token already.");
            if (GCMRegistrar.isRegisteredOnServer((Context)this.getActivity())) {
                Log.d("[BUExtension]", "Token already registered.");
                this.dispatchStatusEventAsync("TOKEN_ALREADY_REGISTERED", registrationId);
            }
        }
        Log.d("[BUExtension]", "DUmping event queue...");
        this.dispatchQueuedEvents();
    }
    
    public boolean isAndroidIdAvailable() {
        return true;
    }
    
    public boolean isAsIdAvailable() {
        return false;
    }
    
    public boolean isGCMAvailable() {
        Log.d("[BUExtension]", "Check gcm available...");
        try {
            Log.d("[BUExtension]", "Checking device...");
            GCMRegistrar.checkDevice((Context)this.getActivity());
            Log.d("[BUExtension]", "Checking manifest...");
            final String s = "[BUExtension]";
            final String s2 = "Check manifest configuration...";
            Log.d(s, s2);
            final BuffaloExtensionContext buffaloExtensionContext = this;
            final Activity activity = buffaloExtensionContext.getActivity();
            GCMRegistrar.checkManifest((Context)activity);
            final String s3 = "[BUExtension]";
            final String s4 = "Check complete.";
            Log.d(s3, s4);
            final String s5 = "[BUExtension]";
            final String s6 = "Complete available";
            Log.d(s5, s6);
            return true;
        }
        catch (UnsupportedOperationException ex) {
            Log.d("[BUExtension]", "Device fail: unsupported.");
            Log.e("[BUExtension]", "Notifications not supported on this device.");
            return false;
        }
        try {
            final String s = "[BUExtension]";
            final String s2 = "Check manifest configuration...";
            Log.d(s, s2);
            final BuffaloExtensionContext buffaloExtensionContext = this;
            final Activity activity = buffaloExtensionContext.getActivity();
            GCMRegistrar.checkManifest((Context)activity);
            final String s3 = "[BUExtension]";
            final String s4 = "Check complete.";
            Log.d(s3, s4);
            final String s5 = "[BUExtension]";
            final String s6 = "Complete available";
            Log.d(s5, s6);
            return true;
        }
        catch (IllegalStateException ex2) {
            Log.d("[BUExtension]", "Manifest failed configuration.");
            Log.e("[BUExtension]", "Manifest is not properly configured.");
            return false;
        }
    }
    
    public boolean isNetworkAvailable() {
        return ((ConnectivityManager)this.getActivity().getSystemService("connectivity")).getActiveNetworkInfo() != null;
    }
    
    public boolean isNetworkReachable() {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)this.getActivity().getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }
    
    public boolean isTokenRegistered() {
        return GCMRegistrar.isRegistered((Context)this.getActivity());
    }
    
    public boolean isTokenRegisteredServer() {
        return GCMRegistrar.isRegisteredOnServer((Context)this.getActivity());
    }
    
    public boolean isTrackingEnabled() {
        return true;
    }
    
    public void scheduleOnceLocalNotification(final int n, final long n2, final String s, final String s2, final String s3) {
        final Intent intent = new Intent((Context)this.getActivity(), (Class)LocalReceiver.class);
        intent.putExtra("message", s2);
        intent.putExtra("title", s);
        intent.putExtra("extraData", s3);
        ((AlarmManager)this.getActivity().getSystemService("alarm")).set(0, 1000L * n2, PendingIntent.getBroadcast((Context)this.getActivity(), 5943788 + n, intent, 134217728));
    }
    
    public void scheduleRepeatingLocalNotification(final int n, final long n2, final long n3, final String s, final String s2, final String s3) {
        final Intent intent = new Intent((Context)this.getActivity(), (Class)LocalReceiver.class);
        intent.putExtra("message", s2);
        intent.putExtra("title", s);
        intent.putExtra("extraData", s3);
        ((AlarmManager)this.getActivity().getSystemService("alarm")).setInexactRepeating(0, 1000L * n2, 1000L * n3, PendingIntent.getBroadcast((Context)this.getActivity(), 5943788 + n, intent, 134217728));
    }
    
    public void setInForeground(final boolean isInForeground) {
        BuffaloExtensionContext.isInForeground = isInForeground;
    }
    
    public boolean setServerRegistration(final boolean b) {
        if (GCMRegistrar.isRegisteredOnServer((Context)this.getActivity()) != b) {
            GCMRegistrar.setRegisteredOnServer((Context)this.getActivity(), b);
            return true;
        }
        return false;
    }
    
    public void testInvoke() {
        Log.d("[BUExtension]", "test invoke!");
        final Intent intent = this.getActivity().getIntent();
        Log.d("[BUExtension]", "inIntent:" + intent);
        final Bundle extras = intent.getExtras();
        Log.d("[BUExtension]", "in extras:" + extras);
        if (extras != null) {
            if (extras.containsKey("bufLocal")) {
                enqueueFlashEvent("LOCAL_MESSAGE_SELECTED", extras.getString("bufLocal"));
            }
            if (extras.containsKey("bufGcm")) {
                enqueueFlashEvent("GCM_MESSAGE_SELECTED", extras.getString("bufGcm"));
            }
        }
    }
    
    public boolean unregisterToken() {
        if (GCMRegistrar.isRegistered((Context)this.getActivity())) {
            GCMRegistrar.unregister((Context)this.getActivity());
            return true;
        }
        return false;
    }
    
    private class BUCancelLocalNotificationFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                BuffaloExtensionContext.this.cancelLocalNotification(array[0].getAsInt());
                return null;
            }
            catch (Exception ex) {
                Log.d("[BUExtension]", "Parse exception");
                return null;
            }
        }
    }
    
    private class BUGetAndroidIdFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final String androidId = BuffaloExtensionContext.this.getAndroidId();
            try {
                return FREObject.newObject(androidId);
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUGetAsIdFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final String asId = BuffaloExtensionContext.this.getAsId();
            try {
                return FREObject.newObject(asId);
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUGetMacFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final String macAddress = BuffaloExtensionContext.this.getMACAddress();
            try {
                return FREObject.newObject(macAddress);
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUGetReferrerIdFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final String referrerId = BuffaloExtensionContext.this.getReferrerId();
            try {
                return FREObject.newObject(referrerId);
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUInitFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                BuffaloExtensionContext.this.initBuffalo();
                return null;
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class BUInitGCMFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                BuffaloExtensionContext.this.initGCM(array[0].getAsString());
                return null;
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", ex.getMessage());
                return null;
            }
        }
    }
    
    private class BUIsAndroidIdAvailabledFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final boolean androidIdAvailable = BuffaloExtensionContext.this.isAndroidIdAvailable();
            try {
                return FREObject.newObject(androidIdAvailable);
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUIsAsIdAvailabledFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final boolean asIdAvailable = BuffaloExtensionContext.this.isAsIdAvailable();
            try {
                return FREObject.newObject(asIdAvailable);
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUIsGCMAvailableFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            Log.d("[BUExtension]", "call isGCMAvailable");
            final boolean gcmAvailable = BuffaloExtensionContext.this.isGCMAvailable();
            Log.d("[BUExtension]", "GCM Result:+" + gcmAvailable);
            try {
                return FREObject.newObject(gcmAvailable);
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUIsNetworkReachableFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final boolean networkReachable = BuffaloExtensionContext.this.isNetworkReachable();
            try {
                return FREObject.newObject(networkReachable);
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUIsTokenRegisteredFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final boolean tokenRegistered = BuffaloExtensionContext.this.isTokenRegistered();
            try {
                return FREObject.newObject(tokenRegistered);
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUIsTokenRegisteredServerFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final boolean tokenRegisteredServer = BuffaloExtensionContext.this.isTokenRegisteredServer();
            try {
                return FREObject.newObject(tokenRegisteredServer);
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUIsTrackingEnabledFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final boolean trackingEnabled = BuffaloExtensionContext.this.isTrackingEnabled();
            try {
                return FREObject.newObject(trackingEnabled);
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUScheduleOnceLocalNotificaitonFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                BuffaloExtensionContext.this.scheduleOnceLocalNotification(array[0].getAsInt(), (long)array[1].getAsDouble(), array[2].getAsString(), array[3].getAsString(), array[4].getAsString());
                return null;
            }
            catch (Exception ex) {
                Log.d("[BUExtension]", "Parse exception");
                return null;
            }
        }
    }
    
    private class BUScheduleRepeatingLocalNotificaitonFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                BuffaloExtensionContext.this.scheduleRepeatingLocalNotification(array[0].getAsInt(), (long)array[1].getAsDouble(), (long)array[2].getAsDouble(), array[3].getAsString(), array[4].getAsString(), array[5].getAsString());
                return null;
            }
            catch (Exception ex) {
                Log.d("[BUExtension]", "Parse exception");
                return null;
            }
        }
    }
    
    private class BUSetInForegroundFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                BuffaloExtensionContext.this.setInForeground(array[0].getAsBool());
                return null;
            }
            catch (Exception ex) {
                Log.d("[BUExtension]", "Parse exception");
                return null;
            }
        }
    }
    
    private class BUSetServerRegistrationFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                return FREObject.newObject(BuffaloExtensionContext.this.setServerRegistration(array[0].getAsBool()));
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private class BUTestInvokeFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            BuffaloExtensionContext.this.testInvoke();
            return null;
        }
    }
    
    private class BUUnregisterTokenFunction implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                return FREObject.newObject(BuffaloExtensionContext.this.unregisterToken());
            }
            catch (Exception ex) {
                Log.e("[BUExtension]", "Thread Exception");
                return null;
            }
        }
    }
    
    private static class PendingFlashEvent
    {
        public String eventData;
        public String eventId;
        
        public PendingFlashEvent(final String eventId, final String eventData) {
            super();
            this.eventId = eventId;
            this.eventData = eventData;
        }
    }
}
