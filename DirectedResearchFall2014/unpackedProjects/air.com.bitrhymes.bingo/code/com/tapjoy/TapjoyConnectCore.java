package com.tapjoy;

import android.util.*;
import org.w3c.dom.*;
import android.net.*;
import android.telephony.*;
import android.provider.*;
import android.os.*;
import android.net.wifi.*;
import android.content.*;
import android.content.pm.*;
import java.util.*;
import java.lang.reflect.*;

public class TapjoyConnectCore
{
    private static final String TAG = "TapjoyConnect";
    private static String androidID;
    private static String appID;
    private static String appVersion;
    private static String bridgeVersion;
    private static String carrierCountryCode;
    private static String carrierName;
    private static Hashtable<String, String> connectFlags;
    private static TapjoyConnectNotifier connectNotifier;
    private static String connectionSubType;
    private static String connectionType;
    private static Context context;
    private static float currencyMultiplier;
    private static Vector<String> dependencyClassesRequired;
    private static String deviceCountryCode;
    private static String deviceID;
    private static String deviceLanguage;
    private static boolean deviceLocation;
    private static String deviceManufacturer;
    private static String deviceModel;
    private static String deviceOSVersion;
    private static int deviceScreenDensity;
    private static float deviceScreenDensityScale;
    private static int deviceScreenLayoutSize;
    private static String deviceType;
    private static long lastTimeStamp;
    private static String libraryVersion;
    private static String macAddress;
    private static String matchingPackageNames;
    private static String mobileCountryCode;
    private static String mobileNetworkCode;
    private static PackageManager packageManager;
    private static String paidAppActionID;
    private static String platformName;
    private static String plugin;
    private static String redirectDomain;
    private static String sdkType;
    private static String secretKey;
    private static String sessionID;
    private static String sha2DeviceID;
    private static boolean shareFacebook;
    private static boolean shareGooglePlus;
    private static boolean shareLinkedIn;
    private static boolean shareTwitter;
    private static String storeName;
    private static boolean storeView;
    private static TapjoyConnectCore tapjoyConnectCore;
    private static TapjoyURLConnection tapjoyURLConnection;
    private static String userID;
    private static boolean videoEnabled;
    private static String videoIDs;
    private static TapjoyViewNotifier viewNotifier;
    private boolean appPaused;
    private long elapsed_time;
    private boolean initialized;
    private Timer timer;
    
    static {
        TapjoyConnectCore.context = null;
        TapjoyConnectCore.tapjoyConnectCore = null;
        TapjoyConnectCore.tapjoyURLConnection = null;
        TapjoyConnectCore.connectNotifier = null;
        TapjoyConnectCore.viewNotifier = null;
        TapjoyConnectCore.dependencyClassesRequired = new Vector<String>(Arrays.asList(TapjoyConstants.dependencyClassNames));
        TapjoyConnectCore.androidID = "";
        TapjoyConnectCore.sessionID = "";
        TapjoyConnectCore.deviceID = "";
        TapjoyConnectCore.sha2DeviceID = "";
        TapjoyConnectCore.macAddress = "";
        TapjoyConnectCore.deviceModel = "";
        TapjoyConnectCore.deviceManufacturer = "";
        TapjoyConnectCore.deviceType = "";
        TapjoyConnectCore.deviceOSVersion = "";
        TapjoyConnectCore.deviceCountryCode = "";
        TapjoyConnectCore.deviceLanguage = "";
        TapjoyConnectCore.appID = "";
        TapjoyConnectCore.appVersion = "";
        TapjoyConnectCore.libraryVersion = "";
        TapjoyConnectCore.bridgeVersion = "";
        TapjoyConnectCore.deviceScreenDensity = 1;
        TapjoyConnectCore.deviceScreenDensityScale = 1.0f;
        TapjoyConnectCore.deviceScreenLayoutSize = 1;
        TapjoyConnectCore.userID = "";
        TapjoyConnectCore.deviceLocation = false;
        TapjoyConnectCore.platformName = "";
        TapjoyConnectCore.carrierName = "";
        TapjoyConnectCore.carrierCountryCode = "";
        TapjoyConnectCore.mobileCountryCode = "";
        TapjoyConnectCore.mobileNetworkCode = "";
        TapjoyConnectCore.connectionType = "";
        TapjoyConnectCore.connectionSubType = "";
        TapjoyConnectCore.storeName = "";
        TapjoyConnectCore.secretKey = "";
        TapjoyConnectCore.plugin = "native";
        TapjoyConnectCore.sdkType = "";
        TapjoyConnectCore.redirectDomain = "";
        TapjoyConnectCore.videoEnabled = false;
        TapjoyConnectCore.videoIDs = "";
        TapjoyConnectCore.currencyMultiplier = 1.0f;
        TapjoyConnectCore.shareFacebook = false;
        TapjoyConnectCore.shareTwitter = false;
        TapjoyConnectCore.shareGooglePlus = false;
        TapjoyConnectCore.shareLinkedIn = false;
        TapjoyConnectCore.storeView = false;
        TapjoyConnectCore.paidAppActionID = null;
        TapjoyConnectCore.lastTimeStamp = 0L;
        TapjoyConnectCore.connectFlags = null;
        TapjoyConnectCore.matchingPackageNames = "";
    }
    
    public TapjoyConnectCore(final Context context) throws TapjoyException {
        super();
        this.elapsed_time = 0L;
        this.timer = null;
        this.appPaused = false;
        this.initialized = false;
        TapjoyConnectCore.context = context;
        TapjoyConnectCore.tapjoyURLConnection = new TapjoyURLConnection();
        if (this.init()) {
            TapjoyLog.i("TapjoyConnect", "URL parameters: " + getURLParams());
            this.callConnect();
            sendOfflineLogs();
            if (getConnectFlagValue("user_id") != null && getConnectFlagValue("user_id").length() > 0) {
                TapjoyLog.i("TapjoyConnect", "Setting userID to: " + getConnectFlagValue("user_id"));
                setUserID(getConnectFlagValue("user_id"));
            }
            this.initialized = true;
        }
    }
    
    private void checkForDependency(final ActivityInfo activityInfo) throws TapjoyIntegrationException {
        if (TapjoyConnectCore.dependencyClassesRequired.contains(activityInfo.name)) {
            final int index = TapjoyConnectCore.dependencyClassesRequired.indexOf(activityInfo.name);
            Label_0267: {
                Vector<String> vector;
                try {
                    Class.forName(TapjoyConnectCore.dependencyClassesRequired.get(index));
                    vector = new Vector<String>();
                    if ((0x80 & activityInfo.configChanges) != 0x80) {
                        vector.add("orientation");
                    }
                    if ((0x20 & activityInfo.configChanges) != 0x20) {
                        vector.add("keyboardHidden");
                    }
                    if (Build$VERSION.SDK_INT >= 13 && (0x400 & activityInfo.configChanges) != 0x400) {
                        vector.add("screenSize");
                    }
                    if (vector.size() == 0) {
                        break Label_0267;
                    }
                    if (vector.size() == 1) {
                        throw new TapjoyIntegrationException(vector.toString() + " property is not specified in manifest configChanges for " + TapjoyConnectCore.dependencyClassesRequired.get(index));
                    }
                }
                catch (ClassNotFoundException ex) {
                    throw new TapjoyIntegrationException("[ClassNotFoundException] Could not find dependency class " + TapjoyConnectCore.dependencyClassesRequired.get(index));
                }
                throw new TapjoyIntegrationException(vector.toString() + " properties are not specified in manifest configChanges for " + TapjoyConnectCore.dependencyClassesRequired.get(index));
            }
            if (Build$VERSION.SDK_INT >= 11 && activityInfo.name.equals("com.tapjoy.TJAdUnitView") && (0x200 & activityInfo.flags) != 0x200) {
                throw new TapjoyIntegrationException("'hardwareAccelerated' property not specified in manifest for " + TapjoyConnectCore.dependencyClassesRequired.get(index));
            }
            TapjoyConnectCore.dependencyClassesRequired.remove(index);
        }
    }
    
