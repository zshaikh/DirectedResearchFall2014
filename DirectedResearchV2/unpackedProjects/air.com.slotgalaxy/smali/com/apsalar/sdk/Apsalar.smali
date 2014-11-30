.class public Lcom/apsalar/sdk/Apsalar;
.super Ljava/lang/Object;
.source "Apsalar.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final ERROR:Z = false

.field private static final FACEBOOK_ATTRIBUTION_ID_URL:Ljava/lang/String; = "content://com.facebook.katana.provider.AttributionIdProvider"

.field protected static FBAppId:Ljava/lang/String;

.field protected static FBCookie:Ljava/lang/String;

.field private static apiKey:Ljava/lang/String;

.field protected static ctx:Landroid/content/Context;

.field static executed_triggers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final hexDigits:[C

.field protected static info:Lcom/apsalar/sdk/ApsalarSessionInfo;

.field static registered_callbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apsalar/sdk/ApsalarItem;",
            ">;"
        }
    .end annotation
.end field

.field static registered_triggers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apsalar/sdk/ApsalarItem;",
            ">;"
        }
    .end annotation
.end field

.field private static secret:Ljava/lang/String;

.field protected static thread:Lcom/apsalar/sdk/ApsalarThread;

.field static triggerActive:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, ""

    .line 36
    sput-object v0, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    .line 37
    sput-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    .line 38
    sput-object v0, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    .line 39
    const-string v0, ""

    sput-object v1, Lcom/apsalar/sdk/Apsalar;->FBAppId:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v1, Lcom/apsalar/sdk/Apsalar;->FBCookie:Ljava/lang/String;

    .line 41
    const-string v0, ""

    sput-object v1, Lcom/apsalar/sdk/Apsalar;->apiKey:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v1, Lcom/apsalar/sdk/Apsalar;->secret:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apsalar/sdk/Apsalar;->registered_callbacks:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apsalar/sdk/Apsalar;->registered_triggers:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/apsalar/sdk/Apsalar;->executed_triggers:Ljava/util/HashSet;

    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/apsalar/sdk/Apsalar;->triggerActive:Ljava/lang/Boolean;

    .line 448
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apsalar/sdk/Apsalar;->hexDigits:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callbackIsKnown(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->registered_callbacks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->registered_callbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static endSession()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 200
    const/4 v1, -0x1

    .line 201
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-wide v2, v0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_2

    .line 202
    new-instance v2, Lcom/apsalar/sdk/ApsalarEndSession;

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v2, v0}, Lcom/apsalar/sdk/ApsalarEndSession;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;)V

    .line 209
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v0, v3, :cond_3

    .line 210
    new-instance v0, Lcom/apsalar/sdk/EndSessionTask;

    invoke-direct {v0}, Lcom/apsalar/sdk/EndSessionTask;-><init>()V

    .line 211
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/apsalar/sdk/ApsalarEvent;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lcom/apsalar/sdk/EndSessionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    :try_start_0
    invoke-virtual {v0}, Lcom/apsalar/sdk/EndSessionTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 225
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 238
    :cond_0
    :goto_1
    :pswitch_0
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    if-eqz v0, :cond_1

    .line 239
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    .line 240
    :cond_1
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iput-wide v5, v0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    .line 246
    :cond_2
    return-void

    .line 214
    :catch_0
    move-exception v0

    move v0, v1

    .line 220
    goto :goto_0

    .line 217
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 222
    :cond_3
    invoke-virtual {v2}, Lcom/apsalar/sdk/ApsalarEndSession;->REST()I

    move-result v0

    goto :goto_0

    .line 231
    :pswitch_1
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    iget-object v0, v0, Lcom/apsalar/sdk/ApsalarThread;->events:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static event(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0}, Lcom/apsalar/sdk/Apsalar;->event(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 250
    return-void
.end method

.method public static event(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 270
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-wide v0, v0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Lcom/apsalar/sdk/ApsalarEvent;

    sget-object v1, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/apsalar/sdk/ApsalarEvent;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    iget-object v1, v1, Lcom/apsalar/sdk/ApsalarThread;->events:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    :cond_0
    return-void
.end method

.method public static varargs event(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 252
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 253
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 255
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    array-length v0, p1

    if-ge v2, v0, :cond_0

    .line 256
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {p0, v1}, Lcom/apsalar/sdk/Apsalar;->event(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_1
    :goto_1
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static eventJSON(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 284
    invoke-static {p0, p1}, Lcom/apsalar/sdk/Apsalar;->event(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 285
    return-void
.end method

.method private static findStartSessionTrigger(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    .line 90
    :goto_0
    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e.apsalar.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/v1/appstore/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_3
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 82
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->executed_triggers:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 85
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v4

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_0

    .line 90
    :cond_4
    new-array v0, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-object v0, v0, Lcom/apsalar/sdk/ApsalarSessionInfo;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 472
    :cond_0
    const-string v0, "None"

    .line 473
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-object v0, v0, Lcom/apsalar/sdk/ApsalarSessionInfo;->deviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method private getFacebookAttributionId()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 541
    .line 543
    :try_start_0
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 551
    :goto_0
    if-nez v0, :cond_0

    move-object v0, v6

    .line 563
    :goto_1
    return-object v0

    .line 545
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 549
    goto :goto_0

    .line 554
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 555
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 557
    :goto_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 562
    goto :goto_1

    .line 558
    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v1, v6

    goto :goto_2
.end method

.method protected static getNewSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-object v0, v0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 479
    :cond_0
    const-string v0, "None"

    .line 480
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-object v0, v0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionId:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static hexDigest([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 453
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 455
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 456
    sget-object v2, Lcom/apsalar/sdk/Apsalar;->hexDigits:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    sget-object v2, Lcom/apsalar/sdk/Apsalar;->hexDigits:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 362
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 364
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-wide v1, v1, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    if-eqz v1, :cond_0

    .line 365
    const-string v1, "[^)]+\\([^]]*\\)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-static {v0}, Lcom/apsalar/sdk/Apsalar;->callbackIsKnown(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    new-instance v1, Lcom/apsalar/sdk/ApsalarRegister;

    const-string v2, "C"

    sget-object v3, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v1, v2, v0, v3}, Lcom/apsalar/sdk/ApsalarRegister;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/apsalar/sdk/ApsalarSessionInfo;)V

    .line 368
    invoke-virtual {v1}, Lcom/apsalar/sdk/ApsalarRegister;->REST()I

    .line 380
    :cond_0
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->registered_callbacks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apsalar/sdk/ApsalarItem;

    .line 381
    if-nez p0, :cond_1

    .line 382
    new-instance v1, Lcom/apsalar/sdk/ApsalarItem;

    invoke-direct {v1, v0, p1}, Lcom/apsalar/sdk/ApsalarItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    sget-object v2, Lcom/apsalar/sdk/Apsalar;->registered_callbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :goto_0
    return-void

    .line 386
    :cond_1
    iput-object p1, p0, Lcom/apsalar/sdk/ApsalarItem;->val:Ljava/lang/Object;

    .line 387
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/apsalar/sdk/ApsalarItem;->val:Ljava/lang/Object;

    instance-of v1, v1, Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback is a Webview "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static registerTrigger(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 396
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-wide v0, v0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    if-eqz v0, :cond_0

    .line 397
    invoke-static {p0}, Lcom/apsalar/sdk/Apsalar;->triggerIsKnown(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/apsalar/sdk/ApsalarRegister;

    const-string v1, "T"

    sget-object v2, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v0, v1, p0, v2}, Lcom/apsalar/sdk/ApsalarRegister;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/apsalar/sdk/ApsalarSessionInfo;)V

    .line 399
    invoke-virtual {v0}, Lcom/apsalar/sdk/ApsalarRegister;->REST()I

    .line 402
    :cond_0
    new-instance v0, Lcom/apsalar/sdk/ApsalarItem;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/apsalar/sdk/ApsalarItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->registered_triggers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    return-void
.end method

.method private static resetCaches()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->registered_callbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 56
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->registered_triggers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->executed_triggers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 58
    return-void
.end method

.method public static restartSession()V
    .locals 3

    .prologue
    .line 190
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/apsalar/sdk/Apsalar;->apiKey:Ljava/lang/String;

    sget-object v2, Lcom/apsalar/sdk/Apsalar;->secret:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/apsalar/sdk/Apsalar;->restartSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method public static restartSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v0, :cond_0

    .line 179
    sput-object v1, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    .line 180
    sput-object v1, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    .line 182
    invoke-static {p0, p1, p2}, Lcom/apsalar/sdk/Apsalar;->startSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method public static retrieveFBCookie(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 510
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apsalar_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 512
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 513
    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 514
    if-eqz v3, :cond_0

    .line 516
    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 519
    :cond_1
    return-object v1
.end method

.method public static saveFBCookie(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
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
    .line 522
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apsalar_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 524
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 525
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 527
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 528
    if-eqz v0, :cond_0

    .line 530
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 534
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 535
    return-void
.end method

.method public static sendFBInstall()V
    .locals 4

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 486
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/apsalar/sdk/Apsalar;->retrieveFBCookie(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_0

    const-string v0, "fb_cookie"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    :cond_0
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->FBAppId:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 493
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 494
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 495
    sget-object v3, Lcom/apsalar/sdk/Apsalar;->FBAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 497
    :try_start_0
    const-string v3, "fb_app_attribution"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    const-string v0, "fb_app_ids"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    const-string v0, "__FBInstall"

    invoke-static {v0, v1}, Lcom/apsalar/sdk/Apsalar;->event(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 506
    :cond_1
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendReferrerInstall()V
    .locals 6

    .prologue
    const-string v5, "referrer"

    .line 322
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/apsalar/sdk/ApsalarReceiver;->retrieveCSIReferrer(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 327
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 328
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    const-string v4, "referrer"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    :try_start_0
    const-string v4, "referrer"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 342
    const-string v0, "__InstallReferrer"

    invoke-static {v0, v2}, Lcom/apsalar/sdk/Apsalar;->event(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 344
    :cond_2
    return-void
.end method

.method public static setAge(I)V
    .locals 4

    .prologue
    .line 311
    .line 312
    if-lez p0, :cond_0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    .line 313
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    const-string v1, "__age__"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/apsalar/sdk/Apsalar;->event(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :cond_0
    return-void
.end method

.method public static setFBAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 439
    if-eqz p0, :cond_0

    .line 440
    sput-object p0, Lcom/apsalar/sdk/Apsalar;->FBAppId:Ljava/lang/String;

    .line 442
    :cond_0
    return-void
.end method

.method public static setGender(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 300
    if-eqz p0, :cond_1

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    const-string v0, "__gender__"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/apsalar/sdk/Apsalar;->event(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_1
    return-void
.end method

.method private static setInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 94
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 95
    sput-object p0, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    .line 96
    sput-object p1, Lcom/apsalar/sdk/Apsalar;->apiKey:Ljava/lang/String;

    .line 97
    sput-object p2, Lcom/apsalar/sdk/Apsalar;->secret:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/apsalar/sdk/ApsalarSessionInfo;

    sget-object v1, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/apsalar/sdk/Apsalar;->apiKey:Ljava/lang/String;

    sget-object v3, Lcom/apsalar/sdk/Apsalar;->secret:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/apsalar/sdk/ApsalarSessionInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    .line 100
    :cond_0
    return-void
.end method

.method public static setTimeouts(I)V
    .locals 3

    .prologue
    .line 463
    sget-object v0, Lcom/apsalar/sdk/ApsalarEvent;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 465
    sget-object v0, Lcom/apsalar/sdk/ApsalarEvent;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 467
    return-void
.end method

.method public static startSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "fb_cookie"

    .line 105
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_7

    .line 106
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/apsalar/sdk/Apsalar;->findStartSessionTrigger(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v1

    .line 107
    sget-object v2, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-nez v2, :cond_0

    .line 108
    invoke-static {p0, p1, p2}, Lcom/apsalar/sdk/Apsalar;->setInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    sget-object v2, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    if-nez v2, :cond_1

    .line 110
    sget-object v2, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    sget-object v3, Lcom/apsalar/sdk/Apsalar;->apiKey:Ljava/lang/String;

    sget-object v4, Lcom/apsalar/sdk/Apsalar;->secret:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/apsalar/sdk/ApsalarThread;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/apsalar/sdk/ApsalarThread;

    move-result-object v2

    sput-object v2, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    .line 111
    :cond_1
    sget-object v2, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-wide v2, v2, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_5

    sget-object v2, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    if-eqz v2, :cond_5

    .line 112
    sget-object v2, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    .line 114
    array-length v2, v1

    if-lez v2, :cond_4

    aget-object v2, v1, v5

    if-eqz v2, :cond_4

    .line 115
    new-instance v2, Lcom/apsalar/sdk/LoadTriggerTask;

    sget-object v3, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v2, v3, p0}, Lcom/apsalar/sdk/LoadTriggerTask;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;Landroid/content/Context;)V

    .line 116
    new-instance v3, Lcom/apsalar/sdk/ApsalarSession;

    sget-object v4, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v3, v4, v2, v1}, Lcom/apsalar/sdk/ApsalarSession;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;Lcom/apsalar/sdk/LoadTriggerTask;[Ljava/lang/String;)V

    move-object v1, v3

    .line 121
    :goto_0
    new-instance v2, Lcom/apsalar/sdk/Apsalar;

    invoke-direct {v2}, Lcom/apsalar/sdk/Apsalar;-><init>()V

    .line 122
    invoke-direct {v2}, Lcom/apsalar/sdk/Apsalar;->getFacebookAttributionId()Ljava/lang/String;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_2

    .line 126
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 127
    const-string v4, "fb_cookie"

    invoke-interface {v3, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p0, v3}, Lcom/apsalar/sdk/Apsalar;->saveFBCookie(Landroid/content/Context;Ljava/util/Map;)V

    .line 131
    :cond_2
    sget-object v2, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    iget-object v2, v2, Lcom/apsalar/sdk/ApsalarThread;->events:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    :cond_3
    :goto_1
    return-void

    .line 118
    :cond_4
    new-instance v1, Lcom/apsalar/sdk/ApsalarSession;

    sget-object v2, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v1, v2}, Lcom/apsalar/sdk/ApsalarSession;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;)V

    goto :goto_0

    .line 138
    :cond_5
    array-length v2, v1

    if-lez v2, :cond_3

    aget-object v2, v1, v5

    if-eqz v2, :cond_3

    .line 139
    new-instance v2, Lcom/apsalar/sdk/LoadTriggerTask;

    sget-object v3, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v2, v3, p0}, Lcom/apsalar/sdk/LoadTriggerTask;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;Landroid/content/Context;)V

    .line 140
    array-length v3, v1

    if-le v3, v6, :cond_6

    .line 141
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aget-object v4, v1, v5

    aput-object v4, v3, v5

    aget-object v1, v1, v6

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Lcom/apsalar/sdk/LoadTriggerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 143
    :cond_6
    new-array v3, v6, [Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/apsalar/sdk/LoadTriggerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 147
    :cond_7
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-nez v1, :cond_8

    .line 148
    invoke-static {p0, p1, p2}, Lcom/apsalar/sdk/Apsalar;->setInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_8
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    if-nez v1, :cond_9

    .line 150
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/apsalar/sdk/Apsalar;->apiKey:Ljava/lang/String;

    sget-object v3, Lcom/apsalar/sdk/Apsalar;->secret:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/apsalar/sdk/ApsalarThread;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/apsalar/sdk/ApsalarThread;

    move-result-object v1

    sput-object v1, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    .line 151
    :cond_9
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-wide v1, v1, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_3

    sget-object v1, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    if-eqz v1, :cond_3

    .line 152
    sget-object v1, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    .line 154
    new-instance v1, Lcom/apsalar/sdk/ApsalarSession;

    sget-object v2, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v1, v2}, Lcom/apsalar/sdk/ApsalarSession;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;)V

    .line 156
    new-instance v2, Lcom/apsalar/sdk/Apsalar;

    invoke-direct {v2}, Lcom/apsalar/sdk/Apsalar;-><init>()V

    .line 157
    invoke-direct {v2}, Lcom/apsalar/sdk/Apsalar;->getFacebookAttributionId()Ljava/lang/String;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_a

    .line 161
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 162
    const-string v4, "fb_cookie"

    invoke-interface {v3, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {p0, v3}, Lcom/apsalar/sdk/Apsalar;->saveFBCookie(Landroid/content/Context;Ljava/util/Map;)V

    .line 166
    :cond_a
    sget-object v2, Lcom/apsalar/sdk/Apsalar;->thread:Lcom/apsalar/sdk/ApsalarThread;

    iget-object v2, v2, Lcom/apsalar/sdk/ApsalarThread;->events:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1
.end method

.method public static survey(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .prologue
    const-string v4, "survey"

    .line 288
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-wide v0, v0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->triggerActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/apsalar/sdk/Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    const-string v1, "op"

    const-string v2, "survey"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "survey"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 297
    :cond_0
    return-void
.end method

.method public static trigger(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 408
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iget-wide v0, v0, Lcom/apsalar/sdk/ApsalarSessionInfo;->sessionStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->registered_triggers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 410
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->registered_triggers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apsalar/sdk/ApsalarItem;

    .line 411
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/apsalar/sdk/ApsalarItem;->connected:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/apsalar/sdk/ApsalarItem;->registered:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    new-instance v1, Lcom/apsalar/sdk/LoadTriggerTask;

    sget-object v2, Lcom/apsalar/sdk/Apsalar;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v1, v2, p0}, Lcom/apsalar/sdk/LoadTriggerTask;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;Landroid/content/Context;)V

    .line 413
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/apsalar/sdk/ApsalarItem;->name:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/apsalar/sdk/LoadTriggerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    if-nez v0, :cond_2

    .line 419
    invoke-static {p1}, Lcom/apsalar/sdk/Apsalar;->registerTrigger(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v0, v0, Lcom/apsalar/sdk/ApsalarItem;->connected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private static triggerIsKnown(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->registered_triggers:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/apsalar/sdk/Apsalar;->registered_triggers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
