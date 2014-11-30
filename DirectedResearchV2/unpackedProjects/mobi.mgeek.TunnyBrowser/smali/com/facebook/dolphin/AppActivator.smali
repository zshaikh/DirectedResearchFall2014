.class public Lcom/facebook/dolphin/AppActivator;
.super Ljava/lang/Object;
.source "AppActivator.java"


# static fields
.field private static final APP_ACTIVATE_AUTO_PUBLISH_FIELD:Ljava/lang/String; = "Content-Disposition: form-data; name=\"auto_publish\"\n\nfalse"

.field private static final APP_ACTIVATE_BODY:Ljava/lang/String; = "--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"format\"\n\njson\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"sdk\"\n\nandroid\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"migration_bundle\"\n\nfbsdk:20131203\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"event\"\n\n%s\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"%s\"\n\n%s\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\n%s\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"application_package_name\"\n\n%s\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"application_tracking_enabled\"\n\n%s\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\n"

.field private static final APP_ACTIVE_CUSTOM_EVENT_FILE_FIELD:Ljava/lang/String; = "Content-Disposition: form-data; name=\"custom_events_file\"; filename=\"custom_events_file\"\nContent-Type: content/unknown\n\n[{\"_logTime\":%d,\"_eventName\":\"fb_mobile_activate_app\"}]"

.field private static final APP_ACTIVITIES_URL:Ljava/lang/String; = "https://graph.facebook.com/%s/activities?format=json&sdk=android&migration_bundle=%s"

.field private static final APP_ADVERTISER_ID_FIELD_NAME:Ljava/lang/String; = "advertiser_id"

.field private static final APP_ATTRIBUTION_FIELD_NAME:Ljava/lang/String; = "attribution"

.field private static final APP_CUSTOM_APP_EVENTS:Ljava/lang/String; = "CUSTOM_APP_EVENTS"

.field private static final APP_MOBILE_INSTALL_EVENT:Ljava/lang/String; = "MOBILE_APP_INSTALL"

.field private static final APP_SETTINGS_URL:Ljava/lang/String; = "https://graph.facebook.com/%s?format=json&sdk=android&fields=supports_attribution%%2Csupports_implicit_sdk_logging"

.field private static final CONNECTION_TIMEOUT:I = 0x4e20

.field private static final FACEBOOK_ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final FACEBOOK_ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field private static final FACEBOOK_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final FACEBOOK_BOUNDARY_LINE:Ljava/lang/String; = "--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\n"

.field private static final FACEBOOK_SDK_VERSION:Ljava/lang/String; = "fbsdk:20131203"

.field private static final FACEBOOK_SUPPORTS_ATTRIBUTION:Ljava/lang/String; = "supports_attribution"

.field private static final FACEBOOK_SUPPORTS_IMPLICIT_SDK_LOGGING:Ljava/lang/String; = "supports_implicit_sdk_logging"

.field private static final FACEBOOK_USER_AGENT:Ljava/lang/String; = "FBAndroidSDK.3.7.0"

.field private static final HASH_ALGORITHM_SHA1:Ljava/lang/String; = "SHA-1"

.field private static final SOCKET_BUUFER_SIZE:I = 0x2000

.field private static final SOCKET_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String;

