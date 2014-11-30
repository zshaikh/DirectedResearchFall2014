.class public Lcom/appoxee/AppoxeeManager;
.super Ljava/lang/Object;
.source "AppoxeeManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710

.field private static DEBUG:Z = false

.field public static final INBOX_STATUS:Ljava/lang/String; = "APPOXEE_INBOX_STATUS"

.field public static final INBOX_UPDATED:Ljava/lang/String; = "APPOXEE_INBOX_UPDATE"

.field public static final LAYOUT_CUSTOM_PREFIX:Ljava/lang/String; = "custom"

.field public static final LAYOUT_DEFAULT_PREFIX:Ljava/lang/String; = "default"

.field public static final LAYOUT_PREFIX:Ljava/lang/String; = "appoxee"

.field private static final MESSAGE_LOAD_TRY_NUMBER:I = 0x64

.field private static final MESSAGE_LOAD_TRY_WAIT:I = 0xa

.field public static final REGISTERED_ON_APPOXEE:Ljava/lang/String; = "REGISTERED_ON_APPOXEE"

.field private static final TAG:Ljava/lang/String; = "AppoxeeManager"

.field public static final VERSION:Ljava/lang/String; = "1.43"

.field public static final VERSION_CODE:I = 0x6

.field public static baseUrl:Ljava/lang/String;

.field private static client:Lcom/appoxee/connection/AppoxeeClient;

.field private static databaseHelper:Lcom/appoxee/inbox/DatabaseHelper;

.field public static feedbackUrl:Ljava/lang/String;

.field public static isAirVersion:Z

.field static layoutResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mApi:Lcom/appoxee/Appoxee;

.field public static mConfiguration:Lcom/appoxee/Configuration;

.field public static mContext:Landroid/content/Context;

.field private static mOldTimeInAppT0:J

.field private static mOldTimeInAppT1:J

.field static mReady:Z

.field static mSDKContext:Landroid/content/Context;

.field public static moreAppsUrl:Ljava/lang/String;

