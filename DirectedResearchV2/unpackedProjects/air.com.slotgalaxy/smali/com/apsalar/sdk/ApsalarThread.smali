.class Lcom/apsalar/sdk/ApsalarThread;
.super Ljava/lang/Thread;
.source "ApThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apsalar/sdk/ApsalarThread$State;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_MAX:I = 0x3e8

.field private static final HEARTBEAT_INTERVAL_BACKOFF:I = 0x2

.field private static final HEARTBEAT_INTERVAL_MAX:I = 0x1499700

.field protected static final HEARTBEAT_INTERVAL_MIN:I = 0x493e0

.field protected static final QUEUE_SIZE_MAX:I = 0x2710

.field private static final RETRY_INTERVAL_BACKOFF:I = 0x2

.field private static final RETRY_INTERVAL_MAX:I = 0x493e0

.field private static final RETRY_INTERVAL_MIN:I = 0x3a98

.field private static apiKey:Ljava/lang/String; = null

.field private static buffer:Landroid/database/sqlite/SQLiteDatabase; = null

.field private static bufferSize:I = 0x0

.field private static final countEventsSQL:Ljava/lang/String; = "SELECT count(serial) FROM backlog"

.field private static ctx:Landroid/content/Context; = null

.field private static dbOpener:Landroid/database/sqlite/SQLiteOpenHelper; = null

.field private static heartbeatInterval:I = 0x0

.field private static lastEventTime:J = 0x0L

.field private static retryInterval:I = 0x0

.field private static secret:Ljava/lang/String; = null

.field private static final selectEventsSQL:Ljava/lang/String; = "SELECT serial, session_json, event_json FROM backlog ORDER BY serial"

.field private static singleton:Lcom/apsalar/sdk/ApsalarThread; = null

.field private static final tableBacklogSQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS backlog (serial INTEGER PRIMARY KEY,session_json TEXT,event_json TEXT)"

.field private static final useBuffering:Z = true


# instance fields
.field protected events:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/apsalar/sdk/ApsalarAPI;",
            ">;"
        }
    .end annotation
.end field

.field protected lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    sput-object v2, Lcom/apsalar/sdk/ApsalarThread;->singleton:Lcom/apsalar/sdk/ApsalarThread;

    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/apsalar/sdk/ApsalarThread;->bufferSize:I

    .line 52
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/apsalar/sdk/ApsalarThread;->lastEventTime:J

    .line 58
    const v0, 0x493e0

    sput v0, Lcom/apsalar/sdk/ApsalarThread;->heartbeatInterval:I

    .line 64
    const/16 v0, 0x3a98

    sput v0, Lcom/apsalar/sdk/ApsalarThread;->retryInterval:I

    .line 88
    sput-object v2, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    sput-object v2, Lcom/apsalar/sdk/ApsalarThread;->dbOpener:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    .line 85
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarThread;->events:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 156
    return-void
.end method