.field private static fetchedAppSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/dolphin/AppActivator$FetchedAppSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/facebook/dolphin/AppActivator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/dolphin/AppActivator;->TAG:Ljava/lang/String;

    .line 65
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/dolphin/AppActivator;->FACEBOOK_ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/dolphin/AppActivator;->fetchedAppSettings:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/facebook/dolphin/AppActivator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final activateApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    invoke-static {p0, p1, v1}, Lcom/facebook/dolphin/AppActivator;->uploadActivityEvent(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1, v0}, Lcom/facebook/dolphin/AppActivator;->uploadActivityEvent(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static activateAppAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/facebook/dolphin/AppActivator$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/dolphin/AppActivator$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    .line 198
    return-void
.end method

.method private static createException(Lorg/apache/http/HttpResponse;)Ljava/lang/Exception;
    .locals 4

    .prologue
    .line 369
    const-string v0, ""

    .line 370
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 371
    if-eqz v1, :cond_0

    .line 373
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 380
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 374
    :catch_0
    move-exception v1

    .line 375
    invoke-virtual {v1}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 376
    :catch_1
    move-exception v1

    .line 377
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static createHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 391
    const-string v0, "FBAndroidSDK.3.7.0"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    .line 393
    :cond_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 396
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 400
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 403
    const/16 v0, 0x4e20

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 404
    const v0, 0xea60

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 405
    const/16 v0, 0x2000

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 407
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 409
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 410
    const-string v0, "FBAndroidSDK.3.7.0"

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 412
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    goto :goto_0
.end method

.method private static final varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getActivitiesPostBody(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dolphin/AppActivator;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "advertiser_id"

    .line 250
    invoke-static {p0, p1}, Lcom/facebook/dolphin/AppActivator;->getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 258
    if-nez p2, :cond_1

    .line 259
    const-string v3, "MOBILE_APP_INSTALL"

    .line 260
    const-string v2, "Content-Disposition: form-data; name=\"auto_publish\"\n\nfalse"

    .line 265
    :goto_1
    const-string v5, "--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"format\"\n\njson\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"sdk\"\n\nandroid\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"migration_bundle\"\n\nfbsdk:20131203\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"event\"\n\n%s\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"%s\"\n\n%s\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\n%s\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"application_package_name\"\n\n%s\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\nContent-Disposition: form-data; name=\"application_tracking_enabled\"\n\n%s\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\n"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v11

    aput-object v1, v6, v12

    const/4 v1, 0x2

    aput-object v0, v6, v1

    const/4 v0, 0x3

    aput-object v2, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    return-object v0

    .line 252
    :cond_0
    const-string v1, "attribution"

    goto :goto_0

    .line 262
    :cond_1
    const-string v3, "CUSTOM_APP_EVENTS"

    .line 263
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Content-Disposition: form-data; name=\"custom_events_file\"; filename=\"custom_events_file\"\nContent-Type: content/unknown\n\n[{\"_logTime\":%d,\"_eventName\":\"fb_mobile_activate_app\"}]"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 277
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 278
    sget-object v1, Lcom/facebook/dolphin/AppActivator;->FACEBOOK_ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v6

    .line 287
    :goto_0
    return-object v0

    .line 282
    :cond_1
    const-string v0, "aid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    sget-object v1, Lcom/facebook/dolphin/AppActivator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught unexpected exception in getAttributionId(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 287
    goto :goto_0
.end method

.method public static getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dolphin/AppActivator;->sha1hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 310
    .line 312
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 318
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v1, v0

    .line 321
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    shr-int/lit8 v4, v4, 0x0

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const/4 v0, 0x0

    .line 324
    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/dolphin/AppActivator$FetchedAppSettings;
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/facebook/dolphin/AppActivator;->createHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 331
    invoke-static {p0, p1, v0}, Lcom/facebook/dolphin/AppActivator;->queryAppSettings(Ljava/lang/String;ZLorg/apache/http/client/HttpClient;)Lcom/facebook/dolphin/AppActivator$FetchedAppSettings;

    move-result-object v1

    .line 333
    invoke-static {v0}, Lcom/facebook/dolphin/AppActivator;->releaseHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 335
    return-object v1
.end method

.method private static queryAppSettings(Ljava/lang/String;ZLorg/apache/http/client/HttpClient;)Lcom/facebook/dolphin/AppActivator$FetchedAppSettings;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 342
    if-nez p1, :cond_0

    sget-object v0, Lcom/facebook/dolphin/AppActivator;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Lcom/facebook/dolphin/AppActivator;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/dolphin/AppActivator$FetchedAppSettings;

    .line 365
    :goto_0
    return-object v0

    .line 346
    :cond_0
    const-string v0, "https://graph.facebook.com/%s?format=json&sdk=android&fields=supports_attribution%%2Csupports_implicit_sdk_logging"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Lcom/facebook/dolphin/AppActivator;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 349
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 350
    const-string v0, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v0, "Content-Type"

    const-string v2, "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-interface {p2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 353
    const/16 v1, 0xc8

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 354
    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 355
    new-instance v0, Lcom/facebook/dolphin/AppActivator$FetchedAppSettings;

    const-string v2, "supports_attribution"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "supports_implicit_sdk_logging"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/dolphin/AppActivator$FetchedAppSettings;-><init>(ZZLcom/facebook/dolphin/AppActivator$1;)V

    .line 357
    sget-object v1, Lcom/facebook/dolphin/AppActivator;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    new-instance v0, Lcom/facebook/dolphin/AppActivator$FetchedAppSettings;

    invoke-direct {v0, v4, v4, v5}, Lcom/facebook/dolphin/AppActivator$FetchedAppSettings;-><init>(ZZLcom/facebook/dolphin/AppActivator$1;)V

    goto :goto_0

    .line 359
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/facebook/dolphin/AppActivator;->createException(Lorg/apache/http/HttpResponse;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static releaseHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 418
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 419
    check-cast p0, Landroid/net/http/AndroidHttpClient;

    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 421
    :cond_0
    return-void
.end method

.method private static sha1hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    const-string v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/facebook/dolphin/AppActivator;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static uploadActivityEvent(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 208
    const/4 v2, 0x0

    .line 210
    :try_start_0
    const-string v0, "https://graph.facebook.com/%s/activities?format=json&sdk=android&migration_bundle=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "fbsdk:20131203"

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/facebook/dolphin/AppActivator;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 211
    if-eqz p2, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "access_token"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 215
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/dolphin/AppActivator;->getActivitiesPostBody(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-static {}, Lcom/facebook/dolphin/AppActivator;->createHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 219
    const/4 v4, 0x0

    invoke-static {p1, v4, v2}, Lcom/facebook/dolphin/AppActivator;->queryAppSettings(Ljava/lang/String;ZLorg/apache/http/client/HttpClient;)Lcom/facebook/dolphin/AppActivator$FetchedAppSettings;

    move-result-object v4

    .line 220
    invoke-virtual {v4}, Lcom/facebook/dolphin/AppActivator$FetchedAppSettings;->supportsAttribution()Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Facebook: Install attribution has been disabled on the server."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    invoke-static {v2}, Lcom/facebook/dolphin/AppActivator;->releaseHttpClient(Lorg/apache/http/client/HttpClient;)V

    move v0, v1

    .line 240
    :goto_0
    return v0

    .line 223
    :cond_1
    :try_start_2
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 224
    const-string v0, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v4, v0, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/facebook/dolphin/AppActivator$FacebookFormEntity;

    invoke-direct {v0, v3}, Lcom/facebook/dolphin/AppActivator$FacebookFormEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 226
    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 228
    const/16 v3, 0xc8

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 229
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 233
    sget-object v3, Lcom/facebook/dolphin/AppActivator;->TAG:Ljava/lang/String;

    const-string v4, "activity event: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    invoke-static {v2}, Lcom/facebook/dolphin/AppActivator;->releaseHttpClient(Lorg/apache/http/client/HttpClient;)V

    goto :goto_0

    .line 231
    :cond_2
    :try_start_3
    invoke-static {v0}, Lcom/facebook/dolphin/AppActivator;->createException(Lorg/apache/http/HttpResponse;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/facebook/dolphin/AppActivator;->releaseHttpClient(Lorg/apache/http/client/HttpClient;)V

    throw v0
.end method