    private void checkManifestForConfigurations() {
        while (true) {
            while (true) {
                int n;
                try {
                    if (TapjoyConnectCore.packageManager == null) {
                        break;
                    }
                    final ApplicationInfo applicationInfo = TapjoyConnectCore.packageManager.getApplicationInfo(TapjoyConnectCore.context.getPackageName(), 128);
                    if (applicationInfo == null || applicationInfo.metaData == null) {
                        TapjoyLog.i("TapjoyConnect", "No metadata present.");
                        return;
                    }
                    final String[] flag_ARRAY = TapjoyConnectFlag.FLAG_ARRAY;
                    final int length = flag_ARRAY.length;
                    n = 0;
                    if (n >= length) {
                        TapjoyLog.i("TapjoyConnect", "Metadata successfully loaded");
                        return;
                    }
                    final String key = flag_ARRAY[n];
                    final String string = applicationInfo.metaData.getString("tapjoy." + key);
                    if (string != null) {
                        TapjoyLog.i("TapjoyConnect", "Found manifest flag: " + key + ", " + string);
                        TapjoyConnectCore.connectFlags.put(key, string);
                    }
                }
                catch (Exception ex) {
                    TapjoyLog.e("TapjoyConnect", "Error reading manifest meta-data: " + ex.toString());
                    return;
                }
                ++n;
                continue;
            }
        }
    }
    
    private void checkPermissions() throws TapjoyIntegrationException {
        final Vector<String> vector = new Vector<String>();
        for (final String e : TapjoyConstants.dependencyPermissions) {
            if (!this.isPermissionGranted(e)) {
                vector.add(e);
            }
        }
        if (vector.size() == 0) {
            final Vector<String> vector2 = new Vector<String>();
            for (final String e2 : TapjoyConstants.optionalPermissions) {
                if (!this.isPermissionGranted(e2)) {
                    vector2.add(e2);
                }
            }
            if (vector2.size() != 0) {
                if (vector2.size() != 1) {
                    TapjoyLog.w("TapjoyConnect", "WARNING -- " + vector2.toString() + " permissions were not found in manifest. The exclusion of these permissions could cause problems.");
                    return;
                }
                TapjoyLog.w("TapjoyConnect", "WARNING -- " + vector2.toString() + " permission was not found in manifest. The exclusion of this permission could cause problems.");
            }
            return;
        }
        if (vector.size() == 1) {
            throw new TapjoyIntegrationException("Missing 1 permission in manifest: " + vector.toString());
        }
        throw new TapjoyIntegrationException("Missing " + vector.size() + " permissions in manifest: " + vector.toString());
    }
    
    private void checkResourceFileForConfigurations() {
        final int identifier = TapjoyConnectCore.context.getResources().getIdentifier("raw/tapjoy_config", (String)null, TapjoyConnectCore.context.getPackageName());
        final Properties properties = new Properties();
        try {
            properties.load(TapjoyConnectCore.context.getResources().openRawResource(identifier));
            this.parsePropertiesIntoConfigFlags(properties);
        }
        catch (Exception ex) {
            TapjoyLog.i("TapjoyConnect", "No raw/tapjoy_config file present.");
        }
    }
    
    private void determineUserID() throws TapjoyException {
        if (TapjoyConnectCore.deviceID != null && TapjoyConnectCore.deviceID.length() > 0) {
            TapjoyConnectCore.userID = TapjoyConnectCore.deviceID;
            return;
        }
        if (TapjoyConnectCore.macAddress != null && TapjoyConnectCore.macAddress.length() > 0) {
            TapjoyConnectCore.userID = TapjoyConnectCore.macAddress;
            return;
        }
        if (TapjoyConnectCore.androidID != null && TapjoyConnectCore.androidID.length() > 0) {
            TapjoyConnectCore.userID = TapjoyConnectCore.androidID;
            return;
        }
        throw new TapjoyException("ERROR -- No valid device identifier");
    }
    
    private static String generateSessionID() {
        String sha256 = null;
        TapjoyLog.i("TapjoyConnect", "generating sessionID...");
        try {
            sha256 = TapjoyUtil.SHA256(System.currentTimeMillis() / 1000L + TapjoyConnectCore.appID + TapjoyConnectCore.deviceID);
            TapjoyConnectCore.lastTimeStamp = System.currentTimeMillis();
            return sha256;
        }
        catch (Exception ex) {
            TapjoyLog.e("TapjoyConnect", "unable to generate session id: " + ex.toString());
            return sha256;
        }
    }
    
    public static String getAndroidID() {
        return TapjoyConnectCore.androidID;
    }
    
    public static String getAppID() {
        return TapjoyConnectCore.appID;
    }
    
    public static String getAwardPointsVerifier(final long lng, final int i, final String str) {
        try {
            return TapjoyUtil.SHA256(TapjoyConnectCore.appID + ":" + getVerifierID() + ":" + lng + ":" + TapjoyConnectCore.secretKey + ":" + i + ":" + str);
        }
        catch (Exception ex) {
            TapjoyLog.e("TapjoyConnect", "getAwardPointsVerifier ERROR: " + ex.toString());
            return "";
        }
    }
    
    public static String getCarrierName() {
        return TapjoyConnectCore.carrierName;
    }
    
    public static String getConnectFlagValue(final String key) {
        String s = "";
        if (TapjoyConnectCore.connectFlags != null) {
            s = TapjoyConnectCore.connectFlags.get(key);
        }
        if (s == null) {
            s = "";
        }
        return s;
    }
    
    public static String getConnectionSubType() {
        String subtypeName = "";
        try {
            final ConnectivityManager connectivityManager = (ConnectivityManager)TapjoyConnectCore.context.getSystemService("connectivity");
            if (connectivityManager != null) {
                subtypeName = connectivityManager.getActiveNetworkInfo().getSubtypeName();
                TapjoyLog.i("TapjoyConnect", "connection_sub_type: " + subtypeName);
            }
            return subtypeName;
        }
        catch (Exception ex) {
            TapjoyLog.e("TapjoyConnect", "getConnectionSubType error: " + ex.toString());
            return subtypeName;
        }
    }
    
    public static String getConnectionType() {
        String str;
        while (true) {
            str = "";
            while (true) {
                try {
                    final ConnectivityManager connectivityManager = (ConnectivityManager)TapjoyConnectCore.context.getSystemService("connectivity");
                    if (connectivityManager == null || connectivityManager.getActiveNetworkInfo() == null) {
                        break;
                    }
                    switch (connectivityManager.getActiveNetworkInfo().getType()) {
                        case 1:
                        case 6: {
                            str = "wifi";
                            TapjoyLog.i("TapjoyConnect", "connectivity: " + connectivityManager.getActiveNetworkInfo().getType());
                            TapjoyLog.i("TapjoyConnect", "connection_type: " + str);
                            return str;
                        }
                    }
                }
                catch (Exception ex) {
                    TapjoyLog.e("TapjoyConnect", "getConnectionType error: " + ex.toString());
                    return str;
                }
                str = "mobile";
                continue;
            }
        }
        return str;
    }
    
