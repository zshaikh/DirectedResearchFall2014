package com.google.ads.util;

import android.media.*;
import android.util.*;
import android.app.*;
import android.provider.*;
import java.nio.*;
import android.location.*;
import android.webkit.*;
import java.net.*;
import java.math.*;
import java.security.*;
import org.json.*;
import com.google.ads.*;
import android.net.*;
import java.util.*;
import android.content.pm.*;
import android.content.*;
import android.os.*;
import java.io.*;

public final class AdUtil
{
    public static final int a;
    private static Boolean b;
    private static String c;
    private static String d;
    private static String e;
    private static AudioManager f;
    private static boolean g;
    private static boolean h;
    private static String i;
    
    static {
        a = a(Build$VERSION.SDK);
        AdUtil.b = null;
        AdUtil.c = null;
        AdUtil.e = null;
        AdUtil.g = true;
        AdUtil.h = false;
        AdUtil.i = null;
    }
    
    public static int a() {
        if (AdUtil.a >= 9) {
            return 6;
        }
        return 0;
    }
    
    public static int a(final Context context, final int n) {
        return (int)TypedValue.applyDimension(1, (float)n, context.getResources().getDisplayMetrics());
    }
    
    public static int a(final Context context, final DisplayMetrics displayMetrics) {
        if (AdUtil.a >= 4) {
            return com.google.ads.util.e.a(context, displayMetrics);
        }
        return displayMetrics.heightPixels;
    }
    
    public static int a(final String s) {
        try {
            return Integer.parseInt(s);
        }
        catch (NumberFormatException ex) {
            com.google.ads.util.b.e("The Android SDK version couldn't be parsed to an int: " + Build$VERSION.SDK);
            com.google.ads.util.b.e("Defaulting to Android SDK version 3.");
            return 3;
        }
    }
    
    public static DisplayMetrics a(final Activity activity) {
        if (activity.getWindowManager() == null) {
            return null;
        }
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }
    
    public static String a(final Context context) {
        if (AdUtil.c == null) {
            final String string = Settings$Secure.getString(context.getContentResolver(), "android_id");
            String s;
            if (string == null || c()) {
                s = b("emulator");
            }
            else {
                s = b(string);
            }
            if (s == null) {
                return null;
            }
            AdUtil.c = s.toUpperCase(Locale.US);
        }
        return AdUtil.c;
    }
    
    public static String a(final Readable readable) throws IOException {
        final StringBuilder sb = new StringBuilder();
        final CharBuffer allocate = CharBuffer.allocate(2048);
        while (true) {
            final int read = readable.read(allocate);
            if (read == -1) {
                break;
            }
            allocate.flip();
            sb.append(allocate, 0, read);
        }
        return sb.toString();
    }
    
    public static String a(final Map<String, Object> map) {
        try {
            return b(map).toString();
        }
        catch (JSONException ex) {
            com.google.ads.util.b.d("JsonException in serialization: ", (Throwable)ex);
            return null;
        }
    }
    
    public static HashMap<String, Object> a(final Location location) {
        if (location == null) {
            return null;
        }
        final HashMap<String, Long> hashMap = (HashMap<String, Long>)new HashMap<String, Object>();
        hashMap.put("time", 1000L * location.getTime());
        hashMap.put("lat", (long)(1.0E7 * location.getLatitude()));
        hashMap.put("long", (long)(1.0E7 * location.getLongitude()));
        hashMap.put("radius", (long)(1000.0f * location.getAccuracy()));
        return (HashMap<String, Object>)hashMap;
    }
    
    public static JSONArray a(final Set<Object> set) throws JSONException {
        final JSONArray jsonArray = new JSONArray();
        if (set != null && !set.isEmpty()) {
            for (final Map<String, Object> next : set) {
                if (next instanceof String || next instanceof Integer || next instanceof Double || next instanceof Long || next instanceof Float) {
                    jsonArray.put((Object)next);
                }
                else if (next instanceof Map) {
                    try {
                        jsonArray.put((Object)b(next));
                    }
                    catch (ClassCastException ex) {
                        com.google.ads.util.b.d("Unknown map type in json serialization: ", ex);
                    }
                }
                else if (next instanceof Set) {
                    try {
                        jsonArray.put((Object)a((Set<Object>)next));
                    }
                    catch (ClassCastException ex2) {
                        com.google.ads.util.b.d("Unknown map type in json serialization: ", ex2);
                    }
                }
                else {
                    com.google.ads.util.b.e("Unknown value in json serialization: " + next);
                }
            }
        }
        return jsonArray;
    }
    
    public static void a(final WebView webView) {
        webView.getSettings().setUserAgentString(i(webView.getContext().getApplicationContext()));
    }
    
    public static void a(final HttpURLConnection httpURLConnection, final Context context) {
        httpURLConnection.setRequestProperty("User-Agent", i(context));
    }
    
    public static void a(final boolean g) {
        AdUtil.g = g;
    }
    
