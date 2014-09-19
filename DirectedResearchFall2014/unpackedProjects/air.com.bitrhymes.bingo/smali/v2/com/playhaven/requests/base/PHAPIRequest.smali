.class public Lv2/com/playhaven/requests/base/PHAPIRequest;
.super Ljava/lang/Object;
.source "PHAPIRequest.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHHttpRequestListener;


# static fields
.field public static final API_CACHE_SUBDIR:Ljava/lang/String; = "apicache"

.field public static final APP_CACHE_VERSION:Ljava/lang/Integer;

.field public static final PRECACHE_FILE_KEY_INDEX:Ljava/lang/Integer;


# instance fields
.field private final SESSION_PREFERENCES:Ljava/lang/String;

.field private additionalParams:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lv2/com/playhaven/configuration/PHConfiguration;

.field private conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

.field protected fullUrl:Ljava/lang/String;

.field private lastError:Lv2/com/playhaven/model/PHError;

.field private lastResponse:Lorg/json/JSONObject;

.field private requestTag:I

.field public shouldComplainAboutNonOverridden:Z

.field private signedParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->PRECACHE_FILE_KEY_INDEX:Ljava/lang/Integer;

    .line 71
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->APP_CACHE_VERSION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->shouldComplainAboutNonOverridden:Z

    .line 64
    const-string v0, "com_playhaven_sdk_session"

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->SESSION_PREFERENCES:Ljava/lang/String;

    .line 77
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    .line 78
    return-void
.end method

