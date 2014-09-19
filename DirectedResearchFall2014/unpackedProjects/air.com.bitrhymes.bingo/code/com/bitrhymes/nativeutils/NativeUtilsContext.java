package com.bitrhymes.nativeutils;

import android.app.*;
import android.util.*;
import com.adobe.fre.*;
import java.util.*;
import com.bitrhymes.nativeutils.localnotify.*;
import com.bitrhymes.nativeutils.functions.*;

public class NativeUtilsContext extends FREContext
{
    static FREContext appsContext;
    public Activity activity;
    
    public static FREContext getFreContext() {
        if (NativeUtilsContext.appsContext != null) {
            return NativeUtilsContext.appsContext;
        }
        Log.d("NativeUtilsContext", "appsContext is null. So, we cannot communicate back to the flash project.");
        return null;
    }
    
    public static void setFREContext(final FREContext appsContext) {
        NativeUtilsContext.appsContext = appsContext;
    }
    
    @Override
    public void dispose() {
    }
    
    @Override
    public Map<String, FREFunction> getFunctions() {
        final HashMap<String, OpenUrl> hashMap = (HashMap<String, OpenUrl>)new HashMap<String, LocalizedModel>();
        hashMap.put("canOpenUrl", (LocalizedModel)new CanOpenURL());
        hashMap.put("openUrl", (LocalizedModel)new OpenUrl());
        hashMap.put("showAlertView", (LocalizedModel)new ShowAlertView());
        hashMap.put("nativeLog", (LocalizedModel)new FlashLog());
        hashMap.put("setNotification", (LocalizedModel)new SetNotificationAfterHour());
        hashMap.put("cancelAllLocalNotifications", (LocalizedModel)new ClearAlarmNotifications());
        hashMap.put("AR_rateApp", (LocalizedModel)new AR_rateApp());
        hashMap.put("getMacAddressOfDevice", (LocalizedModel)new GetMacAddressOfDevice());
        hashMap.put("getRawMacAddress", (LocalizedModel)new GetRawMacAddress());
        hashMap.put("getCountryCode", (LocalizedModel)new GetCountryCode());
        hashMap.put("getCountryName", (LocalizedModel)new GetCountryName());
        hashMap.put("getSystemLocale", (LocalizedModel)new GetSystemLocale());
        hashMap.put("getAppleIDFA", (LocalizedModel)new GetAppleIDFA());
        hashMap.put("getAppleUUIDForVender", (LocalizedModel)new GetAppleUUIDForVender());
        hashMap.put("getAndroidID", (LocalizedModel)new GetAndroidID());
        hashMap.put("getIMEI", (LocalizedModel)new GetIMEI());
        hashMap.put("getCurrentLocale", (LocalizedModel)new GetCurrentLocale());
        hashMap.put("getMachineName", (LocalizedModel)new GetMachineName());
        hashMap.put("getOpenUDID", (LocalizedModel)new GetRawOpenUDID());
        hashMap.put("getKeychainMac", (LocalizedModel)new GetMacAddressOfDevice());
        hashMap.put("getKeychainODID", (LocalizedModel)new GetRawOpenUDID());
        hashMap.put("getDeviceModel", (LocalizedModel)new GetDeviceModel());
        hashMap.put("getSystemVersion", (LocalizedModel)new GetDeviceVersion());
        hashMap.put("getSystemName", (LocalizedModel)new GetSystemName());
        hashMap.put("getDeviceName", (LocalizedModel)new GetDeviceName());
        hashMap.put("AR_appLaunched", (LocalizedModel)new AR_appLaunched());
        hashMap.put("AR_appEnteredForeground", (LocalizedModel)new AR_appEnteredForeground());
        hashMap.put("cleanKeychain", (LocalizedModel)new CleanKeychain());
        hashMap.put("loadWebviewWithInApp", (LocalizedModel)new LoadWebviewWithInApp());
        hashMap.put("registerForAPNS", (LocalizedModel)new RegisterForPush());
        hashMap.put("playMovieWithURL", (LocalizedModel)new PlayMovieWithURL());
        hashMap.put("getGoogleAccountID", (LocalizedModel)new GetGoogleAccountID());
        hashMap.put("getDocumentDirectoryPath", (LocalizedModel)new GetDocumentDirectoryPath());
        hashMap.put("getCacheDirectoryPath", (LocalizedModel)new GetCacheDirectoryPath());
        hashMap.put("getPushNoticationTrack", (LocalizedModel)new GetPushNoticationTrack());
        hashMap.put("getUDID", (LocalizedModel)new GetRawUDID());
        hashMap.put("updatePasteBoard", (LocalizedModel)new UpdatePasteBoard());
        hashMap.put("getManufacturer", (LocalizedModel)new GetManufacturer());
        hashMap.put("getDeviceVersionRelease", (LocalizedModel)new GetDeviceVersionRelease());
        hashMap.put("getMD5UDID", (LocalizedModel)new GetMD5UDID());
        hashMap.put("getReferrerString", (LocalizedModel)new GetReferrerString());
        hashMap.put("getMD5OpenUDID", (LocalizedModel)new GetMD5OpenUDID());
        hashMap.put("isAirAvailable", (LocalizedModel)new IsAirAvailable());
        hashMap.put("getGoogleAccountID", (LocalizedModel)new GetGoogleAccountID());
        hashMap.put("getTotalRAMSize", (LocalizedModel)new GetTotalRAMSize());
        hashMap.put("getTotalInternalMemorySize", (LocalizedModel)new GetTotalInternalMemorySize());
        hashMap.put("getTotalExternalMemorySize", (LocalizedModel)new GetTotalExternalMemorySize());
        hashMap.put("getAvailableRAMSize", (LocalizedModel)new GetAvailableRAMSize());
        hashMap.put("getAvailableInternalMemorySize", (LocalizedModel)new GetAvailableInternalMemorySize());
        hashMap.put("getAvailableExternalMemorySize", (LocalizedModel)new GetAvailableExternalMemorySize());
        hashMap.put("updateBadgeVal", (LocalizedModel)new UpdateBadgeVal());
        hashMap.put("AR_userDidSignificantEvent", (LocalizedModel)new AR_userDidSignificantEvent());
        hashMap.put("localizedModel", new LocalizedModel());
        hashMap.put("quitApp", new ShowAlertView());
        return (Map<String, FREFunction>)hashMap;
    }
}
