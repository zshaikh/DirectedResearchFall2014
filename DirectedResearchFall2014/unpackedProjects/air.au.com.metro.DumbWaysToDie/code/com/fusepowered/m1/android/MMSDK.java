package com.fusepowered.m1.android;

import android.content.pm.*;
import android.content.res.*;
import android.net.*;
import android.text.*;
import org.apache.http.conn.util.*;
import java.security.*;
import android.media.*;
import android.view.*;
import android.telephony.*;
import android.provider.*;
import android.app.*;
import java.util.*;
import java.net.*;
import android.content.*;
import android.os.*;
import android.util.*;
import java.io.*;

public final class MMSDK
{
    private static final String BASE_URL_TRACK_EVENT = "http://ads.mp.mydas.mobi/pixel?id=";
    static final int CACHE_REQUEST_TIMEOUT = 30000;
    static final int CLOSE_ACTIVITY_DURATION = 400;
    static String COMMA;
    public static final String DEFAULT_APID = "28911";
    public static final String DEFAULT_BANNER_APID = "28913";
    public static final String DEFAULT_RECT_APID = "28914";
    static final String EMPTY = "";
    static final int HANDSHAKE_REQUEST_TIMEOUT = 3000;
    static final String JSON_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss ZZZZ";
    public static final int LOG_LEVEL_DEBUG = 1;
    public static final int LOG_LEVEL_ERROR = 0;
    public static final int LOG_LEVEL_INFO = 2;
    @Deprecated
    public static final int LOG_LEVEL_INTERNAL = 4;
    @Deprecated
    public static final int LOG_LEVEL_PRIVATE_VERBOSE = 5;
    public static final int LOG_LEVEL_VERBOSE = 3;
    static final int OPEN_ACTIVITY_DURATION = 600;
    static final String PREFS_NAME = "MillennialMediaSettings";
    static final int REQUEST_TIMEOUT = 10000;
    public static final String SDKLOG = "MillennialMediaSDK";
    public static final String VERSION = "5.1.0-13.08.12.a";
    @Deprecated
    public static boolean debugMode;
    @Deprecated
    static boolean disableAdMinRefresh;
    private static String getMMdidValue;
    private static boolean hasSpeechKit;
    private static boolean isBroadcastingEvents;
    static int logLevel;
    static String macId;
    static Handler mainHandler;
    private static int nextDefaultId;
    
    static {
        MMSDK.disableAdMinRefresh = false;
        MMSDK.nextDefaultId = 1897808289;
        MMSDK.COMMA = ",";
        MMSDK.mainHandler = new Handler(Looper.getMainLooper());
        MMSDK.getMMdidValue = null;
        MMSDK.hasSpeechKit = false;
        try {
            System.loadLibrary("nmsp_speex");
            MMSDK.hasSpeechKit = true;
        }
        catch (UnsatisfiedLinkError unsatisfiedLinkError) {}
    }
    
    static String byteArrayToString(final byte[] array) {
        final StringBuilder sb = new StringBuilder(2 * array.length);
        for (int i = 0; i < array.length; ++i) {
            sb.append(String.format("%02X", array[i]));
        }
        return sb.toString();
    }
    
