package com.fusepowered.util;

import android.content.*;

public class SharedPrefsUtil
{
    public static final String CHILD_ACTIVITY_DISPLAYED = "child_activity_displayed_";
    public static final String DISPLAYED_AD_ACTION = "displayed_ad_action";
    public static final String DISPLAYED_AD_ID = "displayed_ad_id";
    public static final String FUSE_PREFS_NAME = "FusePrefsFile";
    public static final String GAME_DATA_REQUEST_ID = "game_data_request_id_";
    public static final String GENDER = "gender";
    public static final String NITIFICATION_SKIP_COUNT = "notification_skip_count_";
    public static final String NITIFICATION_VIEW_COUNT = "notification_view_count_";
    public static final String NUM_PLAYS = "num_plays_";
    public static final String OPT_OUT = "opt_out_";
    public static final String REQ_ID = "request_id_";
    
    private static SharedPreferences getSharedPreferences(final Context context) {
        return context.getSharedPreferences("FusePrefsFile", 0);
    }
    
    public static float readSharedProperty(final Context context, final String s, final float n) {
        return getSharedPreferences(context).getFloat(s, n);
    }
    
    public static int readSharedProperty(final Context context, final String s, final int n) {
        return getSharedPreferences(context).getInt(s, n);
    }
    
    public static long readSharedProperty(final Context context, final String s, final long n) {
        return getSharedPreferences(context).getLong(s, n);
    }
    
    public static String readSharedProperty(final Context context, final String s, final String s2) {
        return getSharedPreferences(context).getString(s, s2);
    }
    
    public static boolean readSharedProperty(final Context context, final String s, final boolean b) {
        return getSharedPreferences(context).getBoolean(s, b);
    }
    
    public static void writeSharedProperty(final Context context, final String s, final float n) {
        final SharedPreferences$Editor edit = getSharedPreferences(context).edit();
        edit.putFloat(s, n);
        edit.commit();
    }
    
    public static void writeSharedProperty(final Context context, final String s, final int n) {
        final SharedPreferences$Editor edit = getSharedPreferences(context).edit();
        edit.putInt(s, n);
        edit.commit();
    }
    
    public static void writeSharedProperty(final Context context, final String s, final long n) {
        final SharedPreferences$Editor edit = getSharedPreferences(context).edit();
        edit.putLong(s, n);
        edit.commit();
    }
    
    public static void writeSharedProperty(final Context context, final String s, final String s2) {
        final SharedPreferences$Editor edit = getSharedPreferences(context).edit();
        edit.putString(s, s2);
        edit.commit();
    }
    
    public static void writeSharedProperty(final Context context, final String s, final boolean b) {
        final SharedPreferences$Editor edit = getSharedPreferences(context).edit();
        edit.putBoolean(s, b);
        edit.commit();
    }
}
