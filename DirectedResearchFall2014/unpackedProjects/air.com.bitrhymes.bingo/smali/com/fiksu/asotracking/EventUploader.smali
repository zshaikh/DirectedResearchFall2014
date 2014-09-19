.class public Lcom/fiksu/asotracking/EventUploader;
.super Ljava/lang/Object;
.source "EventUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FIKSU_ENDPOINT_1:Ljava/lang/String; = "https://a.fiksu.com/"

.field private static final FIKSU_ENDPOINT_2:Ljava/lang/String; = "https://a.fiksu.com/"

.field private static final FIKSU_SAVED_URLS_PREFERENCE_NAME:Ljava/lang/String; = "Fiksu.savedUrls"

.field private static final FIKSU_SEPARATOR:Ljava/lang/String; = "<FIKSU>"

.field private static final FIKSU_SEPARATOR_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final MAX_FAILED_URLS:I = 0xa

.field protected static final TRACKING_REV:Ljava/lang/String; = "50010"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "<FIKSU>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fiksu/asotracking/EventUploader;->FIKSU_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/fiksu/asotracking/EventUploader;->mParameters:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private final appendParameterToUrl(Ljava/lang/StringBuilder;Lcom/fiksu/asotracking/FiksuEventParameter;)V
    .locals 3
    .parameter "url"
    .parameter "eventParameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v1, p0, Lcom/fiksu/asotracking/EventUploader;->mParameters:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/fiksu/asotracking/FiksuEventParameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    .local v0, parameterValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fiksu/asotracking/FiksuEventParameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_0
    return-void
.end method

