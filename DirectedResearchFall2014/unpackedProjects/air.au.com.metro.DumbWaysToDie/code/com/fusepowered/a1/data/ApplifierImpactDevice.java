package com.fusepowered.a1.data;

import java.net.*;
import com.fusepowered.a1.*;
import android.annotation.*;
import com.fusepowered.a1.properties.*;
import android.provider.*;
import java.util.*;
import android.content.*;
import android.os.*;
import android.telephony.*;
import android.net.*;
import java.io.*;

public class ApplifierImpactDevice
{
    @SuppressLint({ "DefaultLocale" })
    public static String buildMacAddressFromInterface(final NetworkInterface obj) {
        if (obj == null) {
            return "unknown";
        }
        byte[] array;
        while (true) {
            try {
                array = (byte[])NetworkInterface.class.getMethod("getHardwareAddress", (Class<?>[])new Class[0]).invoke(obj, new Object[0]);
                if (array == null) {
                    return "unknown";
                }
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("Could not getHardwareAddress", ApplifierImpactDevice.class);
                array = null;
                continue;
            }
            break;
        }
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < array.length; ++i) {
            sb.append(String.format("%02X:", array[i]));
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return ApplifierImpactUtils.Md5(sb.toString()).toLowerCase();
    }
    
    @SuppressLint({ "DefaultLocale" })
    public static String getAndroidId() {
        String md5 = "unknown";
        try {
            md5 = ApplifierImpactUtils.Md5(Settings$Secure.getString(ApplifierImpactProperties.CURRENT_ACTIVITY.getContentResolver(), "android_id"));
            return md5.toLowerCase();
        }
        catch (Exception ex) {
            ApplifierImpactUtils.Log("Problems fetching androidId: " + ex.getMessage(), ApplifierImpactDevice.class);
            return md5;
        }
    }
    
    public static String getAndroidSerial() {
        String md5 = "unknown";
        try {
            final Class<?> forName = Class.forName("android.os.SystemProperties");
            md5 = (String)forName.getMethod("get", String.class).invoke(forName, "ro.serialno");
            md5 = ApplifierImpactUtils.Md5(md5);
            return md5.toLowerCase();
        }
        catch (Exception ex) {
            return md5;
        }
    }
    
    public static String getConnectionType() {
        if (isUsingWifi()) {
            return "wifi";
        }
        return "cellular";
    }
    
    public static int getDeviceType() {
        return ApplifierImpactProperties.CURRENT_ACTIVITY.getResources().getConfiguration().screenLayout;
    }
    
    public static String getHardwareVersion() {
        return String.valueOf(Build.MANUFACTURER) + " " + Build.MODEL;
    }
    
    public static NetworkInterface getInterfaceFor(final String anotherString) {
        NetworkInterface networkInterface;
        while (true) {
            while (true) {
                Iterator<NetworkInterface> iterator;
                try {
                    iterator = (Iterator<NetworkInterface>)Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
                    if (!iterator.hasNext()) {
                        return null;
                    }
                }
                catch (Exception ex) {
                    return null;
                }
                networkInterface = iterator.next();
                if (anotherString != null && networkInterface.getName().equalsIgnoreCase(anotherString)) {
                    break;
                }
                continue;
            }
        }
        ApplifierImpactUtils.Log("Returning interface: " + networkInterface.getName(), ApplifierImpactDevice.class);
        return networkInterface;
    }
    
    public static String getMacAddress() {
        NetworkInterface networkInterface = getInterfaceFor("eth0");
        if (networkInterface == null) {
            networkInterface = getInterfaceFor("wlan0");
        }
        return buildMacAddressFromInterface(networkInterface);
    }
    
    public static String getOdin1Id() {
        try {
            return ApplifierImpactUtils.SHA1(Settings$Secure.getString(ApplifierImpactProperties.CURRENT_ACTIVITY.getContentResolver(), "android_id"));
        }
        catch (Exception ex) {
            ApplifierImpactUtils.Log("Could not resolve ODIN1 Id: " + ex.getMessage(), ApplifierImpactDevice.class);
            return "unknown";
        }
    }
    
    public static String getOpenUdid() {
        ApplifierImpactOpenUDID.syncContext((Context)ApplifierImpactProperties.CURRENT_ACTIVITY);
        return ApplifierImpactUtils.Md5(ApplifierImpactOpenUDID.getOpenUDIDInContext()).toLowerCase();
    }
    
    public static int getScreenDensity() {
        return ApplifierImpactProperties.CURRENT_ACTIVITY.getResources().getDisplayMetrics().densityDpi;
    }
    
    public static int getScreenSize() {
        return getDeviceType();
    }
    
    public static String getSoftwareVersion() {
        return new StringBuilder().append(Build$VERSION.SDK_INT).toString();
    }
    
    public static String getTelephonyId() {
        String md5 = "unknown";
        try {
            md5 = ApplifierImpactUtils.Md5(((TelephonyManager)ApplifierImpactProperties.CURRENT_ACTIVITY.getSystemService("phone")).getDeviceId());
            return md5.toLowerCase();
        }
        catch (Exception ex) {
            ApplifierImpactUtils.Log("Problems fetching telephonyId: " + ex.getMessage(), ApplifierImpactDevice.class);
            return md5;
        }
    }
    
    public static boolean isUsingWifi() {
        final ConnectivityManager connectivityManager = (ConnectivityManager)ApplifierImpactProperties.CURRENT_ACTIVITY.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        final TelephonyManager telephonyManager = (TelephonyManager)ApplifierImpactProperties.CURRENT_ACTIVITY.getSystemService("phone");
        final NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && connectivityManager.getBackgroundDataSetting() && connectivityManager.getActiveNetworkInfo().isConnected() && telephonyManager != null && activeNetworkInfo.getType() == 1 && activeNetworkInfo.isConnected();
    }
}
