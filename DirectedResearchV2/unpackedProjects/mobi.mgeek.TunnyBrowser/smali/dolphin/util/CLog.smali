.class public final Ldolphin/util/CLog;
.super Ljava/lang/Object;
.source "CLog.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final ALL:I = -0x1

.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final MESSAGE_TEMPLATE:Ljava/lang/String; = "[%s][%d][%s]%s"

.field public static final NONE:I = 0x7fffffff

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sCachedLogQueue:Ldolphin/util/d;

.field private static sFilterLevel:I

.field private static sSyncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, -0x1

    sput v0, Ldolphin/util/CLog;->sFilterLevel:I

    .line 173
    new-instance v0, Ldolphin/util/d;

    invoke-direct {v0}, Ldolphin/util/d;-><init>()V

    sput-object v0, Ldolphin/util/CLog;->sCachedLogQueue:Ldolphin/util/d;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldolphin/util/CLog;->sSyncObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method public static cacheLog(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 453
    sget v1, Ldolphin/util/CLog;->sFilterLevel:I

    if-lt p0, v1, :cond_2

    .line 454
    const-string v1, ""

    .line 455
    new-instance v1, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 456
    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    if-nez p1, :cond_0

    const-string p1, ""

    .line 458
    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 459
    :cond_1
    const-string v2, "[%s][%d][%s]%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const/4 v0, 0x3

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Ldolphin/util/CLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 460
    sget-object v1, Ldolphin/util/CLog;->sSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_0
    sget-object v2, Ldolphin/util/CLog;->sCachedLogQueue:Ldolphin/util/d;

    invoke-virtual {v2, v0}, Ldolphin/util/d;->a(Ljava/lang/String;)V

    .line 462
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 465
    :cond_2
    return v0

    .line 462
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ldolphin/util/CLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 255
    sget v0, Ldolphin/util/CLog;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    .line 257
    :cond_0
    invoke-static {p1, p2}, Ldolphin/util/CLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v1, p0, v0}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static dumpLog()V
    .locals 5

    .prologue
    .line 469
    sget-object v1, Ldolphin/util/CLog;->sSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_0
    sget-object v0, Ldolphin/util/CLog;->sCachedLogQueue:Ldolphin/util/d;

    invoke-virtual {v0}, Ldolphin/util/d;->a()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    const/4 v3, 0x3

    const-string v4, "CachedDebugLog"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    return-void
.end method

.method public static dumpLog(Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    .line 478
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 479
    sget-object v2, Ldolphin/util/CLog;->sSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 480
    :try_start_0
    sget-object v0, Ldolphin/util/CLog;->sCachedLogQueue:Ldolphin/util/d;

    invoke-virtual {v0}, Ldolphin/util/d;->a()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 486
    return-void
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 373
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 396
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ldolphin/util/CLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 397
    return v0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 409
    sget v0, Ldolphin/util/CLog;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    .line 411
    :cond_0
    invoke-static {p1, p2}, Ldolphin/util/CLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v1, p0, v0}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 432
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 439
    :goto_0
    return-object v0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 437
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 439
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 421
    if-nez p0, :cond_0

    .line 422
    const-string v0, ""

    .line 427
    :goto_0
    return-object v0

    .line 424
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 425
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 426
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 427
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 279
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 317
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ldolphin/util/CLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 302
    sget v0, Ldolphin/util/CLog;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    .line 304
    :cond_0
    invoke-static {p1, p2}, Ldolphin/util/CLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v1, p0, v0}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 223
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ldolphin/util/CLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 208
    sget v0, Ldolphin/util/CLog;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    .line 210
    :cond_0
    invoke-static {p1, p2}, Ldolphin/util/CLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v1, p0, v0}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 364
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ldolphin/util/CLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 349
    sget v0, Ldolphin/util/CLog;->sFilterLevel:I

    if-ge v1, v0, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 352
    :goto_0
    return v0

    .line 351
    :cond_0
    invoke-static {p1, p2}, Ldolphin/util/CLog;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v1, p0, v0}, Ldolphin/util/CLog;->cacheLog(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
