package com.kochava.android.util;

import java.security.*;
import android.bluetooth.*;
import android.telephony.*;
import android.provider.*;
import java.util.*;
import android.os.*;
import android.net.wifi.*;
import android.content.pm.*;
import android.content.*;

public class OpenUDID
{
    private static final boolean LOG = false;
    public static final String PREFS_NAME = "openudid_prefs";
    public static final String PREF_KEY = "openudid";
    public static final String TAG = "OpenUDID";
    private static final boolean _UseBlueToothFailback = true;
    private static final boolean _UseImeiFailback;
    private static String _openUdid;
    
    private static String Md5(final String s) {
    Label_0040_Outer:
        while (true) {
            while (true) {
                byte[] digest;
                String s2;
                int n;
                while (true) {
                    try {
                        final MessageDigest instance = MessageDigest.getInstance("MD5");
                        instance.update(s.getBytes(), 0, s.length());
                        digest = instance.digest();
                        s2 = new String();
                        n = 0;
                        if (n >= digest.length) {
                            return s2.toUpperCase();
                        }
                    }
                    catch (NoSuchAlgorithmException ex) {
                        ex.printStackTrace();
                        final MessageDigest instance = null;
                        continue Label_0040_Outer;
                    }
                    break;
                }
                final int i = 0xFF & digest[n];
                if (i <= 15) {
                    s2 = String.valueOf(s2) + "0";
                }
                s2 = String.valueOf(s2) + Integer.toHexString(i);
                ++n;
                continue;
            }
        }
    }
    
    private static void _debugLog(final String s) {
    }
    
    private static void generateBlueToothId() {
        try {
            final String address = BluetoothAdapter.getDefaultAdapter().getAddress();
            if (address != null) {
                OpenUDID._openUdid = "BTMAC:" + address;
            }
        }
        catch (Exception ex) {}
    }
    
    private static void generateImeiId(final Context context) {
        try {
            final String deviceId = ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
            if (deviceId != null && !deviceId.substring(0, 3).equals("000")) {
                OpenUDID._openUdid = "IMEI:" + deviceId;
            }
        }
        catch (Exception ex) {}
    }
    
    private static void generateOpenUDIDInContext(final Context context) {
        generateWifiId(context);
        if (OpenUDID._openUdid != null) {
            return;
        }
        final String lowerCase = Settings$Secure.getString(context.getContentResolver(), "android_id").toLowerCase();
        if (lowerCase != null && lowerCase.length() > 14 && !lowerCase.equals("9774d56d682e549c")) {
            OpenUDID._openUdid = "ANDROID:" + lowerCase;
            return;
        }
        OpenUDID._openUdid = null;
        generateBlueToothId();
        if (OpenUDID._openUdid == null) {
            generateRandomNumber();
        }
        _debugLog(OpenUDID._openUdid);
        _debugLog("done");
    }
    
    private static void generateRandomNumber() {
        OpenUDID._openUdid = Md5(UUID.randomUUID().toString());
    }
    
    private static void generateSystemId() {
        final String format = String.format("%s/%s/%s/%s:%s/%s/%s:%s/%s/%d-%s-%s-%s-%s", Build.BRAND, Build.PRODUCT, Build.DEVICE, Build.BOARD, Build$VERSION.RELEASE, Build.ID, Build$VERSION.INCREMENTAL, Build.TYPE, Build.TAGS, Build.TIME, Build.DISPLAY, Build.HOST, Build.MANUFACTURER, Build.MODEL);
        _debugLog(format);
        if (format != null) {
            OpenUDID._openUdid = Md5(format);
        }
    }
    
    private static void generateWifiId(final Context context) {
        try {
            final WifiInfo connectionInfo = ((WifiManager)context.getSystemService("wifi")).getConnectionInfo();
            _debugLog(String.format("%s", connectionInfo.getMacAddress()));
            final String macAddress = connectionInfo.getMacAddress();
            if (macAddress != null) {
                OpenUDID._openUdid = "WIFIMAC:" + macAddress;
            }
        }
        catch (Exception ex) {}
    }
    
    public static String getCorpUDID(final String s) {
        return Md5(String.format("%s.%s", s, getOpenUDIDInContext()));
    }
    
    public static String getOpenUDIDInContext() {
        return OpenUDID._openUdid;
    }
    
    public static void syncContext(Context packageContext) {
        if (OpenUDID._openUdid != null) {
            return;
        }
        while (true) {
            try {
                packageContext = packageContext.createPackageContext("net.openudid.android", 2);
                final SharedPreferences sharedPreferences = packageContext.getSharedPreferences("openudid_prefs", 1);
                final String string = sharedPreferences.getString("openudid", (String)null);
                if (string == null) {
                    generateOpenUDIDInContext(packageContext);
                    final SharedPreferences$Editor edit = sharedPreferences.edit();
                    edit.putString("openudid", OpenUDID._openUdid);
                    edit.commit();
                    return;
                }
                OpenUDID._openUdid = string;
            }
            catch (PackageManager$NameNotFoundException ex) {
                continue;
            }
            break;
        }
    }
}
