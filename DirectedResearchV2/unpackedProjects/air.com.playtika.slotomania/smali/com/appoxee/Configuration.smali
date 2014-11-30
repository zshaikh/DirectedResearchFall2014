.class public abstract Lcom/appoxee/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "AppID"

.field public static AppClientVersion:Ljava/lang/String; = null

.field private static AppDefaultActivityClass:Ljava/lang/String; = null

.field protected static AppInboxMessageTimeout:J = 0x0L

.field private static AppSDKKey:Ljava/lang/String; = null

.field private static AppSecretKey:Ljava/lang/String; = null

.field protected static AppVersion:Ljava/lang/String; = null

.field private static AppoxeeInboxEnable:Z = false

.field public static final FEEDBACK_ENABLED:Ljava/lang/String; = "feedbackEnabled"

.field public static final MAILBOX_TITLE:Ljava/lang/String; = "mailboxTitle"

.field public static final MORE_APPS_ENABLED:Ljava/lang/String; = "moreAppsEnabled"

.field public static final PROJECT_ID:Ljava/lang/String; = "projectId"

.field public static final PUSH_ENABLED:Ljava/lang/String; = "pushEnabled"

.field public static final RTL:Ljava/lang/String; = "RTL"

.field public static final SOUND_ENABLED:Ljava/lang/String; = "soundEnabled"

.field public static final VIBRATE_ENABLED:Ljava/lang/String; = "vibrateEnabled"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/appoxee/Configuration;->AppClientVersion:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/appoxee/Configuration;->AppoxeeInboxEnable:Z

    .line 33
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/appoxee/Configuration;->AppInboxMessageTimeout:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAppDefaultActivityClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/appoxee/Configuration;->AppDefaultActivityClass:Ljava/lang/String;

    return-object v0
.end method

.method public static GetAppInboxMessageTimeout()J
    .locals 2

    .prologue
    .line 36
    sget-wide v0, Lcom/appoxee/Configuration;->AppInboxMessageTimeout:J

    return-wide v0
.end method

.method public static GetAppNoInbox()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/appoxee/Configuration;->AppoxeeInboxEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static GetAppSDKKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/appoxee/Configuration;->AppSDKKey:Ljava/lang/String;

    return-object v0
.end method

.method public static GetAppSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/appoxee/Configuration;->AppSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method public static GetAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/appoxee/Configuration;->AppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static GetAppoxeeInboxEnable()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/appoxee/Configuration;->AppoxeeInboxEnable:Z

    return v0
.end method

.method public static SetAppDefaultActivityClass(Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 72
    sput-object p0, Lcom/appoxee/Configuration;->AppDefaultActivityClass:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static SetAppNoInbox(Z)V
    .locals 1
    .param p0, "AppNoInbox"    # Z

    .prologue
    .line 80
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/appoxee/Configuration;->SetAppoxeeInboxEnable(Z)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static SetAppSDKKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "ss"    # Ljava/lang/String;

    .prologue
    .line 48
    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appoxee/Configuration;->AppSDKKey:Ljava/lang/String;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "Invalid SetAppSDKKey"

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SetAppSecretKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "ss"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appoxee/Configuration;->AppSecretKey:Ljava/lang/String;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "Invalid SetAppSecretKey"

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SetAppoxeeInboxEnable(Z)V
    .locals 0
    .param p0, "set"    # Z

    .prologue
    .line 88
    sput-boolean p0, Lcom/appoxee/Configuration;->AppoxeeInboxEnable:Z

    .line 89
    return-void
.end method

.method public static getAppClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/appoxee/Configuration;->AppClientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static setAppClientVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "appClientVersion"    # Ljava/lang/String;

    .prologue
    .line 129
    sput-object p0, Lcom/appoxee/Configuration;->AppClientVersion:Ljava/lang/String;

    .line 130
    return-void
.end method


# virtual methods
.method public getServerConfiguration()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appoxee/AppoxeeClientException;
        }
    .end annotation

    .prologue
    const-string v10, "moreAppsEnabled"

    const-string v10, "mailboxTitle"

    const-string v10, "feedbackEnabled"

    const-string v10, "RTL"

    const-string v10, "AppID"

    .line 92
    const/4 v7, 0x0

    .line 95
    .local v7, "result":Z
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getClient()Lcom/appoxee/connection/AppoxeeClient;

    move-result-object v10

    invoke-virtual {v10}, Lcom/appoxee/connection/AppoxeeClient;->getApplicationConfiguration()Lorg/json/JSONObject;

    move-result-object v9

    .line 97
    .local v9, "serverConfiguration":Lorg/json/JSONObject;
    if-eqz v9, :cond_0

    .line 98
    const-string v10, "AppID"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 99
    .local v1, "appId":Ljava/lang/Long;
    const-string v10, "mailboxTitle"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "mailboxTitle":Ljava/lang/String;
    const-string v10, "RTL"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 101
    .local v8, "rtl":Z
    const-string v10, "moreAppsEnabled"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 102
    .local v5, "moreAppsEnabled":Z
    const-string v10, "feedbackEnabled"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 103
    .local v3, "feedbackEnabled":Z
    const-string v10, "android"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    .local v0, "android":Lorg/json/JSONObject;
    const-string v10, "projectId"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "projectId":Ljava/lang/String;
    const-string v10, "AppID"

    invoke-static {v10, v1}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 107
    const-string v10, "mailboxTitle"

    invoke-static {v10, v4}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 108
    const-string v10, "RTL"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 109
    const-string v10, "moreAppsEnabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 110
    const-string v10, "feedbackEnabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 111
    const-string v10, "projectId"

    invoke-static {v10, v6}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 113
    const/4 v7, 0x1

    .line 114
    const-string v10, "configuration_values_timestamp"

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "android":Lorg/json/JSONObject;
    .end local v1    # "appId":Ljava/lang/Long;
    .end local v3    # "feedbackEnabled":Z
    .end local v4    # "mailboxTitle":Ljava/lang/String;
    .end local v5    # "moreAppsEnabled":Z
    .end local v6    # "projectId":Ljava/lang/String;
    .end local v8    # "rtl":Z
    .end local v9    # "serverConfiguration":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v7

    .line 116
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 117
    .local v2, "e":Lorg/json/JSONException;
    const-string v10, "getServerConfiguration error - using default values"

    invoke-static {v10}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 118
    invoke-static {v2}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setAppVersion(I)V
    .locals 1
    .param p1, "versionCode"    # I

    .prologue
    .line 125
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appoxee/Configuration;->AppVersion:Ljava/lang/String;

    .line 126
    return-void
.end method