    public static Context getContext() {
        return TapjoyConnectCore.context;
    }
    
    public static String getDeviceID() {
        return TapjoyConnectCore.deviceID;
    }
    
    public static float getDeviceScreenDensityScale() {
        return TapjoyConnectCore.deviceScreenDensityScale;
    }
    
    public static Map<String, String> getGenericURLParams() {
        final Map<String, String> paramsWithoutAppID = getParamsWithoutAppID();
        TapjoyUtil.safePut(paramsWithoutAppID, "app_id", TapjoyConnectCore.appID, true);
        return paramsWithoutAppID;
    }
    
    public static String getHostURL() {
        return getConnectFlagValue("TJC_SERVICE_URL");
    }
    
    public static TapjoyConnectCore getInstance() {
        return TapjoyConnectCore.tapjoyConnectCore;
    }
    
    public static String getMacAddress() {
        return TapjoyConnectCore.macAddress;
    }
    
    public static Map<String, ?> getOfflineLogs() {
        return (Map<String, ?>)TapjoyConnectCore.context.getSharedPreferences("tapjoyOfflineLog", 0).getAll();
    }
    
    private static String getPackageNamesVerifier(final long lng, final String str) {
        try {
            return TapjoyUtil.SHA256(TapjoyConnectCore.appID + ":" + TapjoyConnectCore.deviceID + ":" + lng + ":" + TapjoyConnectCore.secretKey + ":" + str);
        }
        catch (Exception ex) {
            TapjoyLog.e("TapjoyConnect", "getVerifier ERROR: " + ex.toString());
            return "";
        }
    }
    
    private static Map<String, String> getParamsWithoutAppID() {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        if (getConnectFlagValue("sha_2_udid") != null && getConnectFlagValue("sha_2_udid").equals("true")) {
            TapjoyUtil.safePut(hashMap, "sha2_udid", TapjoyConnectCore.sha2DeviceID, true);
        }
        else {
            TapjoyUtil.safePut(hashMap, "udid", TapjoyConnectCore.deviceID, true);
        }
        TapjoyUtil.safePut(hashMap, "publisher_user_id", TapjoyConnectCore.userID, true);
        TapjoyUtil.safePut(hashMap, "android_id", TapjoyConnectCore.androidID, true);
        TapjoyUtil.safePut(hashMap, "mac_address", TapjoyConnectCore.macAddress, true);
        TapjoyUtil.safePut(hashMap, "device_name", TapjoyConnectCore.deviceModel, true);
        TapjoyUtil.safePut(hashMap, "device_type", TapjoyConnectCore.deviceType, true);
        TapjoyUtil.safePut(hashMap, "os_version", TapjoyConnectCore.deviceOSVersion, true);
        TapjoyUtil.safePut(hashMap, "country_code", TapjoyConnectCore.deviceCountryCode, true);
        TapjoyUtil.safePut(hashMap, "language_code", TapjoyConnectCore.deviceLanguage, true);
        TapjoyUtil.safePut(hashMap, "app_version", TapjoyConnectCore.appVersion, true);
        TapjoyUtil.safePut(hashMap, "library_version", TapjoyConnectCore.libraryVersion, true);
        TapjoyUtil.safePut(hashMap, "bridge_version", TapjoyConnectCore.bridgeVersion, true);
        TapjoyUtil.safePut(hashMap, "platform", TapjoyConnectCore.platformName, true);
        TapjoyUtil.safePut(hashMap, "display_multiplier", Float.toString(TapjoyConnectCore.currencyMultiplier), true);
        TapjoyUtil.safePut(hashMap, "carrier_name", TapjoyConnectCore.carrierName, true);
        TapjoyUtil.safePut(hashMap, "carrier_country_code", TapjoyConnectCore.carrierCountryCode, true);
        TapjoyUtil.safePut(hashMap, "mobile_country_code", TapjoyConnectCore.mobileCountryCode, true);
        TapjoyUtil.safePut(hashMap, "mobile_network_code", TapjoyConnectCore.mobileNetworkCode, true);
        TapjoyUtil.safePut(hashMap, "device_manufacturer", TapjoyConnectCore.deviceManufacturer, true);
        TapjoyUtil.safePut(hashMap, "screen_density", "" + TapjoyConnectCore.deviceScreenDensity, true);
        TapjoyUtil.safePut(hashMap, "screen_layout_size", "" + TapjoyConnectCore.deviceScreenLayoutSize, true);
        TapjoyUtil.safePut(hashMap, "connection_type", TapjoyConnectCore.connectionType = getConnectionType(), true);
        TapjoyUtil.safePut(hashMap, "connection_subtype", TapjoyConnectCore.connectionSubType = getConnectionSubType(), true);
        TapjoyUtil.safePut(hashMap, "plugin", TapjoyConnectCore.plugin, true);
        TapjoyUtil.safePut(hashMap, "sdk_type", TapjoyConnectCore.sdkType, true);
        TapjoyUtil.safePut(hashMap, "store_name", TapjoyConnectCore.storeName, true);
        TapjoyUtil.safePut(hashMap, "device_location", String.valueOf(TapjoyConnectCore.deviceLocation), true);
        TapjoyUtil.safePut(hashMap, "share_facebook", String.valueOf(TapjoyConnectCore.shareFacebook), true);
        TapjoyUtil.safePut(hashMap, "share_twitter", String.valueOf(TapjoyConnectCore.shareTwitter), true);
        TapjoyUtil.safePut(hashMap, "share_googleplus", String.valueOf(TapjoyConnectCore.shareGooglePlus), true);
        TapjoyUtil.safePut(hashMap, "share_linkedin", String.valueOf(TapjoyConnectCore.shareLinkedIn), true);
        TapjoyUtil.safePut(hashMap, "store_view", String.valueOf(TapjoyConnectCore.storeView), true);
        if (TapjoyConnectCore.sessionID == null || TapjoyConnectCore.sessionID.length() == 0 || System.currentTimeMillis() - TapjoyConnectCore.lastTimeStamp > 1800000L) {
            TapjoyConnectCore.sessionID = generateSessionID();
        }
        else {
            TapjoyConnectCore.lastTimeStamp = System.currentTimeMillis();
        }
        TapjoyUtil.safePut(hashMap, "session_id", TapjoyConnectCore.sessionID, true);
        return hashMap;
    }
    
    public static String getRedirectDomain() {
        return TapjoyConnectCore.redirectDomain;
    }
    
    public static String getSecretKey() {
        return TapjoyConnectCore.secretKey;
    }
    
    public static String getSha1MacAddress() {
        try {
            return TapjoyUtil.SHA1(TapjoyConnectCore.macAddress);
        }
        catch (Exception ex) {
            TapjoyLog.e("TapjoyConnect", "Error generating sha1 of macAddress: " + ex.toString());
            return null;
        }
    }
    
    public static String getSha2DeviceID() {
        return TapjoyConnectCore.sha2DeviceID;
    }
    
    public static Map<String, String> getTimeStampAndVerifierParams() {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        final long l = System.currentTimeMillis() / 1000L;
        final String verifier = getVerifier(l);
        TapjoyUtil.safePut(hashMap, "timestamp", String.valueOf(l), true);
        TapjoyUtil.safePut(hashMap, "verifier", verifier, true);
        return hashMap;
    }
    
