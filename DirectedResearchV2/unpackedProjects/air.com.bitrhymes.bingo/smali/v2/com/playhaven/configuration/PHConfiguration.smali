.class public Lv2/com/playhaven/configuration/PHConfiguration;
.super Ljava/lang/Object;
.source "PHConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;,
        Lv2/com/playhaven/configuration/PHConfiguration$Config;
    }
.end annotation


# static fields
.field private static final SHARED_PREF_MODE:I

.field private static final SHARED_PREF_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lv2/com/playhaven/configuration/PHConfiguration;->SHARED_PREF_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    .local v0, "appContext":Landroid/content/Context;
    sget-object v2, Lv2/com/playhaven/configuration/PHConfiguration;->SHARED_PREF_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 210
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 196
    .local v0, "appContext":Landroid/content/Context;
    sget-object v3, Lv2/com/playhaven/configuration/PHConfiguration;->SHARED_PREF_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 197
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 199
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    return-void
.end method

.method private validateCredential(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAPIUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    sget-object v1, Lv2/com/playhaven/configuration/PHConfiguration$Config;->APIUrl:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v1}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lv2/com/playhaven/configuration/PHConfiguration;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "api_url":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 168
    const-string v0, "http://api2.playhaven.com"

    .line 170
    :cond_0
    return-object v0
.end method

.method public getCleanSDKVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lv2/com/playhaven/configuration/PHConfiguration;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-SNAPSHOT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsRunningUITests(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->RunningUiTests:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lv2/com/playhaven/configuration/PHConfiguration;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getJSBridgeProtocolVersion()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x4

    return v0
.end method

.method public getPlayhavenBuildInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lv2/com/playhaven/configuration/Version;->BANNER:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecacheSize()I
    .locals 1

    .prologue
    .line 126
    const/high16 v0, 0x800000

    return v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lv2/com/playhaven/configuration/Version;->PROJECT_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Secret:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lv2/com/playhaven/configuration/PHConfiguration;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShouldPrecache(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->ShouldPrecache:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lv2/com/playhaven/configuration/PHConfiguration;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getStagingPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Password:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lv2/com/playhaven/configuration/PHConfiguration;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStagingUsername(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Username:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lv2/com/playhaven/configuration/PHConfiguration;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Token:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lv2/com/playhaven/configuration/PHConfiguration;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAPIUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "api"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->APIUrl:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lv2/com/playhaven/configuration/PHConfiguration;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p2}, Lv2/com/playhaven/configuration/PHConfiguration;->validateCredential(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Token:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lv2/com/playhaven/configuration/PHConfiguration;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-direct {p0, p3}, Lv2/com/playhaven/configuration/PHConfiguration;->validateCredential(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Secret:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lv2/com/playhaven/configuration/PHConfiguration;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lv2/com/playhaven/configuration/PHConfiguration;->setIsRunningUITests(Landroid/content/Context;Z)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lv2/com/playhaven/configuration/PHConfiguration;->setShouldPrecache(Landroid/content/Context;Z)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayHaven initialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lv2/com/playhaven/configuration/PHConfiguration;->getPlayhavenBuildInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setIsRunningUITests(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRunning"    # Z

    .prologue
    .line 190
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->RunningUiTests:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lv2/com/playhaven/configuration/PHConfiguration;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setShouldPrecache(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shouldPrecache"    # Z

    .prologue
    .line 182
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->ShouldPrecache:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lv2/com/playhaven/configuration/PHConfiguration;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setStagingPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Password:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lv2/com/playhaven/configuration/PHConfiguration;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setStagingUsername(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Lv2/com/playhaven/configuration/PHConfiguration$Config;->Username:Lv2/com/playhaven/configuration/PHConfiguration$Config;

    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration$Config;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lv2/com/playhaven/configuration/PHConfiguration;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method