    public static boolean a(final int n, final int n2, final String str) {
        if ((n & n2) == 0x0) {
            com.google.ads.util.b.b("The android:configChanges value of the com.google.ads.AdActivity must include " + str + ".");
            return false;
        }
        return true;
    }
    
    public static boolean a(final Context context, final String s) {
        try {
            context.getPackageManager().getPackageInfo(s, 0);
            return true;
        }
        catch (PackageManager$NameNotFoundException ex) {
            return false;
        }
    }
    
    public static boolean a(final Intent intent, final Context context) {
        return context.getPackageManager().resolveActivity(intent, 65536) != null;
    }
    
    public static boolean a(final Uri uri) {
        if (uri == null) {
            return false;
        }
        final String scheme = uri.getScheme();
        return "http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
    }
    
    static boolean a(final d d) {
        d d2;
        if (d == null) {
            d2 = d.d;
        }
        else {
            d2 = d;
        }
        return d2.equals(d.e) || d2.equals(d.f);
    }
    
    public static int b() {
        if (AdUtil.a >= 9) {
            return 7;
        }
        return 1;
    }
    
    public static int b(final Context context, final DisplayMetrics displayMetrics) {
        if (AdUtil.a >= 4) {
            return com.google.ads.util.e.b(context, displayMetrics);
        }
        return displayMetrics.widthPixels;
    }
    
    public static String b(final String s) {
        String format = null;
        if (s == null) {
            return format;
        }
        final int length = s.length();
        format = null;
        if (length <= 0) {
            return format;
        }
        try {
            final MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(s.getBytes(), 0, s.length());
            format = String.format(Locale.US, "%032X", new BigInteger(1, instance.digest()));
            return format;
        }
        catch (NoSuchAlgorithmException ex) {
            return s.substring(0, 32);
        }
    }
    
    public static HashMap<String, String> b(final Uri uri) {
        HashMap<String, String> hashMap;
        if (uri == null) {
            hashMap = null;
        }
        else {
            hashMap = new HashMap<String, String>();
            final String encodedQuery = uri.getEncodedQuery();
            if (encodedQuery != null) {
                for (final String s : encodedQuery.split("&")) {
                    final int index = s.indexOf("=");
                    if (index < 0) {
                        hashMap.put(Uri.decode(s), null);
                    }
                    else {
                        hashMap.put(Uri.decode(s.substring(0, index)), Uri.decode(s.substring(index + 1, s.length())));
                    }
                }
            }
        }
        return hashMap;
    }
    
    public static JSONObject b(final Map<String, Object> map) throws JSONException {
        final JSONObject jsonObject = new JSONObject();
        if (map == null || map.isEmpty()) {
            return jsonObject;
        }
        for (final String s : map.keySet()) {
            final Map<String, Object> value = map.get(s);
            if (value instanceof String || value instanceof Integer || value instanceof Double || value instanceof Long || value instanceof Float) {
                jsonObject.put(s, (Object)value);
            }
            else if (value instanceof Map) {
                try {
                    jsonObject.put(s, (Object)b(value));
                }
                catch (ClassCastException ex) {
                    com.google.ads.util.b.d("Unknown map type in json serialization: ", ex);
                }
            }
            else if (value instanceof Set) {
                try {
                    jsonObject.put(s, (Object)a((Set<Object>)value));
                }
                catch (ClassCastException ex2) {
                    com.google.ads.util.b.d("Unknown map type in json serialization: ", ex2);
                }
            }
            else {
                com.google.ads.util.b.e("Unknown value in json serialization: " + value);
            }
        }
        return jsonObject;
    }
    
    public static boolean b(final Context context) {
        final PackageManager packageManager = context.getPackageManager();
        final String packageName = context.getPackageName();
        if (packageManager.checkPermission("android.permission.INTERNET", packageName) == -1) {
            com.google.ads.util.b.b("INTERNET permissions must be enabled in AndroidManifest.xml.");
            return false;
        }
        if (packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", packageName) == -1) {
            com.google.ads.util.b.b("ACCESS_NETWORK_STATE permissions must be enabled in AndroidManifest.xml.");
            return false;
        }
        return true;
    }
    
    public static boolean c() {
        return a((d)null);
    }
    