    public static Map<String, String> getURLParams() {
        final Map<String, String> genericURLParams = getGenericURLParams();
        genericURLParams.putAll(getTimeStampAndVerifierParams());
        return genericURLParams;
    }
    
    public static String getUserID() {
        return TapjoyConnectCore.userID;
    }
    
    private static String getVerifier(final long lng) {
        try {
            return TapjoyUtil.SHA256(TapjoyConnectCore.appID + ":" + getVerifierID() + ":" + lng + ":" + TapjoyConnectCore.secretKey);
        }
        catch (Exception ex) {
            TapjoyLog.e("TapjoyConnect", "getVerifier ERROR: " + ex.toString());
            return "";
        }
    }
    
    private static String getVerifierID() {
        if (TapjoyConnectCore.deviceID != null && TapjoyConnectCore.deviceID.length() > 0) {
            return TapjoyConnectCore.deviceID;
        }
        if (TapjoyConnectCore.macAddress != null && TapjoyConnectCore.macAddress.length() > 0) {
            return TapjoyConnectCore.macAddress;
        }
        if (TapjoyConnectCore.androidID != null && TapjoyConnectCore.androidID.length() > 0) {
            return TapjoyConnectCore.androidID;
        }
        Log.e("TapjoyConnect", "Error -- no valid device identifier");
        return null;
    }
    
    public static Map<String, String> getVideoParams() {
        final HashMap<String, String> obj = new HashMap<String, String>();
        if (TapjoyConnectCore.videoEnabled) {
            if (TapjoyConnectCore.videoIDs.length() > 0) {
                TapjoyUtil.safePut(obj, "video_offer_ids", TapjoyConnectCore.videoIDs, true);
            }
        }
        else {
            TapjoyUtil.safePut(obj, "hide_videos", String.valueOf(true), true);
        }
        TapjoyLog.i("TapjoyConnect", "video parameters: " + obj);
        return obj;
    }
    
