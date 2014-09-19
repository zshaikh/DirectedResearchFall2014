.class abstract Lcom/vungle/sdk/t;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/t$a;,
        Lcom/vungle/sdk/t$c;,
        Lcom/vungle/sdk/t$b;
    }
.end annotation


# static fields
.field private static a:D

.field private static b:D

.field private static c:Ljava/util/Timer;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 31
    sput-wide v0, Lcom/vungle/sdk/t;->a:D

    .line 32
    sput-wide v0, Lcom/vungle/sdk/t;->b:D

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vungle/sdk/t;->d:Z

    return-void
.end method

.method private static a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    :try_start_0
    const-string v1, "start"

    sget-wide v2, Lcom/vungle/sdk/t;->a:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 125
    if-eqz p0, :cond_0

    .line 126
    const-string v1, "end"

    sget-wide v2, Lcom/vungle/sdk/t;->b:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 129
    :cond_0
    const-string v1, "isu"

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vungle/sdk/VungleUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v1, "pubAppId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    const-string v2, "JSONException"

    invoke-static {v1, v2, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a()V
    .locals 5

    .prologue
    .line 39
    const-class v0, Lcom/vungle/sdk/t;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/vungle/sdk/t;->d:Z

    if-eqz v1, :cond_1

    .line 40
    sget-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 42
    const/4 v1, 0x0

    sput-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 45
    :cond_1
    :try_start_1
    sget-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 47
    sput-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;

    new-instance v2, Lcom/vungle/sdk/t$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/vungle/sdk/t$c;-><init>(B)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    sput-wide v1, Lcom/vungle/sdk/t;->a:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 112
    new-instance v0, Lcom/vungle/sdk/t$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/sdk/t$b;-><init>(B)V

    .line 113
    iput-object p0, v0, Lcom/vungle/sdk/t$b;->a:Ljava/lang/String;

    .line 114
    iput-object p1, v0, Lcom/vungle/sdk/t$b;->b:Ljava/lang/String;

    .line 115
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "VungleSessionThread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method

.method public static declared-synchronized b()V
    .locals 5

    .prologue
    .line 55
    const-class v0, Lcom/vungle/sdk/t;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/vungle/sdk/t;->d:Z

    if-eqz v1, :cond_1

    .line 56
    sget-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 58
    sput-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;

    new-instance v2, Lcom/vungle/sdk/t$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/vungle/sdk/t$a;-><init>(B)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    sput-wide v1, Lcom/vungle/sdk/t;->b:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 62
    :cond_1
    :try_start_1
    sget-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 64
    const/4 v1, 0x0

    sput-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 12
    invoke-static {}, Lcom/vungle/sdk/t;->e()V

    return-void
.end method

.method static synthetic d()V
    .locals 0

    .prologue
    .line 12
    invoke-static {}, Lcom/vungle/sdk/t;->f()V

    return-void
.end method

.method private static declared-synchronized e()V
    .locals 3

    .prologue
    .line 88
    const-class v0, Lcom/vungle/sdk/t;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/vungle/sdk/t;->d:Z

    .line 89
    const/4 v1, 0x0

    sput-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;

    .line 90
    const/4 v1, 0x0

    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/sdk/model/RequestAd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/sdk/t;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/vungle/sdk/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v0

    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized f()V
    .locals 3

    .prologue
    .line 95
    const-class v0, Lcom/vungle/sdk/t;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/vungle/sdk/t;->d:Z

    .line 96
    const/4 v1, 0x0

    sput-object v1, Lcom/vungle/sdk/t;->c:Ljava/util/Timer;

    .line 97
    const/4 v1, 0x1

    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/sdk/model/RequestAd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/sdk/t;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/vungle/sdk/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit v0

    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