.field private static url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appoxee/AppoxeeManager;->layoutResources:Ljava/util/HashMap;

    .line 52
    sput-boolean v2, Lcom/appoxee/AppoxeeManager;->DEBUG:Z

    .line 68
    sput-boolean v2, Lcom/appoxee/AppoxeeManager;->isAirVersion:Z

    .line 80
    const-string v0, "http://iosapi.appoxee.com/"

    sput-object v0, Lcom/appoxee/AppoxeeManager;->baseUrl:Ljava/lang/String;

    .line 81
    const-string v0, "http://api.appoxee.com/api/"

    sput-object v0, Lcom/appoxee/AppoxeeManager;->url:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/appoxee/AppoxeeManager;->baseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "AppBoxWebClient/feedback/feedback.aspx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appoxee/AppoxeeManager;->feedbackUrl:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/appoxee/AppoxeeManager;->baseUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/MoreApps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appoxee/AppoxeeManager;->moreAppsUrl:Ljava/lang/String;

    .line 102
    sput-boolean v2, Lcom/appoxee/AppoxeeManager;->mReady:Z

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/appoxee/AppoxeeManager;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static SendNotification(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5
    .param p0, "id"    # J
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "tickerText"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "soundResource"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 180
    const-string v0, "notification"

    .line 181
    .local v0, "ns":Ljava/lang/String;
    sget-object v1, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 182
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 183
    .local v3, "when":J
    move-object p3, p3

    .line 184
    .local p3, "notificationTicker":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 185
    move-object p3, p4

    .line 188
    :cond_0
    new-instance v2, Landroid/app/Notification;

    const-string v0, "icon"

    .end local v0    # "ns":Ljava/lang/String;
    invoke-static {v0}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, p3, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 189
    .local v2, "notification":Landroid/app/Notification;
    sget-object p3, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    .end local p3    # "notificationTicker":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .end local v3    # "when":J
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string p3, "OPENED_FROM_NOTIFICATION"

    const/4 v3, 0x1

    invoke-virtual {p6, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    sget-object p3, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p3, v3, p6, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 193
    .local p3, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v0, p2, p4, p3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 194
    iget p2, v2, Landroid/app/Notification;->flags:I

    .end local p2    # "title":Ljava/lang/String;
    or-int/lit8 p2, p2, 0x10

    iput p2, v2, Landroid/app/Notification;->flags:I

    .line 196
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isSoundEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p5, :cond_2

    .line 198
    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p5

    .line 199
    const-string p2, "."

    invoke-virtual {p5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 200
    const/4 p2, 0x0

    const/16 p3, 0x2e

    invoke-virtual {p5, p3}, Ljava/lang/String;->lastIndexOf(I)I

    .end local p3    # "contentIntent":Landroid/app/PendingIntent;
    move-result p3

    invoke-virtual {p5, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p5

    .line 202
    :cond_1
    sget-boolean p2, Lcom/appoxee/AppoxeeManager;->isAirVersion:Z

    if-eqz p2, :cond_4

    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "android.resource://"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "/raw/appoxeesound.wav"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 205
    .local p2, "path":Landroid/net/Uri;
    iget p3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 p3, p3, 0x1

    iput p3, v2, Landroid/app/Notification;->defaults:I

    .line 206
    iput-object p2, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 216
    .end local p2    # "path":Landroid/net/Uri;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isVibrateEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 217
    iget p2, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v2, Landroid/app/Notification;->defaults:I

    .line 219
    :cond_3
    long-to-int p0, p0

    invoke-virtual {v1, p0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 220
    .end local p0    # "id":J
    return-void

    .line 208
    .restart local p0    # "id":J
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "android.resource://"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "/raw/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 209
    .restart local p2    # "path":Landroid/net/Uri;
    iput-object p2, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getApi()Lcom/appoxee/Appoxee;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/appoxee/AppoxeeManager;->mApi:Lcom/appoxee/Appoxee;

    return-object v0
.end method

.method public static getAppClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/appoxee/Configuration;->getAppClientVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppId()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 275
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppID"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInboxMessageTimeout()J
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lcom/appoxee/Configuration;->GetAppInboxMessageTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 325
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "app_name"

    invoke-static {v2}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 328
    :goto_0
    return-object v1

    .line 326
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 327
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "AppoxeeManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAppSDKId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/appoxee/Configuration;->GetAppSDKKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/appoxee/Configuration;->GetAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClient()Lcom/appoxee/connection/AppoxeeClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appoxee/AppoxeeClientException;
        }
    .end annotation

    .prologue
    .line 602
    sget-object v0, Lcom/appoxee/AppoxeeManager;->client:Lcom/appoxee/connection/AppoxeeClient;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Lcom/appoxee/AppoxeeClientException;

    invoke-direct {v0}, Lcom/appoxee/AppoxeeClientException;-><init>()V

    throw v0

    .line 606
    :cond_0
    sget-object v0, Lcom/appoxee/AppoxeeManager;->client:Lcom/appoxee/connection/AppoxeeClient;

    return-object v0
.end method

.method public static getConnectionTimeout()I
    .locals 1

    .prologue
    .line 614
    const/16 v0, 0x2710

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "androidId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 293
    const-string v0, ""

    .line 295
    :cond_0
    return-object v0
.end method

.method public static getFeedbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/appoxee/AppoxeeManager;->feedbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getHelper()Lcom/appoxee/inbox/DatabaseHelper;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/appoxee/AppoxeeManager;->databaseHelper:Lcom/appoxee/inbox/DatabaseHelper;

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/appoxee/inbox/DatabaseHelper;

    invoke-static {v0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/appoxee/inbox/DatabaseHelper;

    sput-object v0, Lcom/appoxee/AppoxeeManager;->databaseHelper:Lcom/appoxee/inbox/DatabaseHelper;

    .line 111
    :cond_0
    sget-object v0, Lcom/appoxee/AppoxeeManager;->databaseHelper:Lcom/appoxee/inbox/DatabaseHelper;

    return-object v0
.end method

.method private static getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "suffix"    # Ljava/lang/String;
    .param p1, "defType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appoxee/IdentifierNotFoundException;
        }
    .end annotation

    .prologue
    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appoxee_default_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "defaultString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appoxee_custom_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "customString":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 473
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, p1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 474
    .local v3, "result":I
    if-nez v3, :cond_0

    .line 476
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, p1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 480
    :cond_0
    if-nez v3, :cond_1

    .line 481
    new-instance v4, Lcom/appoxee/IdentifierNotFoundException;

    const-string v5, "Identifier not found"

    invoke-direct {v4, v5, p1, p0}, Lcom/appoxee/IdentifierNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 483
    :cond_1
    sget-object v4, Lcom/appoxee/AppoxeeManager;->layoutResources:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    return v3
.end method

.method public static getInboxListItemView()I
    .locals 1

    .prologue
    .line 173
    const-string v0, "inbox_list_item_view"

    invoke-static {v0}, Lcom/appoxee/AppoxeeManager;->getResourceId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInboxTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mailboxTitle"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutIds()Z
    .locals 4

    .prologue
    const-string v2, "string"

    const-string v2, "layout"

    const-string v2, "color"

    const-string v2, "id"

    .line 359
    const/4 v1, 0x1

    .line 362
    .local v1, "result":Z
    :try_start_0
    const-string v2, "inbox_list_item_view"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v2, "feedback_layout"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v2, "feedback_progress_bar"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v2, "feedback_webview"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v2, "feedback_error_message"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v2, "moreapps_layout"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v2, "moreapps_progress_bar"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v2, "moreapps_webview"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v2, "moreapps_error_message"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v2, "inbox_message"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v2, "inbox_message_progress_bar"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v2, "inbox_message_error_message"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v2, "inbox_message_webview"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v2, "inbox_layout"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v2, "inbox_list"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v2, "delete_button"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v2, "inbox_title"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v2, "inbox_message_date"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v2, "inbox_message_title"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v2, "inbox_message_description"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v2, "inbox_message_layout"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v2, "inbox_message_read_color"

    const-string v3, "color"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v2, "inbox_message_read_backgound_color"

    const-string v3, "color"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v2, "inbox_message_content_read_color"

    const-string v3, "color"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v2, "inbox_message_unread_color"

    const-string v3, "color"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v2, "inbox_message_unread_backgound_color"

    const-string v3, "color"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v2, "inbox_message_content_unread_color"

    const-string v3, "color"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v2, "inbox_message_pressed_color"

    const-string v3, "color"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v2, "inbox_message_pressed_backgound_color"

    const-string v3, "color"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v2, "inbox_message_content_pressed_color"

    const-string v3, "color"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v2, "empty_inbox"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v2, "icon"

    const-string v3, "drawable"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v2, "ptr_header"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v2, "ptr_id_header"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v2, "ptr_id_text"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v2, "ptr_id_last_updated"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v2, "ptr_id_image"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v2, "ptr_id_spinner"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v2, "ptr_pull_to_refresh"

    const-string v3, "string"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getSimpleIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v2, "ptr_release_to_refresh"

    const-string v3, "string"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getSimpleIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v2, "ptr_refreshing"

    const-string v3, "string"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getSimpleIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v2, "ptr_last_updated"

    const-string v3, "string"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getSimpleIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v2, "app_name"

    const-string v3, "string"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getSimpleIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v2, "inbox_buttons"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getSimpleIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v2, "separator"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getSimpleIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v2, "feedback_button"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getSimpleIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v2, "moreapps_button"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getSimpleIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v2, "pressed"

    const-string v3, "color"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getSimpleIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v2, "tags_layout"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v2, "tagsBtn"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v2, "aliasButton"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v2, "attributesBtn"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v2, "tags_listview"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v2, "tag_progressBar"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/appoxee/AppoxeeManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/appoxee/IdentifierNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return v1

    .line 442
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 443
    .local v0, "e":Lcom/appoxee/IdentifierNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Appoxee layout problem. Could not find resource from type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/appoxee/IdentifierNotFoundException;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/appoxee/IdentifierNotFoundException;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 444
    const-string v2, "Please read documentation regarding to resources requirements"

    invoke-static {v2}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMessageLoadTries()I
    .locals 1

    .prologue
    .line 618
    const/16 v0, 0x64

    return v0
.end method

.method public static getMessageLoadWait()I
    .locals 1

    .prologue
    .line 622
    const/16 v0, 0xa

    return v0
.end method

.method public static getMoreAppsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/appoxee/AppoxeeManager;->moreAppsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getOldTimeInApp()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 318
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "TimeInAppT0"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/appoxee/AppoxeeManager;->mOldTimeInAppT0:J

    .line 319
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "TimeInAppT1"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/appoxee/AppoxeeManager;->mOldTimeInAppT1:J

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loaded t0 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/appoxee/AppoxeeManager;->mOldTimeInAppT0:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", t1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/appoxee/AppoxeeManager;->mOldTimeInAppT1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public static getResourceId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 492
    .local v0, "result":Ljava/lang/Integer;
    sget-object v1, Lcom/appoxee/AppoxeeManager;->layoutResources:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/appoxee/AppoxeeManager;->layoutResources:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 493
    sget-object v1, Lcom/appoxee/AppoxeeManager;->layoutResources:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 501
    .restart local v0    # "result":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v0

    .line 495
    :cond_1
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getLayoutIds()Z

    .line 497
    sget-object v1, Lcom/appoxee/AppoxeeManager;->layoutResources:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/appoxee/AppoxeeManager;->layoutResources:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 498
    sget-object v1, Lcom/appoxee/AppoxeeManager;->layoutResources:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .restart local v0    # "result":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public static getSenderId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "senderId":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "projectId"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG - getSenderId1 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 123
    return-object v0
.end method

.method public static getSenderId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p0}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "projectId"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "senderId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG - getSenderId2 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 131
    return-object v0
.end method

.method public static getServerApplicationConfiguration()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appoxee/AppoxeeClientException;
        }
    .end annotation

    .prologue
    .line 231
    sget-object v0, Lcom/appoxee/AppoxeeManager;->mConfiguration:Lcom/appoxee/Configuration;

    invoke-virtual {v0}, Lcom/appoxee/Configuration;->getServerConfiguration()Z

    move-result v0

    return v0
.end method

.method public static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 141
    sget-object v0, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    sput-object p0, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    .line 137
    sget-object v0, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getSimpleIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "suffix"    # Ljava/lang/String;
    .param p1, "defType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appoxee/IdentifierNotFoundException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 455
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 457
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 458
    new-instance v2, Lcom/appoxee/IdentifierNotFoundException;

    const-string v3, "Identifier not found"

    invoke-direct {v2, v3, p1, p0}, Lcom/appoxee/IdentifierNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 460
    :cond_0
    sget-object v2, Lcom/appoxee/AppoxeeManager;->layoutResources:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    return v1
.end method

.method public static getmAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/appoxee/Configuration;->GetAppSecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 650
    sget-object v0, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/appoxee/AppoxeeManager;->DEBUG:Z

    return v0
.end method

.method public static isFeedbackEnabled()Z
    .locals 3

    .prologue
    .line 283
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "feedbackEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMoreAppsEnabled()Z
    .locals 3

    .prologue
    .line 287
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "moreAppsEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPushEnabled()Z
    .locals 3

    .prologue
    .line 626
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pushEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSoundEnabled()Z
    .locals 3

    .prologue
    .line 630
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "soundEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVibrateEnabled()Z
    .locals 3

    .prologue
    .line 634
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "vibrateEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static reRegisterDevice()Z
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appoxee/AppoxeeClientException;
        }
    .end annotation

    .prologue
    .line 505
    const/16 v26, 0x1

    .line 507
    .local v26, "result":Z
    new-instance v18, Landroid/util/DisplayMetrics;

    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    .line 509
    .local v18, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 511
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .end local v3    # "wm":Landroid/view/WindowManager;
    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 512
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v27

    .line 513
    .local v27, "timezone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    .line 515
    .local v17, "locale":Ljava/util/Locale;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 518
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v3, "REGISTERED_ON_APPOXEE"

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    const-string v3, "registration_values_key"

    const-string v5, ""

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 521
    .local v12, "key":Ljava/lang/String;
    const-string v3, "registration_values_pt"

    const-string v5, ""

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 522
    .local v23, "pt":Ljava/lang/String;
    const-string v3, "registration_values_apv"

    const-string v5, ""

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 523
    .local v5, "apv":Ljava/lang/String;
    const-string v3, "registration_values_apcv"

    const-string v6, ""

    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "apcv":Ljava/lang/String;
    const-string v6, "registration_values_ht"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, "ht":Ljava/lang/String;
    const-string v6, "registration_values_onm"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 526
    .local v20, "onm":Ljava/lang/String;
    const-string v6, "registration_values_onu"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 527
    .local v21, "onu":Ljava/lang/Integer;
    const-string v6, "registration_values_cl"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 528
    .local v6, "cl":Ljava/lang/String;
    const-string v7, "registration_values_tzn"

    const-string v9, ""

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 529
    .local v28, "tzn":Ljava/lang/String;
    const-string v7, "registration_values_tzs"

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 530
    .local v29, "tzs":Ljava/lang/Integer;
    const-string v7, "registration_values_platform"

    const-string v9, ""

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 531
    .local v22, "platform":Ljava/lang/String;
    const-string v7, "registration_values_resolution"

    const-string v9, ""

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 532
    .local v25, "resolution":Ljava/lang/String;
    const-string v7, "registration_values_density"

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 534
    .local v7, "density":Ljava/lang/Integer;
    const-string v9, "registration_values_doPush"

    const/4 v10, 0x1

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 535
    .local v9, "isPushEnabled":Z
    const-string v10, "registration_values_doSound"

    const/4 v11, 0x1

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 536
    .local v10, "isSoundEnabled":Z
    const-string v11, "registration_values_doVib"

    const/4 v13, 0x1

    invoke-interface {v4, v11, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 539
    .local v11, "isVibrateEnabled":Z
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v4

    .end local v4    # "pref":Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 540
    .local v24, "regId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v13, v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "x"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move v13, v0

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 542
    .local v19, "newResolution":Ljava/lang/String;
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v13, "registration_values_timestamp"

    .line 543
    const-wide/16 v14, 0x0

    .line 542
    invoke-interface {v4, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 545
    .local v15, "lastRegistrationTime":J
    const-wide/16 v13, 0x0

    .line 547
    .local v13, "lastFilesUpdateTime":J
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 551
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object v0, v4

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 552
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 553
    .local v4, "appFile":Ljava/lang/String;
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    .line 563
    .end local v4    # "appFile":Ljava/lang/String;
    :goto_0
    const-wide/16 v30, 0x0

    cmp-long v4, v15, v30

    if-eqz v4, :cond_0

    cmp-long v4, v13, v15

    if-gtz v4, :cond_0

    .line 564
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 565
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 566
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getAppClientVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .end local v3    # "apcv":Ljava/lang/String;
    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 568
    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v27 .. v27}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    invoke-virtual/range {v27 .. v27}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual/range {v27 .. v27}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 570
    const-string v3, "Android"

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move v3, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isPushEnabled()Z

    move-result v3

    if-ne v9, v3, :cond_0

    .line 572
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isSoundEnabled()Z

    move-result v3

    if-ne v10, v3, :cond_0

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isVibrateEnabled()Z

    move-result v3

    if-eq v11, v3, :cond_2

    .line 573
    :cond_0
    const/4 v3, 0x0

    .line 574
    .end local v26    # "result":Z
    .local v3, "result":Z
    const-string v4, "reRegisterDevice due to change in registration values or update of installation files"

    invoke-static {v4}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 578
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getClient()Lcom/appoxee/connection/AppoxeeClient;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 579
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getClient()Lcom/appoxee/connection/AppoxeeClient;

    move-result-object v3

    .end local v3    # "result":Z
    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/appoxee/connection/AppoxeeClient;->registerDevice(Ljava/lang/String;)Z

    move-result v3

    .line 584
    .end local v5    # "apv":Ljava/lang/String;
    .end local v6    # "cl":Ljava/lang/String;
    .end local v7    # "density":Ljava/lang/Integer;
    .end local v8    # "ht":Ljava/lang/String;
    .end local v9    # "isPushEnabled":Z
    .end local v10    # "isSoundEnabled":Z
    .end local v11    # "isVibrateEnabled":Z
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "lastFilesUpdateTime":J
    .end local v15    # "lastRegistrationTime":J
    .end local v19    # "newResolution":Ljava/lang/String;
    .end local v20    # "onm":Ljava/lang/String;
    .end local v21    # "onu":Ljava/lang/Integer;
    .end local v22    # "platform":Ljava/lang/String;
    .end local v23    # "pt":Ljava/lang/String;
    .end local v24    # "regId":Ljava/lang/String;
    .end local v25    # "resolution":Ljava/lang/String;
    .end local v28    # "tzn":Ljava/lang/String;
    .end local v29    # "tzs":Ljava/lang/Integer;
    .restart local v3    # "result":Z
    :cond_1
    :goto_1
    return v3

    .line 555
    .local v3, "apcv":Ljava/lang/String;
    .restart local v5    # "apv":Ljava/lang/String;
    .restart local v6    # "cl":Ljava/lang/String;
    .restart local v7    # "density":Ljava/lang/Integer;
    .restart local v8    # "ht":Ljava/lang/String;
    .restart local v9    # "isPushEnabled":Z
    .restart local v10    # "isSoundEnabled":Z
    .restart local v11    # "isVibrateEnabled":Z
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "lastFilesUpdateTime":J
    .restart local v15    # "lastRegistrationTime":J
    .restart local v19    # "newResolution":Ljava/lang/String;
    .restart local v20    # "onm":Ljava/lang/String;
    .restart local v21    # "onu":Ljava/lang/Integer;
    .restart local v22    # "platform":Ljava/lang/String;
    .restart local v23    # "pt":Ljava/lang/String;
    .restart local v24    # "regId":Ljava/lang/String;
    .restart local v25    # "resolution":Ljava/lang/String;
    .restart local v26    # "result":Z
    .restart local v28    # "tzn":Ljava/lang/String;
    .restart local v29    # "tzs":Ljava/lang/Integer;
    :catch_0
    move-exception v4

    .line 556
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v15, "reRegisterDevice error: failed to get package file timestamp, hence re-registration will occour"

    .end local v15    # "lastRegistrationTime":J
    invoke-static {v15}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 559
    invoke-static {v4}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    .line 560
    const-wide/16 v15, 0x0

    .restart local v15    # "lastRegistrationTime":J
    goto/16 :goto_0

    .end local v3    # "apcv":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "apv":Ljava/lang/String;
    .end local v6    # "cl":Ljava/lang/String;
    .end local v7    # "density":Ljava/lang/Integer;
    .end local v8    # "ht":Ljava/lang/String;
    .end local v9    # "isPushEnabled":Z
    .end local v10    # "isSoundEnabled":Z
    .end local v11    # "isVibrateEnabled":Z
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "lastFilesUpdateTime":J
    .end local v15    # "lastRegistrationTime":J
    .end local v19    # "newResolution":Ljava/lang/String;
    .end local v20    # "onm":Ljava/lang/String;
    .end local v21    # "onu":Ljava/lang/Integer;
    .end local v22    # "platform":Ljava/lang/String;
    .end local v23    # "pt":Ljava/lang/String;
    .end local v24    # "regId":Ljava/lang/String;
    .end local v25    # "resolution":Ljava/lang/String;
    .end local v28    # "tzn":Ljava/lang/String;
    .end local v29    # "tzs":Ljava/lang/Integer;
    :cond_2
    move/from16 v3, v26

    .end local v26    # "result":Z
    .local v3, "result":Z
    goto :goto_1
.end method

.method public static removeConfiguration(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 269
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method public static reportApplicationActive()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appoxee/AppoxeeClientException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 334
    const/4 v0, 0x0

    .line 337
    .local v0, "result":Z
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getOldTimeInApp()V

    .line 340
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->setTimeInAppT0()V

    .line 343
    sget-wide v3, Lcom/appoxee/AppoxeeManager;->mOldTimeInAppT1:J

    sget-wide v5, Lcom/appoxee/AppoxeeManager;->mOldTimeInAppT0:J

    sub-long v1, v3, v5

    .line 345
    .local v1, "timeInApp":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calculated time in app from : mOldTimeInAppT1 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/appoxee/AppoxeeManager;->mOldTimeInAppT1:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOldTimeInAppT0 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 346
    sget-wide v4, Lcom/appoxee/AppoxeeManager;->mOldTimeInAppT0:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeInApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 345
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 349
    sget-wide v3, Lcom/appoxee/AppoxeeManager;->mOldTimeInAppT1:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    sget-wide v3, Lcom/appoxee/AppoxeeManager;->mOldTimeInAppT0:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    cmp-long v3, v1, v7

    if-gez v3, :cond_1

    .line 350
    :cond_0
    const-wide/16 v1, 0x0

    .line 353
    :cond_1
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getClient()Lcom/appoxee/connection/AppoxeeClient;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/appoxee/connection/AppoxeeClient;->reportApplicationActive(J)Z

    move-result v0

    .line 355
    return v0
.end method

.method public static setClient(Lcom/appoxee/connection/AppoxeeClient;)V
    .locals 0
    .param p0, "client"    # Lcom/appoxee/connection/AppoxeeClient;

    .prologue
    .line 610
    sput-object p0, Lcom/appoxee/AppoxeeManager;->client:Lcom/appoxee/connection/AppoxeeClient;

    .line 611
    return-void
.end method

.method public static setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 237
    const/4 v3, 0x1

    .line 238
    .local v3, "result":Z
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 239
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 241
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 242
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    :goto_0
    if-eqz v3, :cond_0

    .line 262
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 264
    :cond_0
    return v3

    .line 243
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, p1, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 244
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v1, p0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 245
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, p1, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 246
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, p0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 247
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v5, p1, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 248
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v1, p0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 249
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v5, p1, Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 251
    :try_start_0
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/appoxee/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "stringValue":Ljava/lang/String;
    invoke-interface {v1, p0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v4    # "stringValue":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 254
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "Failed saving ArrayList in setConfiguration"

    invoke-static {v5}, Lcom/appoxee/utils/Utils;->Log(Ljava/lang/String;)V

    .line 255
    const/4 v3, 0x0

    .line 257
    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setDebug(Z)Z
    .locals 1
    .param p0, "d"    # Z

    .prologue
    .line 63
    sget-boolean v0, Lcom/appoxee/AppoxeeManager;->DEBUG:Z

    .line 64
    .local v0, "d_old":Z
    sput-boolean p0, Lcom/appoxee/AppoxeeManager;->DEBUG:Z

    .line 65
    return v0
.end method

.method public static setReady(Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/appoxee/AppoxeeManager;->mReady:Z

    .line 300
    return-void
.end method

.method public static setTimeInApp(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 313
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 314
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 315
    return-void
.end method

.method public static setTimeInAppT0()V
    .locals 5

    .prologue
    const-string v4, "TimeInAppT0"

    .line 303
    const-string v0, "TimeInAppT0"

    invoke-static {v4}, Lcom/appoxee/AppoxeeManager;->setTimeInApp(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set start time to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "TimeInAppT0"

    const-wide/16 v2, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public static setTimeInAppT1()V
    .locals 5

    .prologue
    const-string v4, "TimeInAppT1"

    .line 308
    const-string v0, "TimeInAppT1"

    invoke-static {v4}, Lcom/appoxee/AppoxeeManager;->setTimeInApp(Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set stop time to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "TimeInAppT1"

    const-wide/16 v2, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public static setmContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 654
    sput-object p0, Lcom/appoxee/AppoxeeManager;->mContext:Landroid/content/Context;

    .line 655
    return-void
.end method

.method public static timeToUpdateConfiguration()Z
    .locals 9

    .prologue
    .line 588
    const/4 v4, 0x0

    .line 589
    .local v4, "timeToUpdate":Z
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 591
    .local v2, "now":J
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "configuration_values_timestamp"

    .line 592
    const-wide/16 v7, 0x0

    .line 591
    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 594
    .local v0, "lastConfigurationUpdate":J
    sub-long v5, v2, v0

    const-wide/32 v7, 0x2932e00

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 595
    const/4 v4, 0x1

    .line 598
    :cond_0
    return v4
.end method


# virtual methods
.method public SetPushEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 638
    const-string v0, "pushEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 639
    return-void
.end method

.method public SetSoundEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 642
    const-string v0, "soundEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 643
    return-void
.end method

.method public SetVibrateEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 646
    const-string v0, "vibrateEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appoxee/AppoxeeManager;->setConfiguration(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 647
    return-void
.end method