    private static boolean handleConnectResponse(final String s) {
        final Document buildDocument = TapjoyUtil.buildDocument(s);
        if (buildDocument != null) {
            final String nodeTrimValue = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("PackageNames"));
            if (nodeTrimValue != null && nodeTrimValue.length() > 0) {
                final Vector<String> vector = new Vector<String>();
                int beginIndex = 0;
                while (true) {
                    final int index = nodeTrimValue.indexOf(44, beginIndex);
                    if (index == -1) {
                        break;
                    }
                    TapjoyLog.i("TapjoyConnect", "parse: " + nodeTrimValue.substring(beginIndex, index).trim());
                    vector.add(nodeTrimValue.substring(beginIndex, index).trim());
                    beginIndex = index + 1;
                }
                TapjoyLog.i("TapjoyConnect", "parse: " + nodeTrimValue.substring(beginIndex).trim());
                vector.add(nodeTrimValue.substring(beginIndex).trim());
                TapjoyConnectCore.matchingPackageNames = "";
                for (final ApplicationInfo applicationInfo : TapjoyConnectCore.packageManager.getInstalledApplications(0)) {
                    if ((0x1 & applicationInfo.flags) != 0x1 && vector.contains(applicationInfo.packageName)) {
                        TapjoyLog.i("TapjoyConnect", "MATCH: installed packageName: " + applicationInfo.packageName);
                        if (TapjoyConnectCore.matchingPackageNames.length() > 0) {
                            TapjoyConnectCore.matchingPackageNames += ",";
                        }
                        TapjoyConnectCore.matchingPackageNames += applicationInfo.packageName;
                    }
                }
            }
            final String nodeTrimValue2 = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("Success"));
            return nodeTrimValue2 != null && nodeTrimValue2.equals("true");
        }
        return true;
    }
    
    private boolean handlePayPerActionResponse(final String s) {
        final Document buildDocument = TapjoyUtil.buildDocument(s);
        if (buildDocument != null) {
            final String nodeTrimValue = TapjoyUtil.getNodeTrimValue(buildDocument.getElementsByTagName("Success"));
            if (nodeTrimValue != null && nodeTrimValue.equals("true")) {
                TapjoyLog.i("TapjoyConnect", "Successfully sent completed Pay-Per-Action to Tapjoy server.");
                return true;
            }
            TapjoyLog.e("TapjoyConnect", "Completed Pay-Per-Action call failed.");
        }
        return false;
    }
    
    private boolean init() throws TapjoyException {
        TapjoyConnectCore.packageManager = TapjoyConnectCore.context.getPackageManager();
        this.integrationCheck();
        this.loadConfigurations();
        this.obtainDeviceInformation();
        if (getConnectFlagValue("TJC_SERVICE_URL") == "") {
            setHostURL("https://ws.tapjoyads.com/");
        }
        if (getConnectFlagValue("debug_host_url") != null && getConnectFlagValue("debug_host_url").length() > 0) {
            setHostURL(getConnectFlagValue("debug_host_url"));
        }
        final String connectFlagValue = getConnectFlagValue("TJC_SERVICE_URL");
        TapjoyConnectCore.redirectDomain = connectFlagValue.substring(connectFlagValue.indexOf("//") + "//".length(), connectFlagValue.lastIndexOf("/"));
        final StringBuilder append = new StringBuilder().append("deviceID: ").append(TapjoyConnectCore.deviceID);
        String str;
        if (getConnectFlagValue("debug_device_id") != null && getConnectFlagValue("debug_device_id").length() > 0) {
            str = " *debug_device_id*";
        }
        else {
            str = "";
        }
        TapjoyLog.i("TapjoyConnect", append.append(str).toString());
        TapjoyLog.i("TapjoyConnect", "sha2_udid: " + TapjoyConnectCore.sha2DeviceID);
        for (final Map.Entry<String, String> entry : getGenericURLParams().entrySet()) {
            TapjoyLog.i("TapjoyConnect", entry.getKey() + ": " + entry.getValue());
        }
        if (TapjoyConnectCore.connectFlags != null) {
            this.logConnectFlags();
        }
        return true;
    }
    
    private void integrationCheck() throws TapjoyIntegrationException {
        try {
            final List<ActivityInfo> list = Arrays.asList(TapjoyConnectCore.packageManager.getPackageInfo(TapjoyConnectCore.context.getPackageName(), 1).activities);
            if (list != null) {
                final Iterator<ActivityInfo> iterator = list.iterator();
                while (iterator.hasNext()) {
                    this.checkForDependency(iterator.next());
                }
            }
        }
        catch (PackageManager$NameNotFoundException ex) {
            throw new TapjoyIntegrationException("NameNotFoundException: Could not find package.");
        }
        if (TapjoyConnectCore.dependencyClassesRequired.size() == 0) {
            this.checkPermissions();
            this.resolveJSBridgeMethods();
            return;
        }
        if (TapjoyConnectCore.dependencyClassesRequired.size() == 1) {
            throw new TapjoyIntegrationException("Missing " + TapjoyConnectCore.dependencyClassesRequired.size() + " dependency class in manifest: " + TapjoyConnectCore.dependencyClassesRequired.toString());
        }
        throw new TapjoyIntegrationException("Missing " + TapjoyConnectCore.dependencyClassesRequired.size() + " dependency classes in manifest: " + TapjoyConnectCore.dependencyClassesRequired.toString());
    }
    
    private boolean isPermissionGranted(final String s) {
        return TapjoyConnectCore.packageManager.checkPermission(s, TapjoyConnectCore.context.getPackageName()) == 0;
    }
    
    private void loadConfigurations() {
        if (TapjoyConnectCore.connectFlags == null) {
            TapjoyConnectCore.connectFlags = new Hashtable<String, String>();
        }
        if (getConnectFlagValue("enable_logging") != null && getConnectFlagValue("enable_logging").equals("true")) {
            TapjoyLog.enableLogging(true);
        }
        this.checkManifestForConfigurations();
        this.checkResourceFileForConfigurations();
    }
    
    private void logConnectFlags() {
        TapjoyLog.i("TapjoyConnect", "Connect Flags:");
        TapjoyLog.i("TapjoyConnect", "--------------------");
        for (final Map.Entry<String, String> entry : TapjoyConnectCore.connectFlags.entrySet()) {
            TapjoyLog.i("TapjoyConnect", "key: " + entry.getKey() + ", value: " + Uri.encode((String)entry.getValue()));
            if (entry.getKey().equals("sha_2_udid") && !TapjoyConnectCore.sdkType.equals("connect")) {
                TapjoyLog.w("TapjoyConnect", "WARNING -- only the Connect/Advertiser SDK can support sha_2_udid");
                TapjoyConnectCore.connectFlags.remove("sha_2_udid");
            }
        }
        TapjoyLog.i("TapjoyConnect", "hostURL: [" + getConnectFlagValue("TJC_SERVICE_URL") + "]");
        TapjoyLog.i("TapjoyConnect", "redirectDomain: [" + TapjoyConnectCore.redirectDomain + "]");
        TapjoyLog.i("TapjoyConnect", "--------------------");
    }
    
    private void obtainCarrierInformation() {
        final TelephonyManager telephonyManager = (TelephonyManager)TapjoyConnectCore.context.getSystemService("phone");
        if (telephonyManager != null) {
            TapjoyConnectCore.carrierName = telephonyManager.getNetworkOperatorName();
            TapjoyConnectCore.carrierCountryCode = telephonyManager.getNetworkCountryIso();
            if (telephonyManager.getNetworkOperator() != null && (telephonyManager.getNetworkOperator().length() == 5 || telephonyManager.getNetworkOperator().length() == 6)) {
                TapjoyConnectCore.mobileCountryCode = telephonyManager.getNetworkOperator().substring(0, 3);
                TapjoyConnectCore.mobileNetworkCode = telephonyManager.getNetworkOperator().substring(3);
            }
            if (this.isPermissionGranted("android.permission.READ_PHONE_STATE")) {
            Label_0239_Outer:
                while (true) {
                    while (true) {
                    Label_0360:
                        while (true) {
                            try {
                                if (getConnectFlagValue("debug_device_id") != null && getConnectFlagValue("debug_device_id").length() > 0) {
                                    TapjoyConnectCore.deviceID = getConnectFlagValue("debug_device_id");
                                }
                                else {
                                    TapjoyConnectCore.deviceID = telephonyManager.getDeviceId();
                                }
                                TapjoyLog.i("TapjoyConnect", "deviceID: " + TapjoyConnectCore.deviceID);
                                final int n = 0;
                                if (TapjoyConnectCore.deviceID == null) {
                                    TapjoyLog.e("TapjoyConnect", "Device id is null.");
                                    TapjoyLog.i("TapjoyConnect", "ANDROID SDK VERSION: " + Build$VERSION.SDK_INT);
                                    if (Build$VERSION.SDK_INT >= 9) {
                                        TapjoyLog.i("TapjoyConnect", "TRYING TO GET SERIAL OF 2.3+ DEVICE...");
                                        final String serial = this.getSerial();
                                        if (n == 0) {
                                            TapjoyConnectCore.deviceID = serial;
                                        }
                                        if (TapjoyConnectCore.deviceID != null) {
                                            break Label_0360;
                                        }
                                        TapjoyLog.e("TapjoyConnect", "SERIAL: Device id is null.");
                                    }
                                    if (n != 0) {
                                        TapjoyConnectCore.sha2DeviceID = TapjoyUtil.SHA256(TapjoyConnectCore.deviceID);
                                        return;
                                    }
                                    break;
                                }
                            }
                            catch (Exception ex) {
                                TapjoyLog.e("TapjoyConnect", "Cannot get deviceID. e: " + ex.toString());
                                TapjoyConnectCore.deviceID = null;
                                return;
                            }
                            if (TapjoyConnectCore.deviceID.length() == 0 || TapjoyConnectCore.deviceID.equals("000000000000000") || TapjoyConnectCore.deviceID.equals("0")) {
                                TapjoyLog.e("TapjoyConnect", "Device id is empty or an emulator.");
                                final int n = 0;
                                continue Label_0239_Outer;
                            }
                            TapjoyConnectCore.deviceID = TapjoyConnectCore.deviceID.toLowerCase(Locale.getDefault());
                            final int n = 1;
                            continue Label_0239_Outer;
                        }
                        if (TapjoyConnectCore.deviceID.length() == 0 || TapjoyConnectCore.deviceID.equals("000000000000000") || TapjoyConnectCore.deviceID.equals("0") || TapjoyConnectCore.deviceID.equals("unknown")) {
                            TapjoyLog.e("TapjoyConnect", "SERIAL: Device id is empty or an emulator.");
                            continue;
                        }
                        TapjoyConnectCore.deviceID = TapjoyConnectCore.deviceID.toLowerCase(Locale.getDefault());
                        final int n = 1;
                        continue;
                    }
                }
            }
            else {
                TapjoyLog.i("TapjoyConnect", "*** ignore deviceID");
            }
        }
    }
    
    private void obtainDeviceInformation() throws TapjoyException {
        TapjoyConnectCore.androidID = Settings$Secure.getString(TapjoyConnectCore.context.getContentResolver(), "android_id");
        if (TapjoyConnectCore.androidID != null) {
            TapjoyConnectCore.androidID = TapjoyConnectCore.androidID.toLowerCase();
        }
        try {
            TapjoyConnectCore.appVersion = TapjoyConnectCore.packageManager.getPackageInfo(TapjoyConnectCore.context.getPackageName(), 0).versionName;
            TapjoyConnectCore.deviceType = "android";
            TapjoyConnectCore.platformName = "android";
            TapjoyConnectCore.deviceModel = Build.MODEL;
            TapjoyConnectCore.deviceManufacturer = Build.MANUFACTURER;
            TapjoyConnectCore.deviceOSVersion = Build$VERSION.RELEASE;
            TapjoyConnectCore.deviceCountryCode = Locale.getDefault().getCountry();
            TapjoyConnectCore.deviceLanguage = Locale.getDefault().getLanguage();
            TapjoyConnectCore.libraryVersion = "9.1.1";
            TapjoyConnectCore.bridgeVersion = "1.0.4";
            this.obtainScreenInformation();
            this.obtainMacAddress();
            this.obtainCarrierInformation();
            this.determineUserID();
            this.setDeviceCapabilityFlags();
        }
        catch (PackageManager$NameNotFoundException ex) {
            throw new TapjoyException(ex.getMessage());
        }
    }
    
    private void obtainMacAddress() {
        if (this.isPermissionGranted("android.permission.ACCESS_WIFI_STATE")) {
            try {
                final WifiManager wifiManager = (WifiManager)TapjoyConnectCore.context.getSystemService("wifi");
                if (wifiManager != null) {
                    final WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                    if (connectionInfo != null) {
                        TapjoyConnectCore.macAddress = connectionInfo.getMacAddress();
                        if (TapjoyConnectCore.macAddress != null) {
                            TapjoyConnectCore.macAddress = TapjoyConnectCore.macAddress.replace(":", "").toLowerCase();
                        }
                    }
                }
                return;
            }
            catch (Exception ex) {
                TapjoyLog.e("TapjoyConnect", "Error getting device mac address: " + ex.toString());
                return;
            }
        }
        TapjoyLog.i("TapjoyConnect", "*** ignore macAddress");
    }
    
    private void obtainScreenInformation() {
        try {
            if (Build$VERSION.SDK_INT > 3) {
                final TapjoyDisplayMetricsUtil tapjoyDisplayMetricsUtil = new TapjoyDisplayMetricsUtil(TapjoyConnectCore.context);
                TapjoyConnectCore.deviceScreenDensity = tapjoyDisplayMetricsUtil.getScreenDensityDPI();
                TapjoyConnectCore.deviceScreenDensityScale = tapjoyDisplayMetricsUtil.getScreenDensityScale();
                TapjoyConnectCore.deviceScreenLayoutSize = tapjoyDisplayMetricsUtil.getScreenLayoutSize();
            }
        }
        catch (Exception ex) {
            TapjoyLog.e("TapjoyConnect", "Error getting screen density/dimensions/layout: " + ex.toString());
        }
    }
    
    private void parsePropertiesIntoConfigFlags(final Properties properties) {
        final Enumeration<String> keys = ((Hashtable<String, V>)properties).keys();
        while (keys.hasMoreElements()) {
            try {
                final String s = keys.nextElement();
                TapjoyConnectCore.connectFlags.put(s, (String)properties.get(s));
            }
            catch (ClassCastException ex) {
                TapjoyLog.e("TapjoyConnect", "Error parsing configuration properties in tapjoy_config.txt");
            }
        }
    }
    
    public static void removeOfflineLog(final String s) {
        final SharedPreferences$Editor edit = TapjoyConnectCore.context.getSharedPreferences("tapjoyOfflineLog", 0).edit();
        edit.remove(s);
        edit.commit();
    }
    
    public static void requestTapjoyConnect(final Context context, final String s, final String s2) throws TapjoyException {
        requestTapjoyConnect(context, s, s2, null);
    }
    
    public static void requestTapjoyConnect(final Context context, final String s, final String s2, final Hashtable<String, String> hashtable) throws TapjoyException {
        requestTapjoyConnect(context, s, s2, hashtable, null);
    }
    
    public static void requestTapjoyConnect(final Context context, final String appID, final String secretKey, final Hashtable<String, String> connectFlags, final TapjoyConnectNotifier connectNotifier) throws TapjoyException {
        TapjoyConnectCore.appID = appID;
        TapjoyConnectCore.secretKey = secretKey;
        TapjoyConnectCore.connectFlags = connectFlags;
        TapjoyConnectCore.connectNotifier = connectNotifier;
        TapjoyConnectCore.tapjoyConnectCore = new TapjoyConnectCore(context);
    }
    
    private void resolveJSBridgeMethods() throws TapjoyIntegrationException {
        Class<?> clazz;
        try {
            final Class<?> forName;
            clazz = (forName = Class.forName("com.tapjoy.TJAdUnitJSBridge"));
            final String s = "closeRequested";
            final int n = 0;
            final Class[] array = new Class[n];
            forName.getMethod(s, (Class[])array);
            return;
        }
        catch (ClassNotFoundException ex) {
            throw new TapjoyIntegrationException("ClassNotFoundException: com.tapjoy.TJAdUnitJSBridge was not found.");
        }
        try {
            final Class<?> forName = clazz;
            final String s = "closeRequested";
            final int n = 0;
            final Class[] array = new Class[n];
            forName.getMethod(s, (Class[])array);
        }
        catch (NoSuchMethodException ex2) {
            throw new TapjoyIntegrationException("Try configuring Proguard or other code obfuscators to ignore com.tapjoy classes. Visit http://kc.tapjoy.com for more information.");
        }
    }
    
    public static void saveOfflineLog(final String str) {
        final String string = str + "&original_timestamp=" + System.currentTimeMillis() / 1000L + "&offline=true";
        final SharedPreferences$Editor edit = TapjoyConnectCore.context.getSharedPreferences("tapjoyOfflineLog", 0).edit();
        edit.putString(Long.toString(System.currentTimeMillis()), string);
        edit.commit();
    }
    
    public static void sendOfflineLogs() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                final TapjoyURLConnection tapjoyURLConnection = new TapjoyURLConnection();
                for (final Map.Entry<String, V> entry : TapjoyConnectCore.getOfflineLogs().entrySet()) {
                    TapjoyLog.i("TapjoyConnect", "sending offline log: ");
                    final TapjoyHttpURLResponse responseFromURL = tapjoyURLConnection.getResponseFromURL((String)entry.getValue() + "&" + TapjoyUtil.convertURLParams(TapjoyConnectCore.getTimeStampAndVerifierParams(), false), "");
                    if (responseFromURL != null && responseFromURL.statusCode == 200) {
                        TapjoyConnectCore.removeOfflineLog(entry.getKey());
                    }
                }
            }
        }).start();
    }
    
    private void setDeviceCapabilityFlags() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: ldc_w           "android.hardware.location"
        //     4: ldc_w           "android.permission.ACCESS_FINE_LOCATION"
        //     7: invokevirtual   com/tapjoy/TapjoyConnectCore.detectCapability:(Ljava/lang/String;Ljava/lang/String;)Z
        //    10: putstatic       com/tapjoy/TapjoyConnectCore.deviceLocation:Z
        //    13: aload_0        
        //    14: ldc_w           "com.facebook."
        //    17: invokevirtual   com/tapjoy/TapjoyConnectCore.detectSharingApplication:(Ljava/lang/String;)Z
        //    20: putstatic       com/tapjoy/TapjoyConnectCore.shareFacebook:Z
        //    23: aload_0        
        //    24: ldc_w           "com.twitter."
        //    27: invokevirtual   com/tapjoy/TapjoyConnectCore.detectSharingApplication:(Ljava/lang/String;)Z
        //    30: putstatic       com/tapjoy/TapjoyConnectCore.shareTwitter:Z
        //    33: aload_0        
        //    34: ldc_w           "com.google.android.apps.plus"
        //    37: invokevirtual   com/tapjoy/TapjoyConnectCore.detectSharingApplication:(Ljava/lang/String;)Z
        //    40: putstatic       com/tapjoy/TapjoyConnectCore.shareGooglePlus:Z
        //    43: aload_0        
        //    44: ldc_w           "com.linkedin."
        //    47: invokevirtual   com/tapjoy/TapjoyConnectCore.detectSharingApplication:(Ljava/lang/String;)Z
        //    50: putstatic       com/tapjoy/TapjoyConnectCore.shareLinkedIn:Z
        //    53: ldc_w           "store_name"
        //    56: invokestatic    com/tapjoy/TapjoyConnectCore.getConnectFlagValue:(Ljava/lang/String;)Ljava/lang/String;
        //    59: ifnull          132
        //    62: ldc_w           "store_name"
        //    65: invokestatic    com/tapjoy/TapjoyConnectCore.getConnectFlagValue:(Ljava/lang/String;)Ljava/lang/String;
        //    68: invokevirtual   java/lang/String.length:()I
        //    71: ifle            132
        //    74: ldc_w           "store_name"
        //    77: invokestatic    com/tapjoy/TapjoyConnectCore.getConnectFlagValue:(Ljava/lang/String;)Ljava/lang/String;
        //    80: putstatic       com/tapjoy/TapjoyConnectCore.storeName:Ljava/lang/String;
        //    83: new             Ljava/util/ArrayList;
        //    86: dup            
        //    87: getstatic       com/tapjoy/TapjoyConnectFlag.STORE_ARRAY:[Ljava/lang/String;
        //    90: invokestatic    java/util/Arrays.asList:([Ljava/lang/Object;)Ljava/util/List;
        //    93: invokespecial   java/util/ArrayList.<init>:(Ljava/util/Collection;)V
        //    96: getstatic       com/tapjoy/TapjoyConnectCore.storeName:Ljava/lang/String;
        //    99: invokevirtual   java/util/ArrayList.contains:(Ljava/lang/Object;)Z
        //   102: ifne            132
        //   105: ldc             "TapjoyConnect"
        //   107: new             Ljava/lang/StringBuilder;
        //   110: dup            
        //   111: invokespecial   java/lang/StringBuilder.<init>:()V
        //   114: ldc_w           "Warning -- undefined STORE_NAME: "
        //   117: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   120: getstatic       com/tapjoy/TapjoyConnectCore.storeName:Ljava/lang/String;
        //   123: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   126: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   129: invokestatic    com/tapjoy/TapjoyLog.w:(Ljava/lang/String;Ljava/lang/String;)V
        //   132: aload_0        
        //   133: getstatic       com/tapjoy/TapjoyConnectCore.storeName:Ljava/lang/String;
        //   136: invokevirtual   com/tapjoy/TapjoyConnectCore.detectStore:(Ljava/lang/String;)Z
        //   139: putstatic       com/tapjoy/TapjoyConnectCore.storeView:Z
        //   142: return         
        //   143: astore_1       
        //   144: ldc             "TapjoyConnect"
        //   146: new             Ljava/lang/StringBuilder;
        //   149: dup            
        //   150: invokespecial   java/lang/StringBuilder.<init>:()V
        //   153: ldc_w           "Error trying to detect capabilities on devicee: "
        //   156: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   159: aload_1        
        //   160: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   163: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   166: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   169: invokestatic    com/tapjoy/TapjoyLog.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   172: goto            13
        //   175: astore_2       
        //   176: ldc             "TapjoyConnect"
        //   178: new             Ljava/lang/StringBuilder;
        //   181: dup            
        //   182: invokespecial   java/lang/StringBuilder.<init>:()V
        //   185: ldc_w           "Error trying to detect sharing applications installed on devicee: "
        //   188: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   191: aload_2        
        //   192: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   195: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   198: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   201: invokestatic    com/tapjoy/TapjoyLog.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   204: goto            53
        //   207: astore_3       
        //   208: ldc             "TapjoyConnect"
        //   210: new             Ljava/lang/StringBuilder;
        //   213: dup            
        //   214: invokespecial   java/lang/StringBuilder.<init>:()V
        //   217: ldc_w           "Error trying to detect store intent on devicee: "
        //   220: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   223: aload_3        
        //   224: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   227: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   230: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   233: invokestatic    com/tapjoy/TapjoyLog.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   236: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      13     143    175    Ljava/lang/Exception;
        //  13     53     175    207    Ljava/lang/Exception;
        //  132    142    207    237    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 93, Size: 93
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public static void setHostURL(String string) {
        if (!string.endsWith("/")) {
            string += "/";
        }
        TapjoyConnectCore.connectFlags.put("TJC_SERVICE_URL", string);
    }
    
    public static void setPlugin(final String plugin) {
        TapjoyConnectCore.plugin = plugin;
    }
    
    public static void setSDKType(final String sdkType) {
        TapjoyConnectCore.sdkType = sdkType;
    }
    
    public static void setUserID(final String userID) {
        TapjoyConnectCore.userID = userID;
        TapjoyLog.i("TapjoyConnect", "URL parameters: " + getURLParams());
        new Thread(new Runnable() {
            @Override
            public void run() {
                TapjoyLog.i("TapjoyConnect", "setUserID...");
                final TapjoyHttpURLResponse responseFromURL = TapjoyConnectCore.tapjoyURLConnection.getResponseFromURL(TapjoyConnectCore.getHostURL() + "set_publisher_user_id?", TapjoyConnectCore.getURLParams());
                if (responseFromURL.response != null) {
                    if (!handleConnectResponse(responseFromURL.response)) {}
                    TapjoyLog.i("TapjoyConnect", "setUserID successful...");
                }
            }
        }).start();
    }
    
    public static void setVideoEnabled(final boolean videoEnabled) {
        TapjoyConnectCore.videoEnabled = videoEnabled;
    }
    
    public static void setVideoIDs(final String videoIDs) {
        TapjoyConnectCore.videoIDs = videoIDs;
    }
    
    public static void viewDidClose(final int n) {
        if (TapjoyConnectCore.viewNotifier != null) {
            TapjoyConnectCore.viewNotifier.viewDidClose(n);
        }
    }
    
    public static void viewDidOpen(final int n) {
        if (TapjoyConnectCore.viewNotifier != null) {
            TapjoyConnectCore.viewNotifier.viewDidOpen(n);
        }
    }
    
    public static void viewWillClose(final int n) {
        if (TapjoyConnectCore.viewNotifier != null) {
            TapjoyConnectCore.viewNotifier.viewWillClose(n);
        }
    }
    
    public static void viewWillOpen(final int n) {
        if (TapjoyConnectCore.viewNotifier != null) {
            TapjoyConnectCore.viewNotifier.viewWillOpen(n);
        }
    }
    
    public void actionComplete(final String str) {
        TapjoyLog.i("TapjoyConnect", "actionComplete: " + str);
        final Map<String, String> paramsWithoutAppID = getParamsWithoutAppID();
        TapjoyUtil.safePut(paramsWithoutAppID, "app_id", str, true);
        paramsWithoutAppID.putAll(getTimeStampAndVerifierParams());
        TapjoyLog.i("TapjoyConnect", "PPA URL parameters: " + paramsWithoutAppID);
        new Thread(new PPAThread(paramsWithoutAppID)).start();
    }
    
    public void appPause() {
        this.appPaused = true;
    }
    
    public void appResume() {
        if (this.appPaused) {
            generateSessionID();
            this.appPaused = false;
        }
    }
    
    public void callConnect() {
        new Thread(new ConnectThread()).start();
    }
    
    protected boolean detectApplication(final String prefix) {
        final Iterator<ApplicationInfo> iterator = TapjoyConnectCore.packageManager.getInstalledApplications(0).iterator();
        while (iterator.hasNext()) {
            if (iterator.next().packageName.startsWith(prefix)) {
                return true;
            }
        }
        return false;
    }
    
    protected boolean detectCapability(final String regex, final String s) {
        final FeatureInfo[] systemAvailableFeatures = TapjoyConnectCore.packageManager.getSystemAvailableFeatures();
        for (int length = systemAvailableFeatures.length, i = 0; i < length; ++i) {
            if (systemAvailableFeatures[i].name.matches(regex)) {
                return s == null || TapjoyConnectCore.packageManager.checkPermission(s, TapjoyConnectCore.context.getPackageName()) == 0;
            }
        }
        return false;
    }
    
    protected boolean detectSharingApplication(final String prefix) {
        final Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        final Iterator iterator = TapjoyConnectCore.packageManager.queryIntentActivities(intent, 0).iterator();
        while (iterator.hasNext()) {
            if (iterator.next().activityInfo.packageName.startsWith(prefix)) {
                return true;
            }
        }
        return false;
    }
    
    protected boolean detectStore(final String s) {
        final Intent intent = new Intent("android.intent.action.VIEW");
        boolean b;
        if (s.length() < 1) {
            intent.setData(Uri.parse("market://details"));
            final int size = TapjoyConnectCore.packageManager.queryIntentActivities(intent, 0).size();
            b = false;
            if (size > 0) {
                b = true;
            }
        }
        else if (s.equals("gfan")) {
            b = this.detectApplication("com.mappn.gfan");
        }
        else {
            final boolean equals = s.equals("skt");
            b = false;
            if (equals) {
                b = this.detectApplication("com.skt.skaf.TSCINSTALL");
            }
        }
        if (b) {
            return b;
        }
        return b;
    }
    
    public void enablePaidAppWithActionID(final String s) {
        TapjoyLog.i("TapjoyConnect", "enablePaidAppWithActionID: " + s);
        TapjoyConnectCore.paidAppActionID = s;
        this.elapsed_time = TapjoyConnectCore.context.getSharedPreferences("tjcPrefrences", 0).getLong("tapjoy_elapsed_time", 0L);
        TapjoyLog.i("TapjoyConnect", "paidApp elapsed: " + this.elapsed_time);
        if (this.elapsed_time >= 900000L) {
            if (TapjoyConnectCore.paidAppActionID != null && TapjoyConnectCore.paidAppActionID.length() > 0) {
                TapjoyLog.i("TapjoyConnect", "Calling PPA actionComplete...");
                this.actionComplete(TapjoyConnectCore.paidAppActionID);
            }
        }
        else if (this.timer == null) {
            (this.timer = new Timer()).schedule(new PaidAppTimerTask(), 10000L, 10000L);
        }
    }
    
    public float getCurrencyMultiplier() {
        return TapjoyConnectCore.currencyMultiplier;
    }
    
    public String getSerial() {
        String string = null;
        try {
            final Field declaredField = Class.forName("android.os.Build").getDeclaredField("SERIAL");
            if (!declaredField.isAccessible()) {
                declaredField.setAccessible(true);
            }
            string = declaredField.get(Build.class).toString();
            TapjoyLog.i("TapjoyConnect", "serial: " + string);
            return string;
        }
        catch (Exception ex) {
            TapjoyLog.e("TapjoyConnect", ex.toString());
            return string;
        }
    }
    
    public boolean isInitialized() {
        return this.initialized;
    }
    
    public void release() {
        TapjoyConnectCore.tapjoyConnectCore = null;
        TapjoyConnectCore.tapjoyURLConnection = null;
        TapjoyLog.i("TapjoyConnect", "Releasing core static instance.");
    }
    
    public void setCurrencyMultiplier(final float n) {
        TapjoyLog.i("TapjoyConnect", "setVirtualCurrencyMultiplier: " + n);
        TapjoyConnectCore.currencyMultiplier = n;
    }
    
    public void setTapjoyViewNotifier(final TapjoyViewNotifier viewNotifier) {
        TapjoyConnectCore.viewNotifier = viewNotifier;
    }
    
    public class ConnectThread implements Runnable
    {
        @Override
        public void run() {
            TapjoyLog.i("TapjoyConnect", "starting connect call...");
            String hostURL = "https://connect.tapjoy.com/";
            if (TapjoyConnectCore.getHostURL() != "https://ws.tapjoyads.com/") {
                hostURL = TapjoyConnectCore.getHostURL();
            }
            final TapjoyHttpURLResponse responseFromURL = TapjoyConnectCore.tapjoyURLConnection.getResponseFromURL(hostURL + "connect?", TapjoyConnectCore.getURLParams());
            if (responseFromURL != null && responseFromURL.statusCode == 200) {
                if (handleConnectResponse(responseFromURL.response)) {
                    TapjoyLog.i("TapjoyConnect", "Successfully connected to tapjoy site.");
                    if (TapjoyConnectCore.connectNotifier != null) {
                        TapjoyConnectCore.connectNotifier.connectSuccess();
                    }
                }
                else if (TapjoyConnectCore.connectNotifier != null) {
                    TapjoyConnectCore.connectNotifier.connectFail();
                }
                if (TapjoyConnectCore.matchingPackageNames.length() > 0) {
                    final Map<String, String> genericURLParams = TapjoyConnectCore.getGenericURLParams();
                    TapjoyUtil.safePut(genericURLParams, "package_names", TapjoyConnectCore.matchingPackageNames, true);
                    final long l = System.currentTimeMillis() / 1000L;
                    final String access$800 = getPackageNamesVerifier(l, TapjoyConnectCore.matchingPackageNames);
                    TapjoyUtil.safePut(genericURLParams, "timestamp", String.valueOf(l), true);
                    TapjoyUtil.safePut(genericURLParams, "verifier", access$800, true);
                    final TapjoyHttpURLResponse responseFromURL2 = new TapjoyURLConnection().getResponseFromURL(TapjoyConnectCore.getHostURL() + "apps_installed?", genericURLParams);
                    if (responseFromURL2 != null && responseFromURL2.statusCode == 200) {
                        TapjoyLog.i("TapjoyConnect", "Successfully pinged sdkless api.");
                    }
                }
            }
            else if (TapjoyConnectCore.connectNotifier != null) {
                TapjoyConnectCore.connectNotifier.connectFail();
            }
        }
    }
    
    public class PPAThread implements Runnable
    {
        private Map<String, String> params;
        
        public PPAThread(final Map<String, String> params) {
            super();
            this.params = params;
        }
        
        @Override
        public void run() {
            final TapjoyHttpURLResponse responseFromURL = TapjoyConnectCore.tapjoyURLConnection.getResponseFromURL(TapjoyConnectCore.getHostURL() + "connect?", this.params);
            if (responseFromURL.response != null) {
                TapjoyConnectCore.this.handlePayPerActionResponse(responseFromURL.response);
            }
        }
    }
    
    private class PaidAppTimerTask extends TimerTask
    {
        @Override
        public void run() {
            TapjoyConnectCore.this.elapsed_time += 10000L;
            TapjoyLog.i("TapjoyConnect", "elapsed_time: " + TapjoyConnectCore.this.elapsed_time + " (" + TapjoyConnectCore.this.elapsed_time / 1000L / 60L + "m " + TapjoyConnectCore.this.elapsed_time / 1000L % 60L + "s)");
            final SharedPreferences$Editor edit = TapjoyConnectCore.context.getSharedPreferences("tjcPrefrences", 0).edit();
            edit.putLong("tapjoy_elapsed_time", TapjoyConnectCore.this.elapsed_time);
            edit.commit();
            if (TapjoyConnectCore.this.elapsed_time >= 900000L) {
                TapjoyLog.i("TapjoyConnect", "timer done...");
                if (TapjoyConnectCore.paidAppActionID != null && TapjoyConnectCore.paidAppActionID.length() > 0) {
                    TapjoyLog.i("TapjoyConnect", "Calling PPA actionComplete...");
                    TapjoyConnectCore.this.actionComplete(TapjoyConnectCore.paidAppActionID);
                }
                this.cancel();
            }
        }
    }
}
