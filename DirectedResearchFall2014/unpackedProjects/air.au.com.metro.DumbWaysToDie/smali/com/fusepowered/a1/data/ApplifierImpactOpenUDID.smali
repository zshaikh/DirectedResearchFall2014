.class public Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;
.super Ljava/lang/Object;
.source "ApplifierImpactOpenUDID.java"


# static fields
.field private static final LOG:Z = true

.field public static final PREFS_NAME:Ljava/lang/String; = "openudid_prefs"

.field public static final PREF_KEY:Ljava/lang/String; = "openudid"

.field public static final TAG:Ljava/lang/String; = "OpenUDID"

.field private static final _UseBlueToothFailback:Z = true

.field private static final _UseImeiFailback:Z = true

.field private static _openUdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "input"

    .prologue
    .line 152
    const/4 v3, 0x0

    .line 154
    .local v3, m:Ljava/security/MessageDigest;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 158
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v6, v7, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 159
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 161
    .local v5, p_md5Data:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 162
    .local v4, mOutput:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v5

    if-lt v2, v6, :cond_0

    .line 170
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 155
    .end local v2           #i:I
    .end local v4           #mOutput:Ljava/lang/String;
    .end local v5           #p_md5Data:[B
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 156
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v2       #i:I
    .restart local v4       #mOutput:Ljava/lang/String;
    .restart local v5       #p_md5Data:[B
    :cond_0
    aget-byte v6, v5, v2

    and-int/lit16 v0, v6, 0xff

    .line 165
    .local v0, b:I
    const/16 v6, 0xf

    if-gt v0, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static _debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "lmsg"

    .prologue
    .line 33
    const-string v0, "OpenUDID"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method private static generateBlueToothId()V
    .locals 4

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, m_BluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, m_szBTMAC:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BTMAC:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1           #m_szBTMAC:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static generateImeiId(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    .line 113
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 114
    .local v0, TelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, szImei:Ljava/lang/String;
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IMEI:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0           #TelephonyMgr:Landroid/telephony/TelephonyManager;
    .end local v1           #szImei:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static generateOpenUDIDInContext(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string v1, "Generating openUDID"

    invoke-static {v1}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_debugLog(Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->generateWifiId(Landroid/content/Context;)V

    .line 76
    sget-object v1, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, _androidId:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-le v1, v2, :cond_2

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ANDROID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_2
    sput-object v3, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    .line 88
    invoke-static {p0}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->generateImeiId(Landroid/content/Context;)V

    .line 90
    sget-object v1, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 96
    sput-object v3, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->generateBlueToothId()V

    .line 98
    sget-object v1, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 99
    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->generateRandomNumber()V

    .line 106
    :cond_3
    sget-object v1, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_debugLog(Ljava/lang/String;)V

    .line 108
    const-string v1, "done"

    invoke-static {v1}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static generateRandomNumber()V
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    .line 176
    return-void
.end method

.method private static generateSystemId()V
    .locals 6

    .prologue
    .line 183
    const-string v1, "%s/%s/%s/%s:%s/%s/%s:%s/%s/%d-%s-%s-%s-%s"

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 184
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 185
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 186
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 187
    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 188
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 189
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 190
    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 191
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 192
    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 193
    sget-wide v4, Landroid/os/Build;->TIME:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 194
    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Landroid/os/Build;->HOST:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 183
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, fp:Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_debugLog(Ljava/lang/String;)V

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-static {v0}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    .line 200
    :cond_0
    return-void
.end method

.method private static generateWifiId(Landroid/content/Context;)V
    .locals 7
    .parameter "mContext"

    .prologue
    .line 137
    :try_start_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 138
    .local v2, wifiMan:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 140
    .local v1, wifiInf:Landroid/net/wifi/WifiInfo;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_debugLog(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, macAddr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WIFIMAC:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0           #macAddr:Ljava/lang/String;
    .end local v1           #wifiInf:Landroid/net/wifi/WifiInfo;
    .end local v2           #wifiMan:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getCorpUDID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "corpIdentifier"

    .prologue
    .line 65
    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->getOpenUDIDInContext()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenUDIDInContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    return-object v0
.end method

.method public static syncContext(Landroid/content/Context;)V
    .locals 7
    .parameter "mContext"

    .prologue
    const-string v6, "openudid"

    .line 37
    sget-object v4, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 38
    const/4 v3, 0x0

    .line 40
    .local v3, openContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "net.openudid.android"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 41
    move-object p0, v3

    .line 46
    :goto_0
    const-string v4, "openudid_prefs"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 47
    .local v2, mPreferences:Landroid/content/SharedPreferences;
    const-string v4, "openudid"

    const/4 v4, 0x0

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, _keyInPref:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 49
    invoke-static {p0}, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->generateOpenUDIDInContext(Landroid/content/Context;)V

    .line 50
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 51
    .local v1, e:Landroid/content/SharedPreferences$Editor;
    const-string v4, "openudid"

    sget-object v4, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    .end local v0           #_keyInPref:Ljava/lang/String;
    .end local v1           #e:Landroid/content/SharedPreferences$Editor;
    .end local v2           #mPreferences:Landroid/content/SharedPreferences;
    .end local v3           #openContext:Landroid/content/Context;
    :cond_0
    :goto_1
    return-void

    .line 54
    .restart local v0       #_keyInPref:Ljava/lang/String;
    .restart local v2       #mPreferences:Landroid/content/SharedPreferences;
    .restart local v3       #openContext:Landroid/content/Context;
    :cond_1
    sput-object v0, Lcom/fusepowered/a1/data/ApplifierImpactOpenUDID;->_openUdid:Ljava/lang/String;

    goto :goto_1

    .line 42
    .end local v0           #_keyInPref:Ljava/lang/String;
    .end local v2           #mPreferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
