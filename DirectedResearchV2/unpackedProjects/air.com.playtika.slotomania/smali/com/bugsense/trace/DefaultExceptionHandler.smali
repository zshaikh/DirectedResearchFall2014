.class public Lcom/bugsense/trace/DefaultExceptionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bugsense/trace/DefaultExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 17

    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v3, Lcom/bugsense/trace/G;->TIMESTAMP:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v3, v5, v3

    move-wide v12, v3

    :goto_0
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v14, Ljava/util/HashMap;

    const/4 v5, 0x6

    invoke-direct {v14, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v5, "sysMemAvail"

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4130000000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sysMemLow"

    iget-boolean v6, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sysMemThreshold"

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4130000000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appMemAvail"

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v7, 0x4130000000000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appMemMax"

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide/high16 v7, 0x4130000000000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appMemTotal"

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4130000000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v16, ""

    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/bugsense/trace/G;->IS_WIFI_ON:I

    sget v5, Lcom/bugsense/trace/G;->IS_MOBILENET_ON:I

    sget v6, Lcom/bugsense/trace/G;->IS_GPS_ON:I

    sget-object v7, Lcom/bugsense/trace/G;->SCREEN_PROPS:[Ljava/lang/String;

    invoke-static {}, Lcom/bugsense/trace/Utils;->getTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getCrashExtraData()Ljava/util/HashMap;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v3 .. v14}, Lcom/bugsense/trace/models/CrashMechanism;->createJSONFromCrash(Ljava/lang/String;III[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IJLjava/util/Map;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_1
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/bugsense/trace/models/CrashMechanism;->transmitCrashASync(Ljava/lang/String;I)V

    sget-boolean v3, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getCallback()Lcom/bugsense/trace/ExceptionCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getCallback()Lcom/bugsense/trace/ExceptionCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/bugsense/trace/ExceptionCallback;->lastBreath()V

    :cond_1
    const-wide/16 v3, 0xbb8

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bugsense/trace/DefaultExceptionHandler;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v5

    move-wide v12, v3

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v3, v16

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
