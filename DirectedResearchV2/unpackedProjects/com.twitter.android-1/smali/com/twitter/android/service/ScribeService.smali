.class public Lcom/twitter/android/service/ScribeService;
.super Landroid/app/IntentService;


# static fields
.field private static final a:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B

.field private static final i:Ljava/util/HashMap;


# instance fields
.field private j:Lcom/twitter/android/network/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "ScribeService"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/service/ScribeService;->a:Z

    const-string v0, "log_interval"

    sput-object v0, Lcom/twitter/android/service/ScribeService;->b:Ljava/lang/String;

    const-string v0, "log_enabled"

    sput-object v0, Lcom/twitter/android/service/ScribeService;->c:Ljava/lang/String;

    const-string v0, "log_last_flush_request"

    sput-object v0, Lcom/twitter/android/service/ScribeService;->d:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "log"

    aput-object v1, v0, v3

    sput-object v0, Lcom/twitter/android/service/ScribeService;->e:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/android/service/ScribeService;->f:[B

    new-array v0, v2, [B

    const/16 v1, 0x2c

    aput-byte v1, v0, v3

    sput-object v0, Lcom/twitter/android/service/ScribeService;->g:[B

    new-array v0, v2, [B

    const/16 v1, 0x5d

    aput-byte v1, v0, v3

    sput-object v0, Lcom/twitter/android/service/ScribeService;->h:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/service/ScribeService;->i:Ljava/util/HashMap;

    const-string v1, "LOG"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/ScribeService;->i:Ljava/util/HashMap;

    const-string v1, "FLUSH"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/twitter/android/service/ScribeService;->i:Ljava/util/HashMap;

    const-string v1, "RAW"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 1
        0x6ct
        0x6ft
        0x67t
        0x5bt
        0x5dt
        0x3dt
        0x5bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ScribeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 10

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/service/ScribeService;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/service/ScribeService;->b:Ljava/lang/String;

    const-wide/32 v3, 0xea60

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v4, Lcom/twitter/android/service/ScribeService;->d:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v2

    cmp-long v4, v8, v4

    if-lez v4, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v4, Lcom/twitter/android/service/ScribeService;->d:Ljava/lang/String;

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/twitter/android/service/f;

    invoke-direct {v4, v0}, Lcom/twitter/android/service/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;JLcom/twitter/android/network/a;)V
    .locals 8

    invoke-virtual {p3}, Lcom/twitter/android/network/a;->d()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/twitter/android/network/a;->c()[Lcom/twitter/android/network/e;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    iget v5, v4, Lcom/twitter/android/network/e;->a:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    new-instance v5, Lcom/twitter/android/service/ScribeLog;

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->o:Lcom/twitter/android/service/ScribeEvent;

    const/4 v7, 0x0

    invoke-direct {v5, p1, p2, v6, v7}, Lcom/twitter/android/service/ScribeLog;-><init>(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    iput-object v1, v5, Lcom/twitter/android/service/ScribeLog;->url:Ljava/lang/String;

    iget v6, v4, Lcom/twitter/android/network/e;->a:I

    iput v6, v5, Lcom/twitter/android/service/ScribeLog;->statusCode:I

    iget-wide v6, v4, Lcom/twitter/android/network/e;->c:J

    iput-wide v6, v5, Lcom/twitter/android/service/ScribeLog;->durationMs:J

    invoke-static {p0, v5}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/twitter/android/service/ScribeService;->b(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/ScribeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "logs"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;ZJ)V
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/service/ScribeService;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/service/ScribeService;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Landroid/content/Context;[B)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/ScribeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private a([BJ)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0, p2, p3}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/provider/al;->a([B)J

    invoke-static {p0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private a([BLcom/twitter/android/network/c;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v0, "https://scribe.twitter.com/scribe"

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    if-eqz p2, :cond_1

    new-instance v0, Lcom/twitter/android/network/h;

    iget-object v2, p0, Lcom/twitter/android/service/ScribeService;->j:Lcom/twitter/android/network/b;

    new-instance v3, Lcom/twitter/android/network/i;

    invoke-direct {v3, p2}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/c;)V

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/twitter/android/network/h;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/i;Ljava/io/OutputStream;)V

    :goto_0
    invoke-static {p0}, Lcom/twitter/android/network/d;->a(Landroid/content/Context;)Lcom/twitter/android/network/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/network/d;->a(Lcom/twitter/android/network/a;)V

    invoke-virtual {v0}, Lcom/twitter/android/network/a;->a()Lcom/twitter/android/network/a;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/twitter/android/network/a;

    iget-object v2, p0, Lcom/twitter/android/service/ScribeService;->j:Lcom/twitter/android/network/b;

    invoke-direct {v0, v2, v1, v4}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/b;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private a(J)[B
    .locals 9

    const/4 v3, 0x0

    invoke-static {p0, p1, p2}, Lcom/twitter/android/provider/al;->a(Landroid/content/Context;J)Lcom/twitter/android/provider/al;

    move-result-object v8

    invoke-virtual {v8}, Lcom/twitter/android/provider/al;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "scribe"

    sget-object v2, Lcom/twitter/android/service/ScribeService;->e:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Lcom/twitter/android/service/ScribeService;->f:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/twitter/android/service/ScribeService;->g:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v8}, Lcom/twitter/android/provider/al;->f()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    :try_start_1
    sget-object v2, Lcom/twitter/android/service/ScribeService;->h:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-boolean v2, Lcom/twitter/android/service/ScribeService;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "ScribeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting request ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-virtual {v8}, Lcom/twitter/android/provider/al;->f()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Lcom/twitter/android/provider/al;->f()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Lcom/twitter/android/provider/al;->f()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static a(Lcom/twitter/android/service/ScribeLog;)[B
    .locals 8

    const/4 v0, 0x0

    sget-boolean v1, Lcom/twitter/android/service/ScribeService;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "ScribeService"

    invoke-virtual {p0}, Lcom/twitter/android/service/ScribeLog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lcom/twitter/android/api/y;->a:Lorg/codehaus/jackson/d;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/d;->a(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    const-string v4, "_category_"

    const-string v5, "client_event"

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->refEvent:Lcom/twitter/android/service/ScribeEvent;

    if-eqz v4, :cond_1

    const-string v4, "referring_event"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->refEvent:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v5}, Lcom/twitter/android/service/ScribeEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v4, "event_name"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->event:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v5}, Lcom/twitter/android/service/ScribeEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ts"

    iget-wide v5, p0, Lcom/twitter/android/service/ScribeLog;->ts:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;J)V

    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->event:Lcom/twitter/android/service/ScribeEvent;

    sget-object v5, Lcom/twitter/android/service/ScribeEvent;->o:Lcom/twitter/android/service/ScribeEvent;

    if-ne v4, v5, :cond_2

    const-string v4, "duration_ms"

    iget-wide v5, p0, Lcom/twitter/android/service/ScribeLog;->durationMs:J

    invoke-virtual {v2, v4, v5, v6}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;J)V

    const-string v4, "status_code"

    iget v5, p0, Lcom/twitter/android/service/ScribeLog;->statusCode:I

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->url:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, "url"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->url:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, "query"

    iget-object v5, p0, Lcom/twitter/android/service/ScribeLog;->query:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    invoke-static {v2}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_1
    invoke-static {v2}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_2
    invoke-static {v2}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v2, v0

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Lcom/twitter/android/service/ScribeLog;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/ScribeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "log"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-static {p0}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/ScribeService;->j:Lcom/twitter/android/network/b;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/twitter/android/service/ScribeService;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_0
    const-string v0, "log"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/ScribeLog;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/twitter/android/service/ScribeService;->a(Lcom/twitter/android/service/ScribeLog;)[B

    move-result-object v1

    iget-wide v2, v0, Lcom/twitter/android/service/ScribeLog;->ownerId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/service/ScribeService;->a([BJ)V

    goto :goto_1

    :cond_2
    const-string v0, "logs"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/ScribeLog;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/twitter/android/service/ScribeService;->a(Lcom/twitter/android/service/ScribeLog;)[B

    move-result-object v2

    iget-wide v3, v0, Lcom/twitter/android/service/ScribeLog;->ownerId:J

    invoke-direct {p0, v2, v3, v4}, Lcom/twitter/android/service/ScribeService;->a([BJ)V

    goto :goto_2

    :pswitch_1
    const-string v0, "raw"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, v7, v8}, Lcom/twitter/android/service/ScribeService;->a([BJ)V

    goto :goto_1

    :pswitch_2
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_5

    aget-object v1, v3, v0

    const-string v5, "account_user_info"

    invoke-virtual {v2, v1, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    :try_start_0
    invoke-static {v5}, Lcom/twitter/android/api/y;->c(Ljava/lang/String;)Lcom/twitter/android/api/c;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    iget-wide v5, v5, Lcom/twitter/android/api/c;->a:J

    invoke-direct {p0, v5, v6}, Lcom/twitter/android/service/ScribeService;->a(J)[B

    move-result-object v5

    invoke-static {v2, v1}, Lcom/twitter/android/platform/d;->a(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/twitter/android/network/c;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/twitter/android/service/ScribeService;->a([BLcom/twitter/android/network/c;)V

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-direct {p0, v7, v8}, Lcom/twitter/android/service/ScribeService;->a(J)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/service/ScribeService;->a([BLcom/twitter/android/network/c;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
