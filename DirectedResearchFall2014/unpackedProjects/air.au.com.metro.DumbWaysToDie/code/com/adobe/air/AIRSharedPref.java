package com.adobe.air;

import com.adobe.air.utils.*;
import android.content.pm.*;
import android.content.*;

public final class AIRSharedPref
{
    private static final String LOG_TAG = "AIRSharedPref";
    private static String SP_CONFIG_DATA;
    private static String SP_CONFIG_DATA_DEFAULT;
    private static String SP_CONFIG_REQUEST_TIME;
    private static String SP_CONFIG_REQUEST_TIME_DEFAULT;
    
    static {
        AIRSharedPref.SP_CONFIG_REQUEST_TIME = "AIRSharedPref.ConfigRequestTime";
        AIRSharedPref.SP_CONFIG_REQUEST_TIME_DEFAULT = null;
        AIRSharedPref.SP_CONFIG_DATA = "AIRSharedPref.ConfigData";
        AIRSharedPref.SP_CONFIG_DATA_DEFAULT = "\n";
    }
    
    public static String getConfigData(final Context context) {
        String s = AIRSharedPref.SP_CONFIG_DATA_DEFAULT;
        while (true) {
            try {
                s = context.createPackageContext(Utils.getRuntimePackageName(), 4).getSharedPreferences(getPreferencesKey(), 1).getString(AIRSharedPref.SP_CONFIG_DATA, AIRSharedPref.SP_CONFIG_DATA_DEFAULT);
                if (s != AIRSharedPref.SP_CONFIG_DATA_DEFAULT) {
                    return s;
                }
                return s;
            }
            catch (PackageManager$NameNotFoundException ex) {
                continue;
            }
            catch (ClassCastException ex2) {
                continue;
            }
            break;
        }
    }
    
    public static String getConfigRequestTime(final Context context) {
        String s = AIRSharedPref.SP_CONFIG_REQUEST_TIME_DEFAULT;
        while (true) {
            try {
                s = context.createPackageContext(Utils.getRuntimePackageName(), 4).getSharedPreferences(getPreferencesKey(), 1).getString(AIRSharedPref.SP_CONFIG_REQUEST_TIME, AIRSharedPref.SP_CONFIG_REQUEST_TIME_DEFAULT);
                if (s != AIRSharedPref.SP_CONFIG_REQUEST_TIME_DEFAULT) {
                    return s;
                }
                return s;
            }
            catch (PackageManager$NameNotFoundException ex) {
                continue;
            }
            catch (ClassCastException ex2) {
                continue;
            }
            break;
        }
    }
    
    private static String getPreferencesKey() {
        return Utils.getRuntimePackageName() + ".AIRSharedPref";
    }
    
    public static boolean setConfigData(final Context context, final String s) {
        final SharedPreferences$Editor edit = context.getSharedPreferences(getPreferencesKey(), 1).edit();
        edit.putString(AIRSharedPref.SP_CONFIG_DATA, s);
        return edit.commit();
    }
    
    public static boolean setConfigRequestTime(final Context context, final String s) {
        final SharedPreferences$Editor edit = context.getSharedPreferences(getPreferencesKey(), 1).edit();
        edit.putString(AIRSharedPref.SP_CONFIG_REQUEST_TIME, s);
        return edit.commit();
    }
}