    static void checkActivity(final Context context) {
        final PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.getActivityInfo(new ComponentName(context, "com.fusepowered.m1.android.MMActivity"), 128);
        }
        catch (PackageManager$NameNotFoundException ex) {
            Log.e("Activity MMActivity not declared in AndroidManifest.xml");
            ex.printStackTrace();
            createMissingPermissionDialog(context, "MMActivity class").show();
        }
    }
    
    static void checkPermissions(final Context context) {
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            createMissingPermissionDialog(context, "INTERNET permission").show();
        }
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
            createMissingPermissionDialog(context, "ACCESS_NETWORK_STATE permission").show();
        }
    }
    
    private static AlertDialog createMissingPermissionDialog(final Context context, final String s) {
        final AlertDialog create = new AlertDialog$Builder(context).create();
        create.setTitle((CharSequence)"Whoops!");
        create.setMessage((CharSequence)String.format("The developer has forgot to declare the %s in the manifest file. Please reach out to the developer to remove this error.", s));
        create.setButton(-3, (CharSequence)"OK", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                dialogInterface.cancel();
            }
        });
        create.show();
        return create;
    }
    
    public static boolean getBroadcastEvents() {
        return MMSDK.isBroadcastingEvents;
    }
    
    static Configuration getConfiguration(final Context context) {
        return context.getResources().getConfiguration();
    }
    
    static String getConnectionType(final Context context) {
        final ConnectivityManager connectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return "unknown";
        }
        String s;
        if (connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().isConnected()) {
            final int type = connectivityManager.getActiveNetworkInfo().getType();
            final int subtype = connectivityManager.getActiveNetworkInfo().getSubtype();
            if (type == 1) {
                s = "wifi";
            }
            else if (type == 0) {
                switch (subtype) {
                    default: {
                        s = "unknown";
                        break;
                    }
                    case 7: {
                        s = "1xrtt";
                        break;
                    }
                    case 4: {
                        s = "cdma";
                        break;
                    }
                    case 2: {
                        s = "edge";
                        break;
                    }
                    case 14: {
                        s = "ehrpd";
                        break;
                    }
                    case 5: {
                        s = "evdo_0";
                        break;
                    }
                    case 6: {
                        s = "evdo_a";
                        break;
                    }
                    case 12: {
                        s = "evdo_b";
                        break;
                    }
                    case 1: {
                        s = "gprs";
                        break;
                    }
                    case 8: {
                        s = "hsdpa";
                        break;
                    }
                    case 10: {
                        s = "hspa";
                        break;
                    }
                    case 15: {
                        s = "hspap";
                        break;
                    }
                    case 9: {
                        s = "hsupa";
                        break;
                    }
                    case 11: {
                        s = "iden";
                        break;
                    }
                    case 13: {
                        s = "lte";
                        break;
                    }
                    case 3: {
                        s = "umts";
                        break;
                    }
                }
            }
            else {
                s = "unknown";
            }
        }
        else {
            s = "offline";
        }
        return s;
    }
    
    public static int getDefaultAdId() {
        synchronized (MMSDK.class) {
            return ++MMSDK.nextDefaultId;
        }
    }
    
    static float getDensity(final Context context) {
        final DisplayMetrics metrics = getMetrics(context);
        if (metrics == null) {
            return 1.0f;
        }
        return metrics.density;
    }
    
    private static String getDensityString(final Context context) {
        return Float.toString(getDensity(context));
    }
    
    static String getDpiHeight(final Context context) {
        if (needsRawDisplayMethod()) {
            final String rawSize = getRawSize(context, "getRawHeight");
            if (!TextUtils.isEmpty((CharSequence)rawSize)) {
                return rawSize;
            }
        }
        return getDpiHeightFrom(getMetrics(context));
    }
    
    private static String getDpiHeightFrom(final DisplayMetrics displayMetrics) {
        return Integer.toString(displayMetrics.heightPixels);
    }
    
    static String getDpiWidth(final Context context) {
        if (needsRawDisplayMethod()) {
            final String rawSize = getRawSize(context, "getRawWidth");
            if (!TextUtils.isEmpty((CharSequence)rawSize)) {
                return rawSize;
            }
        }
        return getDpiWidthFrom(getMetrics(context));
    }
    
    private static String getDpiWidthFrom(final DisplayMetrics displayMetrics) {
        return Integer.toString(displayMetrics.widthPixels);
    }
    
    static String getIpAddress(final Context context) {
        StringBuilder sb = null;
        while (true) {
            while (true) {
                String upperCase = null;
                Label_0115: {
                    try {
                        sb = new StringBuilder();
                        final Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                        while (networkInterfaces.hasMoreElements()) {
                            final Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                            while (inetAddresses.hasMoreElements()) {
                                final InetAddress inetAddress = inetAddresses.nextElement();
                                if (!inetAddress.isLoopbackAddress()) {
                                    if (sb.length() > 0) {
                                        sb.append(',');
                                    }
                                    upperCase = inetAddress.getHostAddress().toUpperCase();
                                    if (!InetAddressUtils.isIPv4Address(upperCase)) {
                                        break Label_0115;
                                    }
                                    sb.append(upperCase);
                                }
                            }
                        }
                        break;
                    }
                    catch (Exception ex) {
                        Log.e(ex);
                        return "";
                    }
                }
                final int index = upperCase.indexOf(37);
                String substring;
                if (index < 0) {
                    substring = upperCase;
                }
                else {
                    substring = upperCase.substring(0, index);
                }
                sb.append(substring);
                continue;
            }
        }
        return sb.toString();
    }
    
    public static int getLogLevel() {
        return MMSDK.logLevel;
    }
    
    static String getMMdid(final Context context) {
        final String string;
        final StringBuilder sb;
        synchronized (MMSDK.class) {
            String getMMdidValue;
            if (MMSDK.getMMdidValue != null) {
                getMMdidValue = MMSDK.getMMdidValue;
            }
            else {
                string = Settings$Secure.getString(context.getContentResolver(), "android_id");
                if (string == null) {
                    getMMdidValue = null;
                }
                else {
                    final StringBuilder sb2;
                    sb = (sb2 = new StringBuilder("mmh_"));
                    final String s = "MD5";
                    final MessageDigest messageDigest = MessageDigest.getInstance(s);
                    final String s2 = string;
                    final byte[] array = s2.getBytes();
                    final byte[] array2 = messageDigest.digest(array);
                    final String s3 = byteArrayToString(array2);
                    sb2.append(s3);
                    final StringBuilder sb3 = sb;
                    final String s4 = "_";
                    sb3.append(s4);
                    final StringBuilder sb4 = sb;
                    final String s5 = "SHA1";
                    final MessageDigest messageDigest2 = MessageDigest.getInstance(s5);
                    final String s6 = string;
                    final byte[] array3 = s6.getBytes();
                    final byte[] array4 = messageDigest2.digest(array3);
                    final String s7 = byteArrayToString(array4);
                    sb4.append(s7);
                    final StringBuilder sb5 = sb;
                    getMMdidValue = sb5.toString();
                    final String s8 = MMSDK.getMMdidValue = getMMdidValue;
                }
            }
            return getMMdidValue;
        }
        try {
            final StringBuilder sb2 = sb;
            final String s = "MD5";
            final MessageDigest messageDigest = MessageDigest.getInstance(s);
            final String s2 = string;
            final byte[] array = s2.getBytes();
            final byte[] array2 = messageDigest.digest(array);
            final String s3 = byteArrayToString(array2);
            sb2.append(s3);
            final StringBuilder sb3 = sb;
            final String s4 = "_";
            sb3.append(s4);
            final StringBuilder sb4 = sb;
            final String s5 = "SHA1";
            final MessageDigest messageDigest2 = MessageDigest.getInstance(s5);
            final String s6 = string;
            final byte[] array3 = s6.getBytes();
            final byte[] array4 = messageDigest2.digest(array3);
            final String s7 = byteArrayToString(array4);
            sb4.append(s7);
            final StringBuilder sb5 = sb;
            return MMSDK.getMMdidValue = sb5.toString();
        }
        catch (Exception ex) {
            Log.v(ex.getMessage());
            return null;
        }
    }
    
    static String getMcc(final Context context) {
        final Configuration configuration = getConfiguration(context);
        if (configuration.mcc == 0) {
            final String networkOperator = getNetworkOperator(context);
            if (networkOperator != null && networkOperator.length() >= 6) {
                return networkOperator.substring(0, 3);
            }
        }
        return String.valueOf(configuration.mcc);
    }
    
    static int getMediaVolume(final Context context) {
        return ((AudioManager)context.getApplicationContext().getSystemService("audio")).getStreamVolume(3);
    }
    
    static DisplayMetrics getMetrics(final Context context) {
        final DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (!needsRealDisplayMethod()) {
            return displayMetrics;
        }
        try {
            Display.class.getMethod("getRealMetrics", (Class<?>[])new Class[0]).invoke(displayMetrics, new Object[0]);
            return displayMetrics;
        }
        catch (Exception ex) {
            return displayMetrics;
        }
    }
    
    static String getMnc(final Context context) {
        final Configuration configuration = getConfiguration(context);
        if (configuration.mnc == 0) {
            final String networkOperator = getNetworkOperator(context);
            if (networkOperator != null && networkOperator.length() >= 6) {
                return networkOperator.substring(3);
            }
        }
        return String.valueOf(configuration.mnc);
    }
    
    static String getNetworkOperator(final Context context) {
        return ((TelephonyManager)context.getSystemService("phone")).getNetworkOperator();
    }
    
    static String getOrientation(final Context context) {
        switch (context.getResources().getConfiguration().orientation) {
            default: {
                return "default";
            }
            case 1: {
                return "portrait";
            }
            case 2: {
                return "landscape";
            }
            case 3: {
                return "square";
            }
        }
    }
    
    static final String getOrientationLocked(final Context context) {
        if (Settings$System.getString(context.getContentResolver(), "accelerometer_rotation").equals("1")) {
            return "false";
        }
        return "true";
    }
    
    private static String getRawSize(final Context context, final String name) {
        final boolean b = context instanceof Activity;
        String value = null;
        if (!b) {
            return value;
        }
        final Display defaultDisplay = ((Activity)context).getWindowManager().getDefaultDisplay();
        try {
            value = String.valueOf((int)Display.class.getMethod(name, (Class<?>[])new Class[0]).invoke(defaultDisplay, new Object[0]));
            return value;
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    static String getSupportsSms(final Context context) {
        return String.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.telephony"));
    }
    
    static String getSupportsTel(final Context context) {
        return String.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.telephony"));
    }
    
    static boolean hasSetTranslationMethod() {
        return Integer.parseInt(Build$VERSION.SDK) >= 11;
    }
    
    private static String hasSpeechKit(final Context context) {
        if (MMSDK.hasSpeechKit) {
            return "true";
        }
        return "false";
    }
    
    static String hasVoiceAbility(final Context context) {
        if (!context.getPackageManager().hasSystemFeature("android.hardware.microphone")) {
            return "false";
        }
        if (getMediaVolume(context) == 0) {
            return "false";
        }
        final int ringerMode = ((AudioManager)context.getApplicationContext().getSystemService("audio")).getRingerMode();
        if (ringerMode == 0 || ringerMode == 1) {
            return "false";
        }
        return "true";
    }
    
    public static void initialize(final Context context) {
        final HandShake sharedHandShake = HandShake.sharedHandShake(context);
        sharedHandShake.sendInitRequest();
        sharedHandShake.startSession();
    }
    
    static void insertUrlCommonValues(final Context context, final Map<String, String> map) {
        map.put("density", getDensityString(context));
        map.put("hpx", getDpiHeight(context));
        map.put("wpx", getDpiWidth(context));
        map.put("sk", hasSpeechKit(context));
        map.put("mic", hasVoiceAbility(context));
        Label_0629: {
            if (!isCachedVideoSupportedOnDevice(context)) {
                break Label_0629;
            }
            map.put("cachedvideo", "true");
            if (Build.MODEL != null) {
                map.put("dm", Build.MODEL);
            }
            if (Build$VERSION.RELEASE != null) {
                map.put("dv", "Android" + Build$VERSION.RELEASE);
            }
            final String mMdid = getMMdid(context);
            if (mMdid != null) {
                map.put("mmdid", mMdid);
            }
            map.put("sdkversion", "5.1.0-13.08.12.a");
            map.put("mmisdk", "5.1.0-13.08.12.a");
            map.put("mcc", getMcc(context));
            map.put("mnc", getMnc(context));
            final Locale default1 = Locale.getDefault();
            if (default1 != null) {
                map.put("language", default1.getLanguage());
                map.put("country", default1.getCountry());
            }
            while (true) {
                try {
                    final String packageName = context.getPackageName();
                    map.put("pkid", packageName);
                    final PackageManager packageManager = context.getPackageManager();
                    map.put("pknm", packageManager.getApplicationLabel(packageManager.getApplicationInfo(packageName, 0)).toString());
                    if (MMSDK.debugMode) {
                        map.put("debug", "true");
                    }
                    final String schemesList = HandShake.sharedHandShake(context).getSchemesList(context);
                    if (schemesList != null) {
                        map.put("appsids", schemesList);
                    }
                    final String cachedVideoList = AdCache.getCachedVideoList(context);
                    if (cachedVideoList != null) {
                        map.put("vid", cachedVideoList);
                    }
                    try {
                        final String connectionType = getConnectionType(context);
                        StatFs statFs;
                        if (AdCache.isExternalStorageAvailable(context)) {
                            statFs = new StatFs(AdCache.getCacheDirectory(context).getAbsolutePath());
                        }
                        else {
                            statFs = new StatFs(context.getFilesDir().getPath());
                        }
                        final String string = Long.toString(statFs.getAvailableBlocks() * statFs.getBlockSize());
                        final Intent registerReceiver = context.registerReceiver((BroadcastReceiver)null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                        String string2 = null;
                        String s = null;
                        if (registerReceiver != null) {
                            if (registerReceiver.getIntExtra("plugged", 0) == 0) {
                                s = "false";
                            }
                            else {
                                s = "true";
                            }
                            string2 = Integer.toString((int)(100.0f / registerReceiver.getIntExtra("scale", 100) * registerReceiver.getIntExtra("level", 0)));
                        }
                        if (string2 != null && string2.length() > 0) {
                            map.put("bl", string2);
                        }
                        if (s != null && s.length() > 0) {
                            map.put("plugged", s);
                        }
                        if (string.length() > 0) {
                            map.put("space", string);
                        }
                        if (connectionType != null) {
                            map.put("conn", connectionType);
                        }
                        final String encode = URLEncoder.encode(getIpAddress(context), "UTF-8");
                        if (!TextUtils.isEmpty((CharSequence)encode)) {
                            map.put("pip", encode);
                        }
                        MMRequest.insertLocation(map);
                        return;
                        map.put("cachedvideo", "false");
                    }
                    catch (Exception ex) {
                        Log.v(ex);
                    }
                }
                catch (Exception ex2) {
                    continue;
                }
                break;
            }
        }
    }
    
    static boolean isCachedVideoSupportedOnDevice(final Context context) {
        return context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != -1 && (!Build$VERSION.SDK.equalsIgnoreCase("8") || (Environment.getExternalStorageState().equals("mounted") && AdCache.isExternalEnabled));
    }
    
    static boolean isConnected(final Context context) {
        final ConnectivityManager connectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
        return connectivityManager != null && (connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().isConnected());
    }
    
    static boolean isUiThread() {
        return MMSDK.mainHandler.getLooper() == Looper.myLooper();
    }
    
    private static boolean needsRawDisplayMethod() {
        return Integer.parseInt(Build$VERSION.SDK) >= 13 && Integer.parseInt(Build$VERSION.SDK) <= 16;
    }
    
    private static boolean needsRealDisplayMethod() {
        return Integer.parseInt(Build$VERSION.SDK) >= 17;
    }
    
    static void printDiagnostics(final MMAdImpl mmAdImpl) {
        if (mmAdImpl != null) {
            final Context context = mmAdImpl.getContext();
            Log.i("MMAd External ID: %d", mmAdImpl.getId());
            Log.i("MMAd Internal ID: %d", mmAdImpl.internalId);
            Log.i("APID: %s", mmAdImpl.apid);
            final Object[] array = { null };
            String s;
            if (AdCache.isExternalStorageAvailable(context)) {
                s = "";
            }
            else {
                s = "not ";
            }
            array[0] = s;
            Log.i("SD card is %savailable.", array);
            if (context != null) {
                Log.i("Package: %s", context.getPackageName());
                Log.i("MMDID: %s", getMMdid(context));
                Log.i("Permissions:");
                final Object[] array2 = { null };
                String s2;
                if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
                    s2 = "not ";
                }
                else {
                    s2 = "";
                }
                array2[0] = s2;
                Log.i("android.permission.ACCESS_NETWORK_STATE is %spresent", array2);
                final Object[] array3 = { null };
                String s3;
                if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
                    s3 = "not ";
                }
                else {
                    s3 = "";
                }
                array3[0] = s3;
                Log.i("android.permission.INTERNET is %spresent", array3);
                final Object[] array4 = { null };
                String s4;
                if (context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == -1) {
                    s4 = "not ";
                }
                else {
                    s4 = "";
                }
                array4[0] = s4;
                Log.i("android.permission.WRITE_EXTERNAL_STORAGE is %spresent", array4);
                final Object[] array5 = { null };
                String s5;
                if (context.checkCallingOrSelfPermission("android.permission.VIBRATE") == -1) {
                    s5 = "not ";
                }
                else {
                    s5 = "";
                }
                array5[0] = s5;
                Log.i("android.permission.VIBRATE is %spresent", array5);
                final Object[] array6 = { null };
                String s6;
                if (context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == -1) {
                    s6 = "not ";
                }
                else {
                    s6 = "";
                }
                array6[0] = s6;
                Log.i("android.permission.ACCESS_COARSE_LOCATION is %spresent", array6);
                final Object[] array7 = { null };
                String s7;
                if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == -1) {
                    s7 = "not ";
                }
                else {
                    s7 = "";
                }
                array7[0] = s7;
                Log.i("android.permission.ACCESS_FINE_LOCATION is %spresent", array7);
                Log.i("Cached Ads:");
                AdCache.iterateCachedAds(context, 2, (AdCache.Iterator)new AdCache.Iterator() {
                    @Override
                    boolean callback(final CachedAd cachedAd) {
                        final Object[] array = { cachedAd.getTypeString(), cachedAd.getId(), null, null };
                        String s;
                        if (cachedAd.isOnDisk(context)) {
                            s = "";
                        }
                        else {
                            s = "not ";
                        }
                        array[2] = s;
                        String s2;
                        if (cachedAd.isExpired()) {
                            s2 = "";
                        }
                        else {
                            s2 = "not ";
                        }
                        array[3] = s2;
                        Log.i("%s %s is %son disk. Is %sexpired.", array);
                        return true;
                    }
                });
            }
        }
    }
    
    static boolean removeAccelForJira1164() {
        return Integer.parseInt(Build$VERSION.SDK) >= 14;
    }
    
    public static void resetCache(final Context context) {
        AdCache.resetCache(context);
    }
    
    static void runOnUiThread(final Runnable runnable) {
        if (isUiThread()) {
            runnable.run();
            return;
        }
        MMSDK.mainHandler.post(runnable);
    }
    
    static void runOnUiThreadDelayed(final Runnable runnable, final long n) {
        MMSDK.mainHandler.postDelayed(runnable, n);
    }
    
    public static void setBroadcastEvents(final boolean isBroadcastingEvents) {
        MMSDK.isBroadcastingEvents = isBroadcastingEvents;
    }
    
    public static void setLogLevel(final int logLevel) {
        MMSDK.logLevel = logLevel;
    }
    
    static void setMMdid(final String getMMdidValue) {
        synchronized (MMSDK.class) {
            MMSDK.getMMdidValue = getMMdidValue;
        }
    }
    
    static boolean supportsFullScreenInline() {
        return Integer.parseInt(Build$VERSION.SDK) >= 11;
    }
    
    public static void trackConversion(final Context context, final String s) {
        MMConversionTracker.trackConversion(context, s, null);
    }
    
    public static void trackConversion(final Context context, final String s, final MMRequest mmRequest) {
        MMConversionTracker.trackConversion(context, s, mmRequest);
    }
    
    public static void trackEvent(final Context context, final String str) {
        if (!TextUtils.isEmpty((CharSequence)str)) {
            final String mMdid = getMMdid(context);
            if (!TextUtils.isEmpty((CharSequence)mMdid)) {
                Utils.HttpUtils.executeUrl("http://ads.mp.mydas.mobi/pixel?id=" + str + "&mmdid=" + mMdid);
            }
        }
    }
    
    static class Event
    {
        public static final String INTENT_EMAIL = "email";
        public static final String INTENT_EXTERNAL_BROWSER = "browser";
        public static final String INTENT_MAPS = "geo";
        public static final String INTENT_MARKET = "market";
        public static final String INTENT_PHONE_CALL = "tel";
        public static final String INTENT_STREAMING_VIDEO = "streamingVideo";
        public static final String INTENT_TXT_MESSAGE = "sms";
        private static final String KEY_ERROR = "error";
        static final String KEY_INTENT_TYPE = "intentType";
        static final String KEY_INTERNAL_ID = "internalId";
        static final String KEY_PACKAGE_NAME = "packageName";
        
        static void adSingleTap(final MMAdImpl mmAdImpl) {
            if (mmAdImpl != null) {
                MMSDK.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if (mmAdImpl == null || mmAdImpl.requestListener == null) {
                            return;
                        }
                        try {
                            mmAdImpl.requestListener.onSingleTap(mmAdImpl.getCallingAd());
                        }
                        catch (Exception ex) {
                            Log.w("Exception raised in your RequestListener: ", ex);
                        }
                    }
                });
                if (MMSDK.isBroadcastingEvents) {
                    sendIntent(mmAdImpl.getContext(), new Intent("millennialmedia.action.ACTION_OVERLAY_TAP"), mmAdImpl.internalId);
                    sendIntent(mmAdImpl.getContext(), new Intent("millennialmedia.action.ACTION_AD_SINGLE_TAP"), mmAdImpl.internalId);
                }
            }
        }
        
        static void displayStarted(final MMAdImpl mmAdImpl) {
            if (mmAdImpl == null) {
                Log.w("No Context in the listener: ");
                return;
            }
            if (MMSDK.isBroadcastingEvents) {
                sendIntent(mmAdImpl.getContext(), new Intent("millennialmedia.action.ACTION_DISPLAY_STARTED"), mmAdImpl.internalId);
            }
            overlayOpened(mmAdImpl);
        }
        
        static void fetchStartedCaching(final MMAdImpl mmAdImpl) {
            if (mmAdImpl == null) {
                Log.w("No Context in the listener: ");
            }
            else {
                MMSDK.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if (mmAdImpl == null || mmAdImpl.requestListener == null) {
                            return;
                        }
                        try {
                            mmAdImpl.requestListener.MMAdRequestIsCaching(mmAdImpl.getCallingAd());
                        }
                        catch (Exception ex) {
                            Log.w("Exception raised in your RequestListener: ", ex);
                        }
                    }
                });
                if (MMSDK.isBroadcastingEvents) {
                    sendIntent(mmAdImpl.getContext(), new Intent("millennialmedia.action.ACTION_FETCH_STARTED_CACHING"), mmAdImpl.internalId);
                }
            }
        }
        
        static void intentStarted(final Context context, final String s, final long n) {
            if (MMSDK.isBroadcastingEvents && s != null) {
                sendIntent(context, new Intent("millennialmedia.action.ACTION_INTENT_STARTED").putExtra("intentType", s), n);
            }
        }
        
        protected static void logEvent(final String s) {
            Log.d("Logging event to: %s", s);
            Utils.ThreadUtils.execute(new Runnable() {
                @Override
                public void run() {
                    final HttpGetRequest httpGetRequest = new HttpGetRequest();
                    try {
                        httpGetRequest.get(s);
                    }
                    catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            });
        }
        
        static void overlayClosed(final MMAdImpl mmAdImpl) {
            if (mmAdImpl == null) {
                Log.w("No Context in the listener: ");
            }
            else {
                MMSDK.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if (mmAdImpl == null || mmAdImpl.requestListener == null) {
                            return;
                        }
                        try {
                            mmAdImpl.requestListener.MMAdOverlayClosed(mmAdImpl.getCallingAd());
                        }
                        catch (Exception ex) {
                            Log.w("Exception raised in your RequestListener: ", ex);
                        }
                    }
                });
                if (MMSDK.isBroadcastingEvents && mmAdImpl.getContext() != null) {
                    sendIntent(mmAdImpl.getContext(), new Intent("millennialmedia.action.ACTION_OVERLAY_CLOSED"), mmAdImpl.internalId);
                }
            }
        }
        
        static void overlayOpened(final MMAdImpl mmAdImpl) {
            if (mmAdImpl == null) {
                Log.w("No Context in the listener: ");
                return;
            }
            MMSDK.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    if (mmAdImpl == null || mmAdImpl.requestListener == null) {
                        return;
                    }
                    try {
                        mmAdImpl.requestListener.MMAdOverlayLaunched(mmAdImpl.getCallingAd());
                    }
                    catch (Exception ex) {
                        Log.w("Exception raised in your RequestListener: ", ex);
                    }
                }
            });
            overlayOpenedBroadCast(mmAdImpl.getContext(), mmAdImpl.internalId);
        }
        
        static void overlayOpenedBroadCast(final Context context, final long n) {
            if (MMSDK.isBroadcastingEvents) {
                sendIntent(context, new Intent("millennialmedia.action.ACTION_OVERLAY_OPENED"), n);
            }
        }
        
        static void requestCompleted(final MMAdImpl mmAdImpl) {
            if (mmAdImpl == null) {
                Log.w("No Context in the listener: ");
            }
            else {
                MMSDK.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if (mmAdImpl == null || mmAdImpl.requestListener == null) {
                            return;
                        }
                        try {
                            mmAdImpl.requestListener.requestCompleted(mmAdImpl.getCallingAd());
                        }
                        catch (Exception ex) {
                            Log.w("Exception raised in your RequestListener: ", ex);
                        }
                    }
                });
                if (MMSDK.isBroadcastingEvents) {
                    sendIntent(mmAdImpl.getContext(), new Intent(mmAdImpl.getRequestCompletedAction()), mmAdImpl.internalId);
                }
            }
        }
        
        static void requestFailed(final MMAdImpl mmAdImpl, final MMException ex) {
            if (mmAdImpl == null) {
                Log.w("No Context in the listener: ");
            }
            else {
                MMSDK.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if (mmAdImpl == null || mmAdImpl.requestListener == null) {
                            return;
                        }
                        try {
                            mmAdImpl.requestListener.requestFailed(mmAdImpl.getCallingAd(), ex);
                        }
                        catch (Exception ex) {
                            Log.w("Exception raised in your RequestListener: ", ex);
                        }
                    }
                });
                if (MMSDK.isBroadcastingEvents) {
                    sendIntent(mmAdImpl.getContext(), new Intent(mmAdImpl.getRequestFailedAction()).putExtra("error", (Serializable)ex), mmAdImpl.internalId);
                }
            }
        }
        
        private static final void sendIntent(final Context context, final Intent intent, final long lng) {
            if (context != null) {
                intent.addCategory("millennialmedia.category.CATEGORY_SDK");
                if (lng != -4L) {
                    intent.putExtra("internalId", lng);
                }
                intent.putExtra("packageName", context.getPackageName());
                final String stringExtra = intent.getStringExtra("intentType");
                String format;
                if (!TextUtils.isEmpty((CharSequence)stringExtra)) {
                    format = String.format(" Type[%s]", stringExtra);
                }
                else {
                    format = "";
                }
                Log.v(" @@ Intent: " + intent.getAction() + " " + format + " for " + lng);
                context.sendBroadcast(intent);
            }
        }
    }
    
    static class Log
    {
        static void d(final String str) {
            if (MMSDK.logLevel >= 1) {
                android.util.Log.i("MillennialMediaSDK", "Diagnostic - " + str);
            }
        }
        
        static void d(final String format, final Object... args) {
            if (MMSDK.logLevel >= 1) {
                android.util.Log.i("MillennialMediaSDK", "Diagnostic - " + String.format(format, args));
            }
        }
        
        static void d(final Throwable t) {
            if (MMSDK.logLevel >= 1) {
                d(android.util.Log.getStackTraceString(t));
            }
        }
        
        static void e(final String s) {
            android.util.Log.e("MillennialMediaSDK", s);
        }
        
        static void e(final String format, final Object... args) {
            android.util.Log.e("MillennialMediaSDK", String.format(format, args));
        }
        
        static void e(final Throwable t) {
            e(android.util.Log.getStackTraceString(t));
        }
        
        static void i(final String s) {
            android.util.Log.i("MillennialMediaSDK", s);
        }
        
        static void i(final String format, final Object... args) {
            android.util.Log.i("MillennialMediaSDK", String.format(format, args));
        }
        
        static void i(final Throwable t) {
            i(android.util.Log.getStackTraceString(t));
        }
        
        static void p(final String str) {
            if (MMSDK.logLevel > 3) {
                android.util.Log.i("MillennialMediaSDK", "Private - " + str);
            }
        }
        
        static void p(final String format, final Object... args) {
            if (MMSDK.logLevel > 3) {
                android.util.Log.i("MillennialMediaSDK", "Private - " + String.format(format, args));
            }
        }
        
        static void p(final Throwable t) {
            if (MMSDK.logLevel > 3) {
                p(android.util.Log.getStackTraceString(t));
            }
        }
        
        static void v(final String str) {
            if (MMSDK.logLevel >= 3) {
                android.util.Log.i("MillennialMediaSDK", "Verbose - " + str);
            }
        }
        
        static void v(final String format, final Object... args) {
            if (MMSDK.logLevel >= 3) {
                android.util.Log.i("MillennialMediaSDK", "Verbose - " + String.format(format, args));
            }
        }
        
        static void v(final Throwable t) {
            if (MMSDK.logLevel >= 3) {
                v(android.util.Log.getStackTraceString(t));
            }
        }
        
        static void w(final String s) {
            android.util.Log.w("MillennialMediaSDK", s);
        }
        
        static void w(final String format, final Object... args) {
            android.util.Log.w("MillennialMediaSDK", String.format(format, args));
        }
        
        static void w(final Throwable t) {
            w(android.util.Log.getStackTraceString(t));
        }
    }
}
