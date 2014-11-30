.class public Lcom/applifier/impact/android/data/ApplifierImpactDevice;
.super Ljava/lang/Object;
.source "ApplifierImpactDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildMacAddressFromInterface(Ljava/net/NetworkInterface;)Ljava/lang/String;
    .locals 13
    .param p0, "intf"    # Ljava/net/NetworkInterface;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "unknown"

    .line 105
    const/4 v5, 0x0

    .line 107
    .local v5, "mac":[B
    if-nez p0, :cond_0

    .line 108
    const-string v7, "unknown"

    move-object v7, v12

    .line 130
    :goto_0
    return-object v7

    .line 113
    :cond_0
    :try_start_0
    const-class v7, Ljava/net/NetworkInterface;

    const-string v8, "getHardwareAddress"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 114
    .local v4, "layertype":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v4    # "layertype":Ljava/lang/reflect/Method;
    :goto_1
    if-nez v5, :cond_1

    .line 121
    const-string v7, "unknown"

    move-object v7, v12

    goto :goto_0

    .line 116
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "Could not getHardwareAddress"

    const-class v8, Lcom/applifier/impact/android/data/ApplifierImpactDevice;

    invoke-static {v7, v8}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1

    .line 124
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_2
    array-length v7, v5

    if-lt v3, v7, :cond_3

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v11

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 129
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "retMacAddress":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 126
    .end local v6    # "retMacAddress":Ljava/lang/String;
    :cond_3
    const-string v7, "%02X:"

    new-array v8, v11, [Ljava/lang/Object;

    aget-byte v9, v5, v3

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "unknown"

    .line 52
    .local v0, "androidID":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problems fetching androidId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/applifier/impact/android/data/ApplifierImpactDevice;

    invoke-static {v2, v3}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static getAndroidSerial()Ljava/lang/String;
    .locals 8

    .prologue
    .line 78
    const-string v1, "unknown"

    .line 81
    .local v1, "androidSerial":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 82
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 83
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.serialno"

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 84
    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->isUsingWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "wifi"

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cellular"

    goto :goto_0
.end method

.method public static getDeviceType()I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    return v0
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInterfaceFor(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 6
    .param p0, "interfaceName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 134
    const/4 v1, 0x0

    .line 137
    .local v1, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v3, v5

    .line 153
    :goto_0
    return-object v3

    .line 139
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v5

    .line 140
    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 144
    .local v2, "intf":Ljava/net/NetworkInterface;
    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Returning interface: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/applifier/impact/android/data/ApplifierImpactDevice;

    invoke-static {v3, v4}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    move-object v3, v2

    .line 147
    goto :goto_0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "intf":Ljava/net/NetworkInterface;
    const-string v1, "eth0"

    invoke-static {v1}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getInterfaceFor(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    const-string v1, "wlan0"

    invoke-static {v1}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getInterfaceFor(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 100
    :cond_0
    invoke-static {v0}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->buildMacAddressFromInterface(Ljava/net/NetworkInterface;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getOdin1Id()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    const-string v1, "unknown"

    .line 38
    .local v1, "odin1ID":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applifier/impact/android/ApplifierImpactUtils;->SHA1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not resolve ODIN1 Id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/applifier/impact/android/data/ApplifierImpactDevice;

    invoke-static {v2, v3}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static getOpenUdid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    const-string v0, "unknown"

    .line 158
    .local v0, "deviceId":Ljava/lang/String;
    sget-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-static {v1}, Lcom/applifier/impact/android/data/ApplifierImpactOpenUDID;->syncContext(Landroid/content/Context;)V

    .line 159
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactOpenUDID;->getOpenUDIDInContext()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getScreenDensity()I
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getScreenSize()I
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public static getSoftwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    const-string v1, "unknown"

    .line 66
    .local v1, "telephonyID":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 67
    .local v2, "tmanager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    .end local v2    # "tmanager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problems fetching telephonyId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/applifier/impact/android/data/ApplifierImpactDevice;

    invoke-static {v3, v4}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static isUsingWifi()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "mConnectivity":Landroid/net/ConnectivityManager;
    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mConnectivity":Landroid/net/ConnectivityManager;
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 176
    .restart local v1    # "mConnectivity":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    move v4, v6

    .line 191
    :goto_0
    return v4

    .line 179
    :cond_0
    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->CURRENT_ACTIVITY:Landroid/app/Activity;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 181
    .local v2, "mTelephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 182
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v4, v6

    .line 183
    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 187
    .local v3, "netType":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 188
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v6

    .line 191
    goto :goto_0
.end method
