package com.fusepowered.fuseapi;

import android.content.*;
import android.app.*;
import android.os.*;

public class C2DMessaging
{
    public static final String BACKOFF = "backoff";
    private static final long DEFAULT_BACKOFF = 30000L;
    public static final String EXTRA_APPLICATION_PENDING_INTENT = "app";
    public static final String EXTRA_SENDER = "sender";
    public static final String GSF_PACKAGE = "com.google.android.gsf";
    public static final String LAST_REGISTRATION_CHANGE = "last_registration_change";
    static final String PREFERENCE = "com.fusepowered.android.c2dm";
    public static final String REQUEST_REGISTRATION_INTENT = "com.google.android.c2dm.intent.REGISTER";
    public static final String REQUEST_UNREGISTRATION_INTENT = "com.fusepowered.android.c2dm.intent.UNREGISTER";
    private static final String TAG = "C2DMessaging";
    
    public static void clearRegistrationId(final Context context) {
        final SharedPreferences$Editor edit = context.getSharedPreferences("com.fusepowered.android.c2dm", 0).edit();
        edit.putString("dm_registration", "");
        edit.putLong("last_registration_change", System.currentTimeMillis());
        edit.commit();
    }
    
    public static long getBackoff(final Context context) {
        return context.getSharedPreferences("com.fusepowered.android.c2dm", 0).getLong("backoff", 30000L);
    }
    
    public static long getLastRegistrationChange(final Context context) {
        return context.getSharedPreferences("com.fusepowered.android.c2dm", 0).getLong("last_registration_change", 0L);
    }
    
    public static String getRegistrationId(final Context context) {
        return context.getSharedPreferences("com.fusepowered.android.c2dm", 0).getString("dm_registration", "");
    }
    
    public static boolean register(final Context context, final String s) {
        final Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gsf");
        intent.putExtra("app", (Parcelable)PendingIntent.getBroadcast(context, 0, new Intent(), 0));
        intent.putExtra("sender", s);
        return context.startService(intent) != null;
    }
    
    public static void setBackoff(final Context context, final long n) {
        final SharedPreferences$Editor edit = context.getSharedPreferences("com.fusepowered.android.c2dm", 0).edit();
        edit.putLong("backoff", n);
        edit.commit();
    }
    
    public static void setRegistrationId(final Context context, final String s) {
        final SharedPreferences$Editor edit = context.getSharedPreferences("com.fusepowered.android.c2dm", 0).edit();
        edit.putString("dm_registration", s);
        edit.commit();
    }
    
    public static void unregister(final Context context) {
        final Intent intent = new Intent("com.fusepowered.android.c2dm.intent.UNREGISTER");
        intent.setPackage("com.google.android.gsf");
        intent.putExtra("app", (Parcelable)PendingIntent.getBroadcast(context, 0, new Intent(), 0));
        context.startService(intent);
    }
}
