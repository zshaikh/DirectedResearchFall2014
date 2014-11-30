.class public Lcom/playtika/extensions/fbsdk/FbSdkLogger;
.super Ljava/lang/Object;
.source "FbSdkLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;
    }
.end annotation


# static fields
.field private static final GRAYLOG_TAG:Ljava/lang/String; = "facebook"

.field private static final TAG:Ljava/lang/String; = "Facebook Sloto"

.field private static cache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final enabled:Z

.field private static facility:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->facility:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->cache:Ljava/util/ArrayList;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/playtika/extensions/fbsdk/FbSdkLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->cache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v0

    return-void

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    :try_start_0
    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext;->debugDump:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/playtika/extensions/fbsdk/FbSdkContext;->debugDump:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 33
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "state"    # Ljava/lang/String;
    .param p1, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->DEBUG:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    invoke-static {p0, p1, v0}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logWithLevel(Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;)V

    .line 66
    return-void
.end method

.method public static logSessionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logSessionException(Ljava/lang/Exception;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 74
    return-void
.end method

.method public static logSessionException(Ljava/lang/Exception;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "additionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v1, "message":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_1

    .line 92
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->ERROR:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    invoke-static {p1, v2, v3, p2}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logWithLevel(Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;Ljava/util/HashMap;)V

    .line 93
    return-void

    .line 85
    :cond_1
    aget-object v0, v2, v4

    .line 87
    .local v0, "element":Ljava/lang/StackTraceElement;
    const-string v5, "\n\tat "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "state"    # Ljava/lang/String;
    .param p1, "additionalInfo"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->WARNING:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    invoke-static {p0, p1, v0}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logWithLevel(Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;)V

    .line 70
    return-void
.end method

.method private static logWithLevel(Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;)V
    .locals 1
    .param p0, "state"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logWithLevel(Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;Ljava/util/HashMap;)V

    .line 116
    return-void
.end method

.method private static declared-synchronized logWithLevel(Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;Ljava/util/HashMap;)V
    .locals 11
    .param p0, "state"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p3, "additionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-class v10, Lcom/playtika/extensions/fbsdk/FbSdkLogger;

    monitor-enter v10

    :try_start_0
    sget-object v0, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->facility:Ljava/lang/String;

    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 110
    :goto_0
    monitor-exit v10

    return-void

    .line 101
    :cond_0
    :try_start_1
    sget-object v0, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->facility:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 104
    sget-object v0, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->cache:Ljava/util/ArrayList;

    new-instance v1, Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .line 108
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->getInstance()Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    move-result-object v0

    sget-object v1, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->facility:Ljava/lang/String;

    const-string v2, "facebook"

    .line 109
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v9, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v7, p0

    move-object v8, p3

    .line 108
    invoke-virtual/range {v0 .. v9}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->logFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized setLoggingFacility(Ljava/lang/String;)V
    .locals 7
    .param p0, "facilityName"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v1, Lcom/playtika/extensions/fbsdk/FbSdkLogger;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 42
    :cond_1
    :try_start_0
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    sget-object v2, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->cache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 46
    :cond_2
    sput-object p0, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->facility:Ljava/lang/String;

    .line 48
    sget-object v2, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->cache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    sget-object v2, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->cache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 57
    sget-object v2, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->cache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 52
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;

    .line 54
    .local v0, "message":Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;
    iget-object v3, v0, Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;->state:Ljava/lang/String;

    iget-object v4, v0, Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;->message:Ljava/lang/String;

    iget-object v5, v0, Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;->level:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    iget-object v6, v0, Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;->additionalParams:Ljava/util/HashMap;

    invoke-static {v3, v4, v5, v6}, Lcom/playtika/extensions/fbsdk/FbSdkLogger;->logWithLevel(Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