.method private buildURL()Ljava/lang/String;
    .locals 14

    .prologue
    .line 76
    iget-object v11, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    if-nez v11, :cond_0

    .line 77
    const-string v11, "FiksuTracking"

    const-string v12, "Could not find context to use.  Please set it in your main Activity class using EventTracking.setContext()."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v11, 0x0

    .line 161
    :goto_0
    return-object v11

    .line 81
    :cond_0
    const-string v5, "https://a.fiksu.com/"

    .line 82
    .local v5, hostname:Ljava/lang/String;
    iget-object v11, p0, Lcom/fiksu/asotracking/EventUploader;->mParameters:Ljava/util/Map;

    sget-object v12, Lcom/fiksu/asotracking/FiksuEventParameter;->EVENT:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {v12}, Lcom/fiksu/asotracking/FiksuEventParameter;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 85
    .local v3, event:Ljava/lang/String;
    sget-object v11, Lcom/fiksu/asotracking/FiksuEventType;->LAUNCH:Lcom/fiksu/asotracking/FiksuEventType;

    invoke-virtual {v11}, Lcom/fiksu/asotracking/FiksuEventType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lcom/fiksu/asotracking/FiksuEventType;->RESUME:Lcom/fiksu/asotracking/FiksuEventType;

    invoke-virtual {v11}, Lcom/fiksu/asotracking/FiksuEventType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/fiksu/asotracking/EventUploader;->launchedFromNotification()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 86
    const-string v5, "https://a.fiksu.com/"

    .line 87
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Notification"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    :cond_2
    const-string v11, "FiksuTracking"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Event: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v11, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, packageName:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "50010"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/android/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/event?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .local v10, url:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "appid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&deviceid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v12

    iget-object v13, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&udid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v12

    iget-object v13, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&device="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getClientId()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, clientID:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&clientid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_3
    invoke-static {}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->getInstance()Lcom/fiksu/asotracking/FiksuConfigurationManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fiksu/asotracking/FiksuConfigurationManager;->getFiksuConfiguration()Lcom/fiksu/asotracking/FiksuConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fiksu/asotracking/FiksuConfiguration;->isFacebookAttributionEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 113
    iget-object v11, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/fiksu/asotracking/FacebookAttribution;->getAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, facebookAttributionId:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 115
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&fb_id="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    .end local v4           #facebookAttributionId:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v11, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 122
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&app_version="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, appName:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 126
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&app_name="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    .end local v0           #appName:Ljava/lang/String;
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    :cond_5
    :goto_1
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&system_version="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&system_name="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v11, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v6, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 137
    .local v6, locale:Ljava/util/Locale;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&country="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&lang="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&timezone="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/fiksu/asotracking/EventUploader;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&gmtoffset="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    div-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    if-eqz v3, :cond_6

    .line 145
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&event="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_6
    sget-object v11, Lcom/fiksu/asotracking/FiksuEventParameter;->USERNAME:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-direct {p0, v10, v11}, Lcom/fiksu/asotracking/EventUploader;->appendParameterToUrl(Ljava/lang/StringBuilder;Lcom/fiksu/asotracking/FiksuEventParameter;)V

    .line 149
    sget-object v11, Lcom/fiksu/asotracking/FiksuEventParameter;->TVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-direct {p0, v10, v11}, Lcom/fiksu/asotracking/EventUploader;->appendParameterToUrl(Ljava/lang/StringBuilder;Lcom/fiksu/asotracking/FiksuEventParameter;)V

    .line 150
    sget-object v11, Lcom/fiksu/asotracking/FiksuEventParameter;->FVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-direct {p0, v10, v11}, Lcom/fiksu/asotracking/EventUploader;->appendParameterToUrl(Ljava/lang/StringBuilder;Lcom/fiksu/asotracking/FiksuEventParameter;)V

    .line 151
    sget-object v11, Lcom/fiksu/asotracking/FiksuEventParameter;->IVALUE:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-direct {p0, v10, v11}, Lcom/fiksu/asotracking/EventUploader;->appendParameterToUrl(Ljava/lang/StringBuilder;Lcom/fiksu/asotracking/FiksuEventParameter;)V

    .line 154
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&app_tracking_enabled="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->getInstance()Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/fiksu/asotracking/FiksuDeviceSettingsManager;->isAppTrackingEnabled()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "1"

    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 128
    .end local v6           #locale:Ljava/util/Locale;
    :catch_0
    move-exception v11

    move-object v9, v11

    .line 129
    .local v9, pnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v11, "FiksuTracking"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Could not access package: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 156
    .end local v1           #clientID:Ljava/lang/String;
    .end local v9           #pnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v11

    move-object v2, v11

    .line 157
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v11, "FiksuTracking"

    const-string v12, "Problem creating URL"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 154
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #clientID:Ljava/lang/String;
    .restart local v6       #locale:Ljava/util/Locale;
    :cond_7
    :try_start_4
    const-string v12, "0"
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method private doUpload(Ljava/lang/String;)Z
    .locals 10
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "FiksuTracking"

    .line 267
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, fiksuUrl:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 270
    .local v0, fiksuConnection:Ljava/net/HttpURLConnection;
    if-nez v0, :cond_1

    .line 277
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "3."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    .line 297
    .end local v0           #fiksuConnection:Ljava/net/HttpURLConnection;
    .end local v1           #fiksuUrl:Ljava/net/URL;
    :goto_0
    return v4

    .line 281
    .restart local v0       #fiksuConnection:Ljava/net/HttpURLConnection;
    .restart local v1       #fiksuUrl:Ljava/net/URL;
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HttpURLConnection is null for Android OS version "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v0           #fiksuConnection:Ljava/net/HttpURLConnection;
    .end local v1           #fiksuUrl:Ljava/net/URL;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 296
    .local v2, ioException:Ljava/io/IOException;
    const-string v4, "FiksuTracking"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to upload tracking information: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    .line 297
    goto :goto_0

    .line 285
    .end local v2           #ioException:Ljava/io/IOException;
    .restart local v0       #fiksuConnection:Ljava/net/HttpURLConnection;
    .restart local v1       #fiksuUrl:Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 287
    .local v3, responseCode:I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 288
    const-string v4, "FiksuTracking"

    const-string v5, "Successfully uploaded tracking information."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 289
    goto :goto_0

    .line 291
    :cond_2
    const-string v4, "FiksuTracking"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to upload tracking information, bad response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_3

    move v4, v7

    goto :goto_0

    :cond_3
    move v4, v9

    goto :goto_0
.end method

