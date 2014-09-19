.class public Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;
.super Ljava/lang/Object;
.source "FiksuDeviceSettingsManager.java"


# static fields
.field private static final INSTANCE:Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;


# instance fields
.field private final mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    invoke-direct {v0}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;-><init>()V

    sput-object v0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->INSTANCE:Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/fiksu/asotracking/FiksuDeviceSettings;

    invoke-direct {v0}, Lcom/fiksu/asotracking/FiksuDeviceSettings;-><init>()V

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    return-void
.end method

.method protected static getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->INSTANCE:Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    return-object v0
.end method

.method private setSharedPreferences(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 57
    :cond_0
    if-nez p1, :cond_1

    .line 59
    const-string v0, "FiksuTracking"

    const-string v1, "Context is null so we cannot load configuration from SharedPreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "FiksuDeviceSettingsSharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    goto :goto_0
.end method


# virtual methods
.method public final getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, androidId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 96
    const-string v1, "FiksuTracking"

    .line 97
    const-string v2, "Could not retrieve android_id.  The android_id is not available on emulators running Android 2.1 or below.  Run the code on emulator 2.2 or better or an a device."

    .line 96
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v1, ""

    .line 101
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const-string v6, "FiksuTracking"

    const-string v5, ""

    .line 110
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 111
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_0

    .line 112
    const-string v3, "FiksuTracking"

    const-string v4, "Could not access telephonyManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const-string v3, ""

    move-object v3, v5

    .line 125
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v3

    .line 115
    .restart local v2       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 117
    :cond_1
    const-string v3, "FiksuTracking"

    const-string v4, "Could not retrieve deviceId. "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    const-string v3, ""

    move-object v3, v5

    goto :goto_0

    :cond_2
    move-object v3, v0

    .line 120
    goto :goto_0

    .line 123
    .end local v0           #deviceId:Ljava/lang/String;
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 124
    .local v1, securityException:Ljava/lang/SecurityException;
    const-string v3, "FiksuTracking"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not retrieve deviceId: READ_PHONE_STATE permission not granted. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v3, ""

    move-object v3, v5

    goto :goto_0
.end method

.method protected final initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->setSharedPreferences(Landroid/content/Context;)V

    .line 45
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    iget-object v1, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->readFromSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 49
    :cond_0
    return-void
.end method

.method public final isAppTrackingEnabled()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->isAppTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method protected final setAppTrackingEnabled(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "appTrackingEnabled"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    invoke-virtual {v0, p2}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->setAppTrackingEnabled(Z)V

    .line 81
    invoke-direct {p0, p1}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->setSharedPreferences(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    iget-object v1, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->writeToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 87
    :cond_0
    return-void
.end method

.method protected final setClientId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "clientId"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    invoke-virtual {v0, p2}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->setClientId(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->setSharedPreferences(Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mFiksuDeviceSettings:Lcom/fiksu/asotracking/FiksuDeviceSettings;

    iget-object v1, p0, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/fiksu/asotracking/FiksuDeviceSettings;->writeToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 76
    :cond_0
    return-void
.end method