.method private checkTokenAndSecret(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "secret"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must provide a token and secret from the Playhaven dashboard"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    return-void
.end method

.method private hasValidTokenAndSecret(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 278
    iget-object v2, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v2, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, token:Ljava/lang/String;
    iget-object v2, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v2, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->getSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, secret:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 282
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 283
    const/4 v2, 0x1

    .line 285
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private send(Landroid/content/Context;Lv2/com/playhaven/requests/base/PHAsyncRequest;)V
    .locals 5
    .parameter "context"
    .parameter "client"

    .prologue
    .line 324
    :try_start_0
    iput-object p2, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    .line 327
    iget-object v1, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    iget-object v1, v1, Lv2/com/playhaven/requests/base/PHAsyncRequest;->request_type:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    sget-object v2, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Post:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    if-ne v1, v2, :cond_0

    .line 328
    iget-object v1, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    invoke-virtual {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;->getPostParams()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->addPostParams(Ljava/util/Hashtable;)V

    .line 330
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending PHAPIRequest of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;->getRequestType()Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    move-result-object v2

    invoke-virtual {v2}, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHAPIRequest URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->getURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->getURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 337
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PHAPIRequest - send()"

    sget-object v2, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method


# virtual methods
.method public baseURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 417
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->urlPath:Ljava/lang/String;

    return-object v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " canceled!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;->finish()V

    .line 390
    return-void
.end method

.method public createAPIURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "slug"

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v1, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->getAPIUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finish()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->cancel(Z)Z

    .line 384
    return-void
.end method

.method public getAdditionalParams()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->additionalParams:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getAdditionalParams(Landroid/content/Context;)Ljava/util/Hashtable;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->additionalParams:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getConnection()Lv2/com/playhaven/requests/base/PHAsyncRequest;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    return-object v0
.end method

.method public getLastError()Lv2/com/playhaven/model/PHError;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->lastError:Lv2/com/playhaven/model/PHError;

    return-object v0
.end method

.method public getLastResponse()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->lastResponse:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPostParams()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestTag()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->requestTag:I

    return v0
.end method

.method public getRequestType()Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Get:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    return-object v0
.end method

.method public getSignedParams(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 29
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "android_id"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, device:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 137
    const-string v8, "null"

    .line 139
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0xf

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 141
    .local v13, idiom:Ljava/lang/String;
    const-string v15, "0"

    .line 146
    .local v15, orientation:Ljava/lang/String;
    invoke-static {}, Lv2/com/playhaven/utils/PHStringUtil;->generateUUID()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lv2/com/playhaven/utils/PHStringUtil;->base64Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 148
    .local v14, nonce:Ljava/lang/String;
    const-string v25, "%s:%s:%s:%s"

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/configuration/PHConfiguration;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    if-eqz v8, :cond_3

    move-object/from16 v28, v8

    :goto_0
    aput-object v28, v26, v27

    const/16 v27, 0x2

    if-eqz v14, :cond_4

    move-object/from16 v28, v14

    :goto_1
    aput-object v28, v26, v27

    const/16 v27, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/configuration/PHConfiguration;->getSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 153
    .local v21, sig:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lv2/com/playhaven/utils/PHStringUtil;->hexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 156
    .local v22, sigHash:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 158
    .local v17, pinfo:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    .line 160
    .local v5, appId:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v6, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v17           #pinfo:Landroid/content/pm/PackageInfo;
    .local v6, appVersion:Ljava/lang/String;
    :goto_2
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 171
    .local v11, hardware:Ljava/lang/String;
    const-string v25, "%s %s"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v28, v26, v27

    const/16 v27, 0x1

    sget v28, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 173
    .local v16, os:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lv2/com/playhaven/configuration/PHConfiguration;->getCleanSDKVersion()Ljava/lang/String;

    move-result-object v20

    .line 175
    .local v20, sdk_version:Ljava/lang/String;
    const-string v19, "android"

    .line 177
    .local v19, sdk_platform:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 179
    .local v9, dm:Landroid/util/DisplayMetrics;
    move-object v0, v9

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    .line 181
    .local v24, width:Ljava/lang/String;
    move-object v0, v9

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, height:Ljava/lang/String;
    move-object v0, v9

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 185
    .local v18, screen_density:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lv2/com/playhaven/utils/PHConnectionUtils;->getConnectionType(Landroid/content/Context;)Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    move-result-object v23

    .line 187
    .local v23, type:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;
    sget-object v25, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->NO_PERMISSION:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    const/16 v25, 0x0

    move-object/from16 v7, v25

    .line 190
    .local v7, connection:Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->getAdditionalParams(Landroid/content/Context;)Ljava/util/Hashtable;

    move-result-object v4

    .line 201
    .local v4, additionalParams:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_6

    new-instance v25, Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v3, v25

    .line 204
    .local v3, add_params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "device"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "token"

    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/configuration/PHConfiguration;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "signature"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "nonce"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "app"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "app_version"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "hardware"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "os"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "idiom"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "width"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "height"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "sdk_version"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "sdk_platform"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "orientation"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "dpi"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "languages"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    if-eqz v7, :cond_1

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    const-string v26, "connection"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 242
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    .line 245
    .end local v3           #add_params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #additionalParams:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #appId:Ljava/lang/String;
    .end local v6           #appVersion:Ljava/lang/String;
    .end local v7           #connection:Ljava/lang/String;
    .end local v8           #device:Ljava/lang/String;
    .end local v9           #dm:Landroid/util/DisplayMetrics;
    .end local v11           #hardware:Ljava/lang/String;
    .end local v12           #height:Ljava/lang/String;
    .end local v13           #idiom:Ljava/lang/String;
    .end local v14           #nonce:Ljava/lang/String;
    .end local v15           #orientation:Ljava/lang/String;
    .end local v16           #os:Ljava/lang/String;
    .end local v18           #screen_density:Ljava/lang/String;
    .end local v19           #sdk_platform:Ljava/lang/String;
    .end local v20           #sdk_version:Ljava/lang/String;
    .end local v21           #sig:Ljava/lang/String;
    .end local v22           #sigHash:Ljava/lang/String;
    .end local v23           #type:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;
    .end local v24           #width:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v25, v0

    return-object v25

    .line 148
    .restart local v8       #device:Ljava/lang/String;
    .restart local v13       #idiom:Ljava/lang/String;
    .restart local v14       #nonce:Ljava/lang/String;
    .restart local v15       #orientation:Ljava/lang/String;
    :cond_3
    const-string v28, ""

    goto/16 :goto_0

    :cond_4
    const-string v28, ""

    goto/16 :goto_1

    .line 162
    .restart local v21       #sig:Ljava/lang/String;
    .restart local v22       #sigHash:Ljava/lang/String;
    :catch_0
    move-exception v25

    move-object/from16 v10, v25

    .line 164
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, ""

    .line 166
    .restart local v5       #appId:Ljava/lang/String;
    const-string v6, ""

    .restart local v6       #appVersion:Ljava/lang/String;
    goto/16 :goto_2

    .line 187
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #dm:Landroid/util/DisplayMetrics;
    .restart local v11       #hardware:Ljava/lang/String;
    .restart local v12       #height:Ljava/lang/String;
    .restart local v16       #os:Ljava/lang/String;
    .restart local v18       #screen_density:Ljava/lang/String;
    .restart local v19       #sdk_platform:Ljava/lang/String;
    .restart local v20       #sdk_version:Ljava/lang/String;
    .restart local v23       #type:Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;
    .restart local v24       #width:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Lv2/com/playhaven/configuration/PHConfiguration$ConnectionType;->ordinal()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v7, v25

    goto/16 :goto_3

    .line 201
    .restart local v4       #additionalParams:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #connection:Ljava/lang/String;
    :cond_6
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v3, v25

    goto/16 :goto_4
.end method

.method public getURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->fullUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 402
    const-string v0, "%s?%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->baseURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->signedParamsStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->fullUrl:Ljava/lang/String;

    .line 404
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->fullUrl:Ljava/lang/String;

    return-object v0
.end method

.method public handleRequestFailure(Lv2/com/playhaven/model/PHError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 443
    iget-boolean v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->shouldComplainAboutNonOverridden:Z

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Request failed and subclass has not override handleRequestFailure"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    return-void
.end method

.method public handleRequestSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "res"

    .prologue
    .line 433
    iget-boolean v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->shouldComplainAboutNonOverridden:Z

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Request succeeded and subclass has not override handleRequestSuccess"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    return-void
.end method

.method public onHttpRequestFailed(Lv2/com/playhaven/model/PHError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 553
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->lastError:Lv2/com/playhaven/model/PHError;

    .line 555
    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->handleRequestFailure(Lv2/com/playhaven/model/PHError;)V

    .line 556
    return-void
.end method

.method public onHttpRequestSucceeded(Ljava/nio/ByteBuffer;I)V
    .locals 6
    .parameter "response"
    .parameter "responseCode"

    .prologue
    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 459
    const/16 v3, 0xc8

    if-eq p2, v3, :cond_0

    .line 461
    new-instance v3, Lv2/com/playhaven/model/PHError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request failed with code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lv2/com/playhaven/model/PHError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lv2/com/playhaven/requests/base/PHAPIRequest;->handleRequestFailure(Lv2/com/playhaven/model/PHError;)V

    .line 511
    :goto_0
    return-void

    .line 470
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    if-nez v3, :cond_2

    .line 474
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 477
    .local v1, json:Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->processRequestResponse(Lorg/json/JSONObject;)V

    .line 484
    .end local v1           #json:Lorg/json/JSONObject;
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const-string v4, "UTF8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 486
    .local v2, res_str:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparsed JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 489
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 492
    .restart local v1       #json:Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->processRequestResponse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 494
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #res_str:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 497
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lv2/com/playhaven/model/PHError;

    const-string v4, "Unsupported encoding when parsing JSON"

    invoke-direct {v3, v4}, Lv2/com/playhaven/model/PHError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lv2/com/playhaven/requests/base/PHAPIRequest;->handleRequestFailure(Lv2/com/playhaven/model/PHError;)V

    goto :goto_0

    .line 499
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 502
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Lv2/com/playhaven/model/PHError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse JSON because: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lv2/com/playhaven/model/PHError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lv2/com/playhaven/requests/base/PHAPIRequest;->handleRequestFailure(Lv2/com/playhaven/model/PHError;)V

    goto :goto_0

    .line 504
    .end local v0           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 505
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 507
    new-instance v3, Lv2/com/playhaven/model/PHError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown error during API request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lv2/com/playhaven/model/PHError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lv2/com/playhaven/requests/base/PHAPIRequest;->handleRequestFailure(Lv2/com/playhaven/model/PHError;)V

    goto/16 :goto_0
.end method

.method public processRequestResponse(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "response"

    .prologue
    const-string v3, "error"

    .line 519
    const-string v2, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, errmsg:Ljava/lang/String;
    const-string v2, "errobj"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 527
    .local v1, errobj:Lorg/json/JSONObject;
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string v2, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 533
    :cond_1
    new-instance v2, Lv2/com/playhaven/model/PHError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server sent error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lv2/com/playhaven/model/PHError;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->lastError:Lv2/com/playhaven/model/PHError;

    .line 534
    iget-object v2, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->lastError:Lv2/com/playhaven/model/PHError;

    invoke-virtual {p0, v2}, Lv2/com/playhaven/requests/base/PHAPIRequest;->handleRequestFailure(Lv2/com/playhaven/model/PHError;)V

    .line 545
    :goto_0
    return-void

    .line 538
    :cond_2
    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->lastResponse:Lorg/json/JSONObject;

    .line 544
    iget-object v2, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->lastResponse:Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lv2/com/playhaven/requests/base/PHAPIRequest;->handleRequestSuccess(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public resetLastError()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->lastError:Lv2/com/playhaven/model/PHError;

    .line 355
    return-void
.end method

.method public resetLastResponse()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->lastResponse:Lorg/json/JSONObject;

    .line 359
    return-void
.end method

.method public send(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->hasValidTokenAndSecret(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const-string v0, "Either the token or secret has not been properly set"

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 303
    :cond_0
    new-instance v0, Lv2/com/playhaven/requests/base/PHAsyncRequest;

    invoke-direct {v0, p0}, Lv2/com/playhaven/requests/base/PHAsyncRequest;-><init>(Lv2/com/playhaven/listeners/PHHttpRequestListener;)V

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    .line 305
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v0, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->getStagingUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v0, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->getStagingPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    iget-object v1, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v1, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->getStagingUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->setUsername(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    iget-object v1, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v1, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->getStagingPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->setPassword(Ljava/lang/String;)V

    .line 310
    :cond_1
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    invoke-virtual {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;->getRequestType()Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    move-result-object v1

    iput-object v1, v0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->request_type:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    .line 313
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v0, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v1, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->getSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->checkTokenAndSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->conn:Lv2/com/playhaven/requests/base/PHAsyncRequest;

    invoke-direct {p0, p1, v0}, Lv2/com/playhaven/requests/base/PHAPIRequest;->send(Landroid/content/Context;Lv2/com/playhaven/requests/base/PHAsyncRequest;)V

    goto :goto_0
.end method

.method public setAdditionalParameters(Ljava/util/Hashtable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->additionalParams:Ljava/util/Hashtable;

    .line 251
    return-void
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 422
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->urlPath:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setRequestTag(I)V
    .locals 0
    .parameter "requestTag"

    .prologue
    .line 96
    iput p1, p0, Lv2/com/playhaven/requests/base/PHAPIRequest;->requestTag:I

    .line 97
    return-void
.end method

.method public signedParamsStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->getSignedParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lv2/com/playhaven/utils/PHStringUtil;->createQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