.method private encodeParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string v0, ""

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSavedUrls()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v7, ""

    .line 180
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v4, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/fiksu/asotracking/EventTracker;->getOurSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    .local v0, preferences:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 184
    const-string v5, "Fiksu.savedUrls"

    const-string v6, ""

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, savedUrls:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    sget-object v5, Lcom/fiksu/asotracking/EventUploader;->FIKSU_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, urlArray:[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_1

    .line 192
    .end local v1           #savedUrls:Ljava/lang/String;
    .end local v3           #urlArray:[Ljava/lang/String;
    :cond_0
    return-object v4

    .line 187
    .restart local v1       #savedUrls:Ljava/lang/String;
    .restart local v3       #urlArray:[Ljava/lang/String;
    :cond_1
    aget-object v2, v3, v6

    .line 188
    .local v2, tempUrl:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private launchedFromNotification()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 60
    sget-object v5, Lcom/fiksu/asotracking/FiksuConstants;->SHARED_PREFERENCES_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 61
    :try_start_0
    iget-object v6, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/fiksu/asotracking/EventTracker;->getOurSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 62
    .local v2, preferences:Landroid/content/SharedPreferences;
    if-nez v2, :cond_0

    .line 63
    monitor-exit v5

    move v5, v10

    .line 72
    :goto_0
    return v5

    .line 66
    :cond_0
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 67
    .local v0, now:J
    const-string v6, "Fiksu.cd2MessageTime"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 68
    .local v3, then:J
    sub-long v6, v0, v3

    const-wide/32 v8, 0x2bf20

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 69
    monitor-exit v5

    const/4 v5, 0x1

    goto :goto_0

    .line 60
    :cond_1
    monitor-exit v5

    move v5, v10

    .line 72
    goto :goto_0

    .line 60
    .end local v0           #now:J
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    .end local v3           #then:J
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private saveFailedUrls(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, failedUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v6, 0xa

    .line 196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local p1           #failedUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v1, failedUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object p1, v1

    .line 201
    .end local v1           #failedUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1       #failedUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v4, urlsToSave:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 203
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 209
    .end local v2           #i:I
    :cond_1
    iget-object v5, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/fiksu/asotracking/EventTracker;->getOurSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 210
    .local v3, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "Fiksu.savedUrls"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    return-void

    .line 205
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    .restart local v2       #i:I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "<FIKSU>"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private uploadToTracking()V
    .locals 10

    .prologue
    const-string v6, "FiksuTracking"

    .line 216
    iget-object v5, p0, Lcom/fiksu/asotracking/EventUploader;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 217
    const-string v5, "FiksuTracking"

    const-string v5, "Could not find context to use.  Please set it in your main Activity class using EventTracking.setContext()."

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/fiksu/asotracking/EventUploader;->buildURL()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, url:Ljava/lang/String;
    sget-object v6, Lcom/fiksu/asotracking/FiksuConstants;->SHARED_PREFERENCES_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 224
    :try_start_0
    invoke-direct {p0}, Lcom/fiksu/asotracking/EventUploader;->getSavedUrls()Ljava/util/List;

    move-result-object v4

    .line 226
    .local v4, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 227
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v5, p0, Lcom/fiksu/asotracking/EventUploader;->mParameters:Ljava/util/Map;

    sget-object v7, Lcom/fiksu/asotracking/FiksuEventParameter;->EVENT:Lcom/fiksu/asotracking/FiksuEventParameter;

    invoke-virtual {v7}, Lcom/fiksu/asotracking/FiksuEventParameter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Lcom/fiksu/asotracking/FiksuEventType;->CONVERSION:Lcom/fiksu/asotracking/FiksuEventType;

    invoke-virtual {v7}, Lcom/fiksu/asotracking/FiksuEventType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 230
    invoke-direct {p0, v4}, Lcom/fiksu/asotracking/EventUploader;->saveFailedUrls(Ljava/util/List;)V

    .line 234
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, failedUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 249
    invoke-direct {p0, v1}, Lcom/fiksu/asotracking/EventUploader;->saveFailedUrls(Ljava/util/List;)V

    .line 223
    monitor-exit v6

    goto :goto_0

    .end local v1           #failedUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 235
    .restart local v1       #failedUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .local v2, tempUrl:Ljava/lang/String;
    :try_start_2
    invoke-direct {p0, v2}, Lcom/fiksu/asotracking/EventUploader;->doUpload(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 238
    const-string v7, "FiksuTracking"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Upload failed for url.  Saving it for retry later: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 241
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 242
    .local v0, e:Ljava/net/MalformedURLException;
    :try_start_3
    const-string v7, "FiksuTracking"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v7, "FiksuTracking"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 304
    :try_start_0
    invoke-direct {p0}, Lcom/fiksu/asotracking/EventUploader;->uploadToTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-enter p0

    .line 307
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 306
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 310
    return-void

    .line 305
    :catchall_0
    move-exception v0

    .line 306
    monitor-enter p0

    .line 307
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 306
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    throw v0

    .line 306
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