    public static boolean c(final Context context) {
        if (AdUtil.b != null) {
            return AdUtil.b;
        }
        final ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(new Intent(context, (Class)AdActivity.class), 65536);
        AdUtil.b = true;
        if (resolveActivity == null || resolveActivity.activityInfo == null) {
            com.google.ads.util.b.b("Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml.");
            AdUtil.b = false;
        }
        else {
            if (!a(resolveActivity.activityInfo.configChanges, 16, "keyboard")) {
                AdUtil.b = false;
            }
            if (!a(resolveActivity.activityInfo.configChanges, 32, "keyboardHidden")) {
                AdUtil.b = false;
            }
            if (!a(resolveActivity.activityInfo.configChanges, 128, "orientation")) {
                AdUtil.b = false;
            }
            if (!a(resolveActivity.activityInfo.configChanges, 256, "screenLayout")) {
                AdUtil.b = false;
            }
            if (!a(resolveActivity.activityInfo.configChanges, 512, "uiMode")) {
                AdUtil.b = false;
            }
            if (!a(resolveActivity.activityInfo.configChanges, 1024, "screenSize")) {
                AdUtil.b = false;
            }
            if (!a(resolveActivity.activityInfo.configChanges, 2048, "smallestScreenSize")) {
                AdUtil.b = false;
            }
        }
        return AdUtil.b;
    }
    
    public static String d(final Context context) {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return null;
        }
        switch (activeNetworkInfo.getType()) {
            default: {
                return "unknown";
            }
            case 0: {
                return "ed";
            }
            case 1: {
                return "wi";
            }
        }
    }
    
    public static boolean d() {
        return AdUtil.g;
    }
    
    public static String e(final Context context) {
        if (AdUtil.d == null) {
            final StringBuilder sb = new StringBuilder();
            final PackageManager packageManager = context.getPackageManager();
            final List queryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=donuts")), 65536);
            if (queryIntentActivities == null || queryIntentActivities.isEmpty()) {
                sb.append("m");
            }
            final List queryIntentActivities2 = packageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:com.google")), 65536);
            if (queryIntentActivities2 == null || queryIntentActivities2.isEmpty()) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append("a");
            }
            AdUtil.d = sb.toString();
        }
        return AdUtil.d;
    }
    
    public static String f(final Context context) {
        if (AdUtil.e != null) {
            return AdUtil.e;
        }
        try {
            final PackageManager packageManager = context.getPackageManager();
            final ResolveInfo resolveActivity = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.ads")), 65536);
            if (resolveActivity == null) {
                return null;
            }
            final ActivityInfo activityInfo = resolveActivity.activityInfo;
            if (activityInfo == null) {
                return null;
            }
            final PackageInfo packageInfo = packageManager.getPackageInfo(activityInfo.packageName, 0);
            if (packageInfo == null) {
                return null;
            }
            return AdUtil.e = packageInfo.versionCode + "." + activityInfo.packageName;
        }
        catch (PackageManager$NameNotFoundException ex) {
            return null;
        }
    }
    
    public static a g(final Context context) {
        if (AdUtil.f == null) {
            AdUtil.f = (AudioManager)context.getSystemService("audio");
        }
        final a f = AdUtil.a.f;
        final int mode = AdUtil.f.getMode();
        if (c()) {
            return AdUtil.a.e;
        }
        if (AdUtil.f.isMusicActive() || AdUtil.f.isSpeakerphoneOn() || mode == 2 || mode == 1) {
            return AdUtil.a.d;
        }
        final int ringerMode = AdUtil.f.getRingerMode();
        if (ringerMode == 0 || ringerMode == 1) {
            return AdUtil.a.d;
        }
        return AdUtil.a.b;
    }
    
    public static void h(final Context context) {
        if (AdUtil.h) {
            return;
        }
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.registerReceiver((BroadcastReceiver)new UserActivityReceiver(), intentFilter);
        AdUtil.h = true;
    }
    
    public static String i(final Context context) {
        if (AdUtil.i == null) {
            String str = new WebView(context).getSettings().getUserAgentString();
            if (str == null || str.length() == 0 || str.equals("Java0")) {
                final String property = System.getProperty("os.name", "Linux");
                final String string = "Android " + Build$VERSION.RELEASE;
                final Locale default1 = Locale.getDefault();
                String lowerCase = default1.getLanguage().toLowerCase(Locale.US);
                if (lowerCase.length() == 0) {
                    lowerCase = "en";
                }
                final String lowerCase2 = default1.getCountry().toLowerCase(Locale.US);
                String string2;
                if (lowerCase2.length() > 0) {
                    string2 = lowerCase + "-" + lowerCase2;
                }
                else {
                    string2 = lowerCase;
                }
                str = "Mozilla/5.0 (" + property + "; U; " + string + "; " + string2 + "; " + (Build.MODEL + " Build/" + Build.ID) + ") AppleWebKit/0.0 (KHTML, like " + "Gecko) Version/0.0 Mobile Safari/0.0";
            }
            AdUtil.i = str + " (Mobile; " + "afma-sdk-a-v" + "6.4.1" + ")";
        }
        return AdUtil.i;
    }
    
    public static class UserActivityReceiver extends BroadcastReceiver
    {
        public void onReceive(final Context context, final Intent intent) {
            if (intent.getAction().equals("android.intent.action.USER_PRESENT")) {
                AdUtil.a(true);
            }
            else if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                AdUtil.a(false);
            }
        }
    }
    
    public enum a
    {
        a, 
        b, 
        c, 
        d, 
        e, 
        f;
    }
}
