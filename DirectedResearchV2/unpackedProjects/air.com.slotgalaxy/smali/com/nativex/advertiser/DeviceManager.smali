.class public Lcom/nativex/advertiser/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field private static device:Lcom/nativex/advertiser/Device;

.field private static deviceId:Ljava/lang/String;

.field private static deviceManager:Lcom/nativex/advertiser/DeviceManager;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/advertiser/DeviceManager;->deviceId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/nativex/advertiser/DeviceManager;->context:Landroid/content/Context;

    .line 48
    sput-object p0, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    .line 49
    return-void
.end method

.method private getAndroidDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 150
    .local v0, "deviceId":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/nativex/advertiser/DeviceManager;->context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/advertiser/DeviceManager;
    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_0
    if-eqz v0, :cond_0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found an AndroidDeviceId (IMEI): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 159
    :goto_1
    return-object v0

    .line 151
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No permissions to get device id, continuing... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve an AndroidDeviceId (IMEI): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAndroidId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/nativex/advertiser/DeviceManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceManager: Unexpected exception caught in getAndroidId()"

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    :try_start_0
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 188
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nativex/advertiser/DeviceManager;->deviceId:Ljava/lang/String;

    .line 190
    :cond_0
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->deviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-object v1

    .line 191
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceManager: Unexpected exception caught in getDeviceId()"

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getDeviceInstance(Landroid/content/Context;)Lcom/nativex/advertiser/Device;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-class v0, Lcom/nativex/advertiser/DeviceManager;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 60
    :cond_0
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    if-nez v1, :cond_3

    .line 61
    new-instance v1, Lcom/nativex/advertiser/DeviceManager;

    invoke-direct {v1, p0}, Lcom/nativex/advertiser/DeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    .line 68
    :cond_1
    :goto_0
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    if-nez v1, :cond_4

    .line 69
    new-instance v1, Lcom/nativex/advertiser/Device;

    invoke-direct {v1}, Lcom/nativex/advertiser/Device;-><init>()V

    sput-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    .line 70
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    sget-object v2, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    invoke-direct {v2}, Lcom/nativex/advertiser/DeviceManager;->getAndroidDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/advertiser/Device;->setAndroidDeviceID(Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    sget-object v2, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    invoke-direct {v2}, Lcom/nativex/advertiser/DeviceManager;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/advertiser/Device;->setAndroidID(Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    sget-object v2, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    invoke-direct {v2}, Lcom/nativex/advertiser/DeviceManager;->isHacked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nativex/advertiser/Device;->setHacked(Z)V

    .line 73
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    sget-object v2, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    invoke-direct {v2}, Lcom/nativex/advertiser/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/advertiser/Device;->setDeviceId(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nativex/advertiser/Device;->setDeviceName(Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    sget-object v2, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    invoke-direct {v2}, Lcom/nativex/advertiser/DeviceManager;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/advertiser/Device;->setOsVersion(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nativex/advertiser/Device;->setUsingSdk(Z)V

    .line 82
    :cond_2
    :goto_1
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 63
    :cond_3
    :try_start_1
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    iget-object v1, v1, Lcom/nativex/advertiser/DeviceManager;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 64
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    iput-object p0, v1, Lcom/nativex/advertiser/DeviceManager;->context:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 78
    :cond_4
    :try_start_2
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    invoke-virtual {v1}, Lcom/nativex/advertiser/Device;->getAndroidDeviceID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 79
    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    sget-object v2, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    invoke-direct {v2}, Lcom/nativex/advertiser/DeviceManager;->getAndroidDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/advertiser/Device;->setAndroidDeviceID(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getOsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nativex/advertiser/DeviceManager;->verifyVersionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 99
    :goto_0
    return-object v1

    .line 95
    :cond_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nativex/advertiser/DeviceManager;->verifyVersionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 97
    goto :goto_0

    .line 99
    :cond_1
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_0
.end method

.method private isHacked()Z
    .locals 2

    .prologue
    .line 138
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 139
    .local v0, "buildTags":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 202
    sput-object v0, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    .line 203
    sput-object v0, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    .line 204
    sput-object v0, Lcom/nativex/advertiser/DeviceManager;->deviceId:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public static updateDeviceId()V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/advertiser/DeviceManager;->deviceId:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    sget-object v1, Lcom/nativex/advertiser/DeviceManager;->deviceManager:Lcom/nativex/advertiser/DeviceManager;

    invoke-direct {v1}, Lcom/nativex/advertiser/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nativex/advertiser/Device;->setDeviceId(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method private verifyVersionString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "^\\d[\\d+\\.?]+\\d$"

    .line 105
    .local v0, "regEx":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const-string v1, "[^0-9\\.]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method


# virtual methods
.method protected getDeviceInstance(Lcom/nativex/advertiser/Device;)Lcom/nativex/advertiser/Device;
    .locals 1
    .param p1, "mockDevice"    # Lcom/nativex/advertiser/Device;

    .prologue
    .line 123
    sput-object p1, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    .line 124
    sget-object v0, Lcom/nativex/advertiser/DeviceManager;->device:Lcom/nativex/advertiser/Device;

    return-object v0
.end method
