.class public Lcom/nativex/common/StatsDManager;
.super Ljava/lang/Object;
.source "StatsDManager.java"


# static fields
.field private static enabled:Ljava/lang/Boolean;

.field private static instance:Lcom/nativex/common/StatsDManager;

.field private static url:Ljava/lang/String;


# instance fields
.field private client:Lcom/timgroup/statsd/StatsDClient;

.field private timestamps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/common/StatsDManager;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sput-object p0, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nativex/common/StatsDManager;->timestamps:Ljava/util/Map;

    .line 43
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/nativex/common/StatsDManager;->recordTimeAsync(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/nativex/common/StatsDManager;->incrementCounterAsync(Ljava/lang/String;)V

    return-void
.end method

.method private static checkInstance()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/nativex/common/StatsDManager;

    invoke-direct {v0}, Lcom/nativex/common/StatsDManager;-><init>()V

    .line 49
    :cond_0
    return-void
.end method

.method private static getClient()Lcom/timgroup/statsd/StatsDClient;
    .locals 5

    .prologue
    .line 104
    invoke-static {}, Lcom/nativex/common/StatsDManager;->checkInstance()V

    .line 105
    sget-object v0, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    iget-object v0, v0, Lcom/nativex/common/StatsDManager;->client:Lcom/timgroup/statsd/StatsDClient;

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    new-instance v1, Lcom/timgroup/statsd/NonBlockingStatsDClient;

    const-string v2, "Mobile.MonetizationSDK.Android"

    sget-object v3, Lcom/nativex/common/StatsDManager;->url:Ljava/lang/String;

    const/16 v4, 0x1fbd

    invoke-direct {v1, v2, v3, v4}, Lcom/timgroup/statsd/NonBlockingStatsDClient;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/nativex/common/StatsDManager;->client:Lcom/timgroup/statsd/StatsDClient;

    .line 108
    :cond_0
    sget-object v0, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    iget-object v0, v0, Lcom/nativex/common/StatsDManager;->client:Lcom/timgroup/statsd/StatsDClient;

    return-object v0
.end method

.method public static hasTimestamp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Lcom/nativex/common/StatsDManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/nativex/common/StatsDManager;->checkInstance()V

    .line 132
    sget-object v0, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    iget-object v0, v0, Lcom/nativex/common/StatsDManager;->timestamps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static incrementCounter(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nativex/common/StatsDManager$3;

    invoke-direct {v1, p0}, Lcom/nativex/common/StatsDManager$3;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 146
    return-void
.end method

.method private static incrementCounterAsync(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 151
    :try_start_0
    invoke-static {}, Lcom/nativex/common/StatsDManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-static {}, Lcom/nativex/common/StatsDManager;->checkInstance()V

    .line 153
    invoke-static {}, Lcom/nativex/common/StatsDManager;->getClient()Lcom/timgroup/statsd/StatsDClient;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/timgroup/statsd/StatsDClient;->increment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK Performance: Failed to increment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " counter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/nativex/common/StatsDManager;->enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/nativex/common/StatsDManager;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static recordTime(Ljava/lang/String;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {}, Lcom/nativex/common/StatsDManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-static {}, Lcom/nativex/common/StatsDManager;->checkInstance()V

    .line 72
    sget-object v2, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    iget-object v2, v2, Lcom/nativex/common/StatsDManager;->timestamps:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 73
    .local v1, "timestamp":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 74
    sget-object v2, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    iget-object v2, v2, Lcom/nativex/common/StatsDManager;->timestamps:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 76
    .local v0, "recordTime":I
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/nativex/common/StatsDManager$1;

    invoke-direct {v3, p0, v0}, Lcom/nativex/common/StatsDManager$1;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 85
    .end local v0    # "recordTime":I
    .end local v1    # "timestamp":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method public static recordTime(Ljava/lang/String;J)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "timestamp"    # J

    .prologue
    .line 90
    invoke-static {}, Lcom/nativex/common/StatsDManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Lcom/nativex/common/StatsDManager;->checkInstance()V

    .line 92
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    long-to-double v1, v1

    const-wide v3, 0x412e848000000000L

    div-double/2addr v1, v3

    double-to-int v0, v1

    .line 93
    .local v0, "recordTime":I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nativex/common/StatsDManager$2;

    invoke-direct {v2, p0, v0}, Lcom/nativex/common/StatsDManager$2;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 101
    .end local v0    # "recordTime":I
    :cond_0
    return-void
.end method

.method private static recordTimeAsync(Ljava/lang/String;I)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "recordTime"    # I

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Lcom/nativex/common/StatsDManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {}, Lcom/nativex/common/StatsDManager;->checkInstance()V

    .line 117
    if-lez p1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatsD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recordTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/nativex/common/StatsDManager;->getClient()Lcom/timgroup/statsd/StatsDClient;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/timgroup/statsd/StatsDClient;->time(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK Performance: Failed to log "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " execution time."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    sget-object v0, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    iget-object v0, v0, Lcom/nativex/common/StatsDManager;->timestamps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 164
    :try_start_0
    sget-object v0, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    iget-object v0, v0, Lcom/nativex/common/StatsDManager;->client:Lcom/timgroup/statsd/StatsDClient;

    invoke-interface {v0}, Lcom/timgroup/statsd/StatsDClient;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/nativex/common/StatsDManager;->enabled:Ljava/lang/Boolean;

    .line 168
    sput-object v1, Lcom/nativex/common/StatsDManager;->url:Ljava/lang/String;

    .line 169
    sput-object v1, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    .line 171
    :cond_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setUrl(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const-string p0, "performance.appclick.co"

    .line 180
    :cond_0
    invoke-static {p0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    sput-object p0, Lcom/nativex/common/StatsDManager;->url:Ljava/lang/String;

    .line 182
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/nativex/common/StatsDManager;->enabled:Ljava/lang/Boolean;

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-static {}, Lcom/nativex/common/StatsDManager;->release()V

    goto :goto_0
.end method

.method public static timestamp(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lcom/nativex/common/StatsDManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/nativex/common/StatsDManager;->checkInstance()V

    .line 59
    sget-object v0, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    iget-object v0, v0, Lcom/nativex/common/StatsDManager;->timestamps:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    return-void
.end method

.method public static timestampCreateSession()V
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Lcom/nativex/common/StatsDManager;->checkInstance()V

    .line 65
    sget-object v0, Lcom/nativex/common/StatsDManager;->instance:Lcom/nativex/common/StatsDManager;

    iget-object v0, v0, Lcom/nativex/common/StatsDManager;->timestamps:Ljava/util/Map;

    const-string v1, "CreateSession"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