.method protected static bufferEvent(Lcom/apsalar/sdk/ApsalarAPI;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 480
    sget-object v1, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 481
    sget v1, Lcom/apsalar/sdk/ApsalarThread;->bufferSize:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    move v1, v5

    .line 516
    :goto_0
    return v1

    .line 488
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 489
    const-string v3, "session_json"

    move-object v0, p0

    check-cast v0, Lcom/apsalar/sdk/ApsalarEvent;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/apsalar/sdk/ApsalarEvent;->getInfo()Lcom/apsalar/sdk/ApsalarSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apsalar/sdk/ApsalarSessionInfo;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v1, "event_json"

    check-cast p0, Lcom/apsalar/sdk/ApsalarJSON;

    invoke-interface {p0}, Lcom/apsalar/sdk/ApsalarJSON;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :try_start_0
    sget-object v1, Lcom/apsalar/sdk/ApsalarThread;->dbOpener:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    .line 496
    sget-object v1, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "backlog"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    sget v1, Lcom/apsalar/sdk/ApsalarThread;->bufferSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/apsalar/sdk/ApsalarThread;->bufferSize:I

    .line 511
    const/4 v1, 0x1

    goto :goto_0

    .line 498
    :catch_0
    move-exception v1

    .line 502
    sput-object v6, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    move v1, v5

    .line 503
    goto :goto_0

    :cond_1
    move v1, v5

    .line 516
    goto :goto_0
.end method

.method private buffering()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const v7, 0x493e0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 395
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->dbOpener:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 443
    :goto_0
    return v0

    .line 400
    :cond_1
    :try_start_0
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->dbOpener:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    .line 401
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT count(serial) FROM backlog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 413
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 414
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/apsalar/sdk/ApsalarThread;->bufferSize:I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/apsalar/sdk/ApsalarThread;->lastEventTime:J

    .line 434
    :cond_2
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/apsalar/sdk/ApsalarThread;->events:Ljava/util/concurrent/ArrayBlockingQueue;

    sget v1, Lcom/apsalar/sdk/ApsalarThread;->retryInterval:I

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/apsalar/sdk/ApsalarThread;->lastEventTime:J

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apsalar/sdk/ApsalarAPI;

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/apsalar/sdk/ApsalarThread;->lastEventTime:J

    .line 441
    if-eqz v0, :cond_4

    .line 442
    instance-of v1, v0, Lcom/apsalar/sdk/ApsalarRetry;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_3

    .line 443
    const/4 v0, 0x1

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 408
    sput-object v5, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    move v0, v4

    .line 409
    goto :goto_0

    .line 416
    :catch_1
    move-exception v1

    .line 419
    sput v3, Lcom/apsalar/sdk/ApsalarThread;->bufferSize:I

    goto :goto_1

    .line 445
    :cond_3
    :try_start_3
    instance-of v1, v0, Lcom/apsalar/sdk/ApsalarJSON;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/apsalar/sdk/ApsalarThread;->bufferEvent(Lcom/apsalar/sdk/ApsalarAPI;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 453
    :cond_4
    const-wide/high16 v0, 0x3ff0000000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 454
    sget v2, Lcom/apsalar/sdk/ApsalarThread;->retryInterval:I

    int-to-double v2, v2

    .line 455
    const-wide/high16 v4, 0x4000000000000000L

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 456
    double-to-int v0, v0

    sput v0, Lcom/apsalar/sdk/ApsalarThread;->retryInterval:I

    .line 461
    sget v0, Lcom/apsalar/sdk/ApsalarThread;->retryInterval:I

    if-le v0, v7, :cond_5

    .line 462
    const v0, 0x493e0

    sput v0, Lcom/apsalar/sdk/ApsalarThread;->retryInterval:I

    .line 467
    :cond_5
    invoke-static {}, Lcom/apsalar/sdk/ApsalarRetryThread;->getInstance()Lcom/apsalar/sdk/ApsalarRetryThread;

    move-result-object v0

    iget-object v0, v0, Lcom/apsalar/sdk/ApsalarRetryThread;->events:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v1, Lcom/apsalar/sdk/ApsalarRetry;

    invoke-direct {v1}, Lcom/apsalar/sdk/ApsalarRetry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 470
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected static getInstance()Lcom/apsalar/sdk/ApsalarThread;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->singleton:Lcom/apsalar/sdk/ApsalarThread;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->singleton:Lcom/apsalar/sdk/ApsalarThread;

    goto :goto_0
.end method

.method protected static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/apsalar/sdk/ApsalarThread;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v0, "UTF-8"

    .line 99
    sput-object p0, Lcom/apsalar/sdk/ApsalarThread;->ctx:Landroid/content/Context;

    .line 101
    sput-object p1, Lcom/apsalar/sdk/ApsalarThread;->apiKey:Ljava/lang/String;

    .line 102
    sput-object p2, Lcom/apsalar/sdk/ApsalarThread;->secret:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, ""

    .line 108
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 109
    sget-object v3, Lcom/apsalar/sdk/ApsalarThread;->secret:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 111
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/apsalar/sdk/Apsalar;->hexDigest([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 127
    :goto_0
    :try_start_1
    sget-object v1, Lcom/apsalar/sdk/ApsalarThread;->dbOpener:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Lcom/apsalar/sdk/ApsalarSQLiteOpenHelper;

    sget-object v2, Lcom/apsalar/sdk/ApsalarThread;->ctx:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Apsalar.sqlite_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/apsalar/sdk/ApsalarSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/apsalar/sdk/ApsalarThread;->dbOpener:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 129
    :cond_0
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->dbOpener:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    .line 130
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS backlog (serial INTEGER PRIMARY KEY,session_json TEXT,event_json TEXT)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4

    .line 144
    :goto_1
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->singleton:Lcom/apsalar/sdk/ApsalarThread;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Lcom/apsalar/sdk/ApsalarThread;

    invoke-direct {v0}, Lcom/apsalar/sdk/ApsalarThread;-><init>()V

    sput-object v0, Lcom/apsalar/sdk/ApsalarThread;->singleton:Lcom/apsalar/sdk/ApsalarThread;

    .line 146
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->singleton:Lcom/apsalar/sdk/ApsalarThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apsalar/sdk/ApsalarThread;->setDaemon(Z)V

    .line 147
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->singleton:Lcom/apsalar/sdk/ApsalarThread;

    const-string v1, "ApsalarThread"

    invoke-virtual {v0, v1}, Lcom/apsalar/sdk/ApsalarThread;->setName(Ljava/lang/String;)V

    .line 150
    :cond_1
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->singleton:Lcom/apsalar/sdk/ApsalarThread;

    invoke-virtual {v0}, Lcom/apsalar/sdk/ApsalarThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->singleton:Lcom/apsalar/sdk/ApsalarThread;

    invoke-virtual {v0}, Lcom/apsalar/sdk/ApsalarThread;->start()V

    .line 153
    :cond_2
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->singleton:Lcom/apsalar/sdk/ApsalarThread;

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 124
    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 124
    goto :goto_0

    .line 121
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 132
    :catch_3
    move-exception v0

    .line 133
    sput-object v5, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 137
    :catch_4
    move-exception v0

    .line 138
    sput-object v5, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1
.end method

.method private nominal()I
    .locals 9

    .prologue
    const v8, 0x1499700

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/apsalar/sdk/ApsalarThread;->lastEventTime:J

    .line 324
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/apsalar/sdk/ApsalarThread;->events:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-nez v2, :cond_4

    const-wide v2, 0x7fffffffffffffffL

    :goto_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apsalar/sdk/ApsalarAPI;

    .line 331
    if-nez v1, :cond_8

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    if-eqz v2, :cond_8

    .line 334
    new-instance v1, Lcom/apsalar/sdk/ApsalarHeartbeat;

    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v1, v2}, Lcom/apsalar/sdk/ApsalarHeartbeat;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;)V

    .line 335
    sget v2, Lcom/apsalar/sdk/ApsalarThread;->heartbeatInterval:I

    mul-int/lit8 v2, v2, 0x2

    sput v2, Lcom/apsalar/sdk/ApsalarThread;->heartbeatInterval:I

    .line 336
    sget v2, Lcom/apsalar/sdk/ApsalarThread;->heartbeatInterval:I

    if-le v2, v8, :cond_1

    .line 337
    const v2, 0x1499700

    sput v2, Lcom/apsalar/sdk/ApsalarThread;->heartbeatInterval:I

    .line 339
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/apsalar/sdk/ApsalarThread;->lastEventTime:J

    move-object v2, v1

    .line 342
    :goto_2
    if-eqz v2, :cond_5

    .line 343
    instance-of v1, v2, Lcom/apsalar/sdk/ApsalarSession;

    if-eqz v1, :cond_2

    .line 346
    move-object v0, v2

    check-cast v0, Lcom/apsalar/sdk/ApsalarEvent;

    move-object v1, v0

    iget-object v1, v1, Lcom/apsalar/sdk/ApsalarEvent;->info:Lcom/apsalar/sdk/ApsalarSessionInfo;

    iput-object v1, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    .line 347
    const v1, 0x493e0

    sput v1, Lcom/apsalar/sdk/ApsalarThread;->heartbeatInterval:I

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/apsalar/sdk/ApsalarThread;->lastEventTime:J

    .line 351
    :cond_2
    invoke-interface {v2}, Lcom/apsalar/sdk/ApsalarAPI;->REST()I

    move-result v1

    .line 354
    move-object v0, v2

    check-cast v0, Lcom/apsalar/sdk/ApsalarEvent;

    move-object v3, v0

    iget-object v3, v3, Lcom/apsalar/sdk/ApsalarEvent;->returnDataJSON:Lorg/json/JSONObject;

    .line 355
    const/4 v4, 0x0

    .line 356
    if-eqz v3, :cond_7

    .line 357
    const-string v4, "first_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    .line 358
    :goto_3
    if-eqz v3, :cond_3

    .line 361
    invoke-static {}, Lcom/apsalar/sdk/Apsalar;->sendFBInstall()V

    .line 362
    invoke-static {}, Lcom/apsalar/sdk/Apsalar;->sendReferrerInstall()V

    .line 368
    :cond_3
    :goto_4
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    instance-of v1, v2, Lcom/apsalar/sdk/ApsalarJSON;

    if-eqz v1, :cond_0

    .line 371
    sget-object v1, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_6

    .line 372
    invoke-static {v2}, Lcom/apsalar/sdk/ApsalarThread;->bufferEvent(Lcom/apsalar/sdk/ApsalarAPI;)Z

    .line 373
    const/4 v1, 0x3

    return v1

    .line 324
    :cond_4
    sget v2, Lcom/apsalar/sdk/ApsalarThread;->heartbeatInterval:I

    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/apsalar/sdk/ApsalarThread;->lastEventTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    goto :goto_1

    .line 366
    :cond_5
    const/4 v1, -0x1

    goto :goto_4

    .line 377
    :cond_6
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v3, 0x2710

    invoke-direct {v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 379
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 380
    iget-object v2, p0, Lcom/apsalar/sdk/ApsalarThread;->events:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 381
    iput-object v1, p0, Lcom/apsalar/sdk/ApsalarThread;->events:Ljava/util/concurrent/ArrayBlockingQueue;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 387
    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_7
    move v3, v4

    goto :goto_3

    :cond_8
    move-object v2, v1

    goto :goto_2

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private recovery()I
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 182
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->dbOpener:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    move v0, v10

    .line 310
    :goto_0
    return v0

    .line 191
    :cond_1
    :try_start_0
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->dbOpener:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    .line 192
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT serial, session_json, event_json FROM backlog ORDER BY serial"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v0, v11

    move-object v2, v11

    .line 211
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 214
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 215
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v5

    .line 218
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_7

    .line 219
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8

    .line 220
    :try_start_4
    const-string v0, "eventType"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v0

    move v4, v0

    move-object v0, v2

    move-object v2, v6

    :goto_2
    move-object v12, v0

    move v0, v4

    move v4, v3

    move-object v3, v2

    move-object v2, v12

    .line 237
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 278
    :pswitch_0
    const/4 v0, -0x1

    .line 282
    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 289
    :try_start_5
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->dbOpener:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    .line 290
    sget-object v0, Lcom/apsalar/sdk/ApsalarThread;->buffer:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "backlog"

    const-string v6, "serial = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v0, v2

    move-object v2, v3

    .line 303
    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    move v0, v10

    .line 198
    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    const-string v0, "Apsalar SDK/Thread"

    const-string v1, "database SQLiteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 202
    goto :goto_0

    .line 222
    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v2, v6

    :goto_5
    move v4, v9

    .line 223
    goto :goto_2

    .line 228
    :catch_3
    move-exception v0

    move-object v0, v2

    move-object v2, v6

    :goto_6
    move-object v3, v2

    move v4, v9

    move-object v2, v0

    move v0, v9

    .line 232
    goto :goto_3

    .line 241
    :pswitch_1
    new-instance v0, Lcom/apsalar/sdk/ApsalarSessionInfo;

    sget-object v5, Lcom/apsalar/sdk/ApsalarThread;->apiKey:Ljava/lang/String;

    sget-object v6, Lcom/apsalar/sdk/ApsalarThread;->secret:Ljava/lang/String;

    invoke-direct {v0, v3, v5, v6}, Lcom/apsalar/sdk/ApsalarSessionInfo;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    .line 242
    const v0, 0x493e0

    sput v0, Lcom/apsalar/sdk/ApsalarThread;->heartbeatInterval:I

    .line 243
    new-instance v0, Lcom/apsalar/sdk/ApsalarSession;

    iget-object v5, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v0, v5, v2}, Lcom/apsalar/sdk/ApsalarSession;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;Lorg/json/JSONObject;)V

    .line 244
    invoke-interface {v0}, Lcom/apsalar/sdk/ApsalarAPI;->REST()I

    move-result v5

    .line 248
    check-cast v0, Lcom/apsalar/sdk/ApsalarEvent;

    iget-object v0, v0, Lcom/apsalar/sdk/ApsalarEvent;->returnDataJSON:Lorg/json/JSONObject;

    .line 250
    if-eqz v0, :cond_4

    .line 251
    const-string v6, "first_time"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    .line 252
    :goto_7
    if-eqz v0, :cond_3

    .line 255
    invoke-static {}, Lcom/apsalar/sdk/Apsalar;->sendFBInstall()V

    .line 256
    invoke-static {}, Lcom/apsalar/sdk/Apsalar;->sendReferrerInstall()V

    move v0, v5

    goto :goto_4

    .line 263
    :pswitch_2
    new-instance v0, Lcom/apsalar/sdk/ApsalarSessionInfo;

    sget-object v5, Lcom/apsalar/sdk/ApsalarThread;->apiKey:Ljava/lang/String;

    sget-object v6, Lcom/apsalar/sdk/ApsalarThread;->secret:Ljava/lang/String;

    invoke-direct {v0, v3, v5, v6}, Lcom/apsalar/sdk/ApsalarSessionInfo;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    .line 264
    new-instance v0, Lcom/apsalar/sdk/ApsalarEvent;

    iget-object v5, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v0, v5, v2}, Lcom/apsalar/sdk/ApsalarEvent;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;Lorg/json/JSONObject;)V

    .line 265
    invoke-interface {v0}, Lcom/apsalar/sdk/ApsalarAPI;->REST()I

    move-result v0

    goto/16 :goto_4

    .line 271
    :pswitch_3
    new-instance v0, Lcom/apsalar/sdk/ApsalarSessionInfo;

    sget-object v5, Lcom/apsalar/sdk/ApsalarThread;->apiKey:Ljava/lang/String;

    sget-object v6, Lcom/apsalar/sdk/ApsalarThread;->secret:Ljava/lang/String;

    invoke-direct {v0, v3, v5, v6}, Lcom/apsalar/sdk/ApsalarSessionInfo;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    .line 272
    new-instance v0, Lcom/apsalar/sdk/ApsalarEndSession;

    iget-object v5, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    invoke-direct {v0, v5, v2}, Lcom/apsalar/sdk/ApsalarEndSession;-><init>(Lcom/apsalar/sdk/ApsalarSessionInfo;Lorg/json/JSONObject;)V

    .line 273
    invoke-interface {v0}, Lcom/apsalar/sdk/ApsalarAPI;->REST()I

    move-result v0

    .line 274
    iput-object v11, p0, Lcom/apsalar/sdk/ApsalarThread;->lastSessionInfo:Lcom/apsalar/sdk/ApsalarSessionInfo;

    goto/16 :goto_4

    .line 284
    :pswitch_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 285
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 292
    :catch_4
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    .line 303
    goto/16 :goto_1

    .line 296
    :catch_5
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    .line 303
    goto/16 :goto_1

    .line 300
    :catch_6
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    .line 304
    goto/16 :goto_1

    .line 308
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 310
    goto/16 :goto_0

    .line 228
    :catch_7
    move-exception v3

    goto/16 :goto_6

    :catch_8
    move-exception v2

    move-object v2, v6

    goto/16 :goto_6

    .line 222
    :catch_9
    move-exception v4

    goto/16 :goto_5

    :catch_a
    move-exception v2

    move-object v2, v6

    goto/16 :goto_5

    :cond_3
    move v0, v5

    goto/16 :goto_4

    :cond_4
    move v0, v9

    goto :goto_7

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 282
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    .line 166
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0
    invoke-direct {p0}, Lcom/apsalar/sdk/ApsalarThread;->recovery()I

    move-result v0

    goto :goto_0

    .line 172
    :pswitch_1
    invoke-direct {p0}, Lcom/apsalar/sdk/ApsalarThread;->nominal()I

    move-result v0

    goto :goto_0

    .line 175
    :pswitch_2
    invoke-direct {p0}, Lcom/apsalar/sdk/ApsalarThread;->buffering()I

    move-result v0

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
