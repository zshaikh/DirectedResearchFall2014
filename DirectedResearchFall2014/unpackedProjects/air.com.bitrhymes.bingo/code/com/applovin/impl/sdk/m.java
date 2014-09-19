package com.applovin.impl.sdk;

import android.content.*;
import android.net.*;
import java.io.*;
import java.util.*;
import org.json.*;

public class m
{
    private static final int[] a;
    private static final int[] b;
    private static final int[] c;
    private static final String d;
    
    static {
        a = new int[] { 7, 4, 2, 1, 11 };
        b = new int[] { 5, 6, 10, 3, 9, 8, 14 };
        c = new int[] { 15, 12, 13 };
        d = m.class.getSimpleName();
    }
    
    private static NetworkInfo a(final Context context) {
        if (n.a("android.permission.ACCESS_NETWORK_STATE", context)) {
            final ConnectivityManager connectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
            if (connectivityManager != null) {
                return connectivityManager.getActiveNetworkInfo();
            }
        }
        return null;
    }
    
    static String a(final AppLovinSdkImpl appLovinSdkImpl) {
        final NetworkInfo a = a(appLovinSdkImpl.getApplicationContext());
        if (a != null) {
            int type;
            if (a != null) {
                type = a.getType();
            }
            else {
                type = Integer.MAX_VALUE;
            }
            int subtype;
            if (a != null) {
                subtype = a.getSubtype();
            }
            else {
                subtype = 0;
            }
            String str;
            if (type == 1) {
                str = "wifi";
            }
            else if (type == 0) {
                if (a(subtype, m.a)) {
                    str = "2g";
                }
                else if (a(subtype, m.b)) {
                    str = "3g";
                }
                else if (a(subtype, m.c)) {
                    str = "4g";
                }
                else {
                    str = "mobile";
                }
            }
            else {
                str = "unknown";
            }
            appLovinSdkImpl.getLogger().d(m.d, "Network " + type + "/" + subtype + " resolved to " + str);
            return str;
        }
        return "unknown";
    }
    
    static String a(final InputStream source) {
        if (source == null) {
            return null;
        }
        final Scanner scanner = new Scanner(source);
        final StringBuffer sb = new StringBuffer();
        while (scanner.hasNextLine()) {
            sb.append(scanner.nextLine());
        }
        return sb.toString();
    }
    
    static String a(final String str, final AppLovinSdkImpl appLovinSdkImpl) {
        if (str == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        final String str2 = (String)appLovinSdkImpl.a(v.f);
        final StringBuffer sb = new StringBuffer();
        sb.append((String)appLovinSdkImpl.a(v.m));
        sb.append(str);
        if (str2 != null && str2.length() > 0) {
            sb.append("?device_token=");
            sb.append(str2);
        }
        else {
            sb.append("?api_key=");
            sb.append(appLovinSdkImpl.getSdkKey());
        }
        return sb.toString();
    }
    
    static JSONObject a(final JSONObject jsonObject) {
        return (JSONObject)jsonObject.getJSONArray("results").get(0);
    }
    
    static void a(final int n, final AppLovinSdkImpl appLovinSdkImpl) {
        final y settingsManager = appLovinSdkImpl.getSettingsManager();
        if (n == 401) {
            settingsManager.a(v.c, "");
            settingsManager.a(v.f, "");
            settingsManager.a(v.o, 0L);
            settingsManager.b();
        }
        else {
            if (n == 418) {
                settingsManager.a(v.a, true);
                settingsManager.b();
                return;
            }
            if (n >= 400 && n < 500) {
                appLovinSdkImpl.f();
                return;
            }
            if (n == 0) {
                appLovinSdkImpl.f();
            }
        }
    }
    
    static void a(final JSONObject jsonObject, final AppLovinSdkImpl appLovinSdkImpl) {
        if (jsonObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        try {
            if (jsonObject.has("settings")) {
                final y settingsManager = appLovinSdkImpl.getSettingsManager();
                settingsManager.a(jsonObject.getJSONObject("settings"));
                settingsManager.b();
                appLovinSdkImpl.getLogger().d(m.d, "New settings processed");
            }
        }
        catch (JSONException ex) {
            appLovinSdkImpl.getLogger().e(m.d, "Unable to parse settings out of API response", (Throwable)ex);
        }
    }
    
    private static boolean a(final int n, final int[] array) {
        for (int length = array.length, i = 0; i < length; ++i) {
            if (array[i] == n) {
                return true;
            }
        }
        return false;
    }
    
    static String b(final String str, final AppLovinSdkImpl appLovinSdkImpl) {
        if (str == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        final StringBuffer sb = new StringBuffer();
        sb.append((String)appLovinSdkImpl.a(v.n));
        sb.append(str);
        return sb.toString();
    }
    
    static void b(final int n, final AppLovinSdkImpl appLovinSdkImpl) {
        if (n == 418) {
            final y settingsManager = appLovinSdkImpl.getSettingsManager();
            settingsManager.a(v.a, true);
            settingsManager.b();
        }
    }
}
