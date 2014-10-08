.class public Lcom/bitrhymes/nativeutils/NativeUtilsContext;
.super Lcom/adobe/fre/FREContext;
.source "NativeUtilsContext.java"


# static fields
.field static appsContext:Lcom/adobe/fre/FREContext;


# instance fields
.field public activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method public static getFreContext()Lcom/adobe/fre/FREContext;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/bitrhymes/nativeutils/NativeUtilsContext;->appsContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/bitrhymes/nativeutils/NativeUtilsContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 74
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const-string v0, "NativeUtilsContext"

    const-string v1, "appsContext is null. So, we cannot communicate back to the flash project."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFREContext(Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "appsContext1"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 79
    sput-object p0, Lcom/bitrhymes/nativeutils/NativeUtilsContext;->appsContext:Lcom/adobe/fre/FREContext;

    .line 80
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "getGoogleAccountID"

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "canOpenUrl"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/CanOpenURL;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/CanOpenURL;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "openUrl"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/OpenUrl;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/OpenUrl;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "showAlertView"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/ShowAlertView;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/ShowAlertView;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "nativeLog"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/FlashLog;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/FlashLog;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "setNotification"

    new-instance v2, Lcom/bitrhymes/nativeutils/localnotify/SetNotificationAfterHour;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/localnotify/SetNotificationAfterHour;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "cancelAllLocalNotifications"

    new-instance v2, Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/localnotify/ClearAlarmNotifications;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "AR_rateApp"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/AR_rateApp;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/AR_rateApp;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "getMacAddressOfDevice"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetMacAddressOfDevice;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetMacAddressOfDevice;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "getRawMacAddress"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetRawMacAddress;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetRawMacAddress;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "getCountryCode"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetCountryCode;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetCountryCode;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "getCountryName"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetCountryName;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetCountryName;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "getSystemLocale"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetSystemLocale;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetSystemLocale;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "getAppleIDFA"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetAppleIDFA;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetAppleIDFA;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "getAppleUUIDForVender"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetAppleUUIDForVender;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetAppleUUIDForVender;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "getAndroidID"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetAndroidID;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetAndroidID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "getIMEI"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetIMEI;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetIMEI;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "getCurrentLocale"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetCurrentLocale;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetCurrentLocale;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "getMachineName"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetMachineName;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetMachineName;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "getOpenUDID"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "getKeychainMac"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetMacAddressOfDevice;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetMacAddressOfDevice;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "getKeychainODID"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetRawOpenUDID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "getDeviceModel"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetDeviceModel;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetDeviceModel;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "getSystemVersion"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetDeviceVersion;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetDeviceVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "getSystemName"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetSystemName;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetSystemName;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "getDeviceName"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetDeviceName;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetDeviceName;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "AR_appLaunched"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/AR_appLaunched;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/AR_appLaunched;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "AR_appEnteredForeground"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/AR_appEnteredForeground;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/AR_appEnteredForeground;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "cleanKeychain"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/CleanKeychain;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/CleanKeychain;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "loadWebviewWithInApp"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/LoadWebviewWithInApp;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/LoadWebviewWithInApp;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "registerForAPNS"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/RegisterForPush;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/RegisterForPush;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "playMovieWithURL"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "getGoogleAccountID"

    new-instance v1, Lcom/bitrhymes/nativeutils/functions/GetGoogleAccountID;

    invoke-direct {v1}, Lcom/bitrhymes/nativeutils/functions/GetGoogleAccountID;-><init>()V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "getDocumentDirectoryPath"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetDocumentDirectoryPath;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetDocumentDirectoryPath;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "getCacheDirectoryPath"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetCacheDirectoryPath;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetCacheDirectoryPath;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "getPushNoticationTrack"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetPushNoticationTrack;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetPushNoticationTrack;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "getUDID"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetRawUDID;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetRawUDID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "updatePasteBoard"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/UpdatePasteBoard;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/UpdatePasteBoard;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "getManufacturer"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetManufacturer;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetManufacturer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "getDeviceVersionRelease"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetDeviceVersionRelease;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetDeviceVersionRelease;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "getMD5UDID"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetMD5UDID;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetMD5UDID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "getReferrerString"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetReferrerString;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetReferrerString;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "getMD5OpenUDID"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetMD5OpenUDID;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetMD5OpenUDID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "isAirAvailable"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/IsAirAvailable;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/IsAirAvailable;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "getGoogleAccountID"

    new-instance v1, Lcom/bitrhymes/nativeutils/functions/GetGoogleAccountID;

    invoke-direct {v1}, Lcom/bitrhymes/nativeutils/functions/GetGoogleAccountID;-><init>()V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "getTotalRAMSize"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetTotalRAMSize;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetTotalRAMSize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "getTotalInternalMemorySize"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetTotalInternalMemorySize;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetTotalInternalMemorySize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "getTotalExternalMemorySize"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetTotalExternalMemorySize;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetTotalExternalMemorySize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "getAvailableRAMSize"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetAvailableRAMSize;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetAvailableRAMSize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "getAvailableInternalMemorySize"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetAvailableInternalMemorySize;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetAvailableInternalMemorySize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "getAvailableExternalMemorySize"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/GetAvailableExternalMemorySize;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/GetAvailableExternalMemorySize;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "updateBadgeVal"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/UpdateBadgeVal;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/UpdateBadgeVal;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "AR_userDidSignificantEvent"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/AR_userDidSignificantEvent;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/AR_userDidSignificantEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "localizedModel"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/LocalizedModel;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/LocalizedModel;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "quitApp"

    new-instance v2, Lcom/bitrhymes/nativeutils/functions/ShowAlertView;

    invoke-direct {v2}, Lcom/bitrhymes/nativeutils/functions/ShowAlertView;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-object v0
.end method
