package com.sbstrm.appirater;

import android.app.*;
import android.util.*;
import android.net.*;
import android.content.*;

public class Appirater
{
    public static String APP_ID;
    public static String APP_TITLE;
    private static final int DAYS_BEFORE_REMINDING = 1;
    private static final int DAYS_UNTIL_PROMPT = 2;
    private static final int LAUNCHES_UNTIL_PROMPT = 5;
    private static final String MARKET_URL = "market://details?id=";
    private static final String PREF_APP_VERSION_CODE = "versioncode";
    private static final String PREF_DATE_FIRST_LAUNCHED = "date_firstlaunch";
    private static final String PREF_DATE_REMINDER_PRESSED = "date_reminder_pressed";
    private static final String PREF_DONT_SHOW = "dontshow";
    private static final String PREF_LAUNCH_COUNT = "launch_count";
    private static final String PREF_RATE_CLICKED = "rateclicked";
    private static final String RATE_MESSAGE = "If you enjoy using %s, would you mind taking a moment to rate it? Thanks for your support!";
    private static final String RATE_TITLE = "Rate %s";
    private static final int TEST_MODE;
    
    static {
        Appirater.APP_ID = "";
        Appirater.APP_TITLE = "";
    }
    
    public static void appLaunched(final Context context) {
        final SharedPreferences sharedPreferences = context.getSharedPreferences(String.valueOf(context.getPackageName()) + ".apprater", 0);
        if (0 == 0 && (sharedPreferences.getBoolean("dontshow", false) || sharedPreferences.getBoolean("rateclicked", false))) {
            return;
        }
        final SharedPreferences$Editor edit = sharedPreferences.edit();
        if (1 == 0) {
            showRateDialog(context, edit);
            return;
        }
    Label_0189_Outer:
        while (true) {
            long long1 = sharedPreferences.getLong("launch_count", 0L);
            final long long2 = sharedPreferences.getLong("date_firstlaunch", 0L);
            final long long3 = sharedPreferences.getLong("date_reminder_pressed", 0L);
            while (true) {
                while (true) {
                    try {
                        final int versionCode = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                        if (sharedPreferences.getInt("versioncode", 0) != versionCode) {
                            long1 = 0L;
                        }
                        edit.putInt("versioncode", versionCode);
                        final long n = long1 + 1L;
                        edit.putLong("launch_count", n);
                        if (long2 == 0L) {
                            final long currentTimeMillis = System.currentTimeMillis();
                            edit.putLong("date_firstlaunch", currentTimeMillis);
                            if (n >= 5L && System.currentTimeMillis() >= currentTimeMillis + 172800000L) {
                                if (long3 == 0L) {
                                    showRateDialog(context, edit);
                                }
                                else if (System.currentTimeMillis() >= 86400000L + long3) {
                                    showRateDialog(context, edit);
                                }
                            }
                            edit.commit();
                            return;
                        }
                    }
                    catch (Exception ex) {
                        continue Label_0189_Outer;
                    }
                    break;
                }
                final long currentTimeMillis = long2;
                continue;
            }
        }
    }
    
    private static void showRateDialog(final Context context, final SharedPreferences$Editor sharedPreferences$Editor) {
        final String app_TITLE = Appirater.APP_TITLE;
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(context);
        String packageName = "";
        alertDialog$Builder.setTitle((CharSequence)String.format("Rate %s", app_TITLE));
        while (true) {
            try {
                packageName = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
                Log.d("Appirater", "PackageName: " + packageName);
                final String string = "market://details?id=" + Appirater.APP_ID;
                alertDialog$Builder.setMessage((CharSequence)String.format("If you enjoy using %s, would you mind taking a moment to rate it? Thanks for your support!", app_TITLE));
                alertDialog$Builder.setPositiveButton((CharSequence)"Rate", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                    public void onClick(final DialogInterface dialogInterface, final int n) {
                        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                        if (sharedPreferences$Editor != null) {
                            sharedPreferences$Editor.putBoolean("rateclicked", true);
                            sharedPreferences$Editor.commit();
                        }
                        dialogInterface.dismiss();
                    }
                }).setNeutralButton((CharSequence)"Remind me later", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                    public void onClick(final DialogInterface dialogInterface, final int n) {
                        if (sharedPreferences$Editor != null) {
                            sharedPreferences$Editor.putLong("date_reminder_pressed", System.currentTimeMillis());
                            sharedPreferences$Editor.commit();
                        }
                        dialogInterface.dismiss();
                    }
                }).setNegativeButton((CharSequence)"No, Thanks", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                    public void onClick(final DialogInterface dialogInterface, final int n) {
                        if (sharedPreferences$Editor != null) {
                            sharedPreferences$Editor.putBoolean("dontshow", true);
                            sharedPreferences$Editor.commit();
                        }
                        dialogInterface.dismiss();
                    }
                });
                alertDialog$Builder.create().show();
            }
            catch (Exception ex) {
                ex.printStackTrace();
                continue;
            }
            break;
        }
    }
}
