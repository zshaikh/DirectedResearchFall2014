.class Ldolphin/net/http/y;
.super Ljava/lang/Thread;
.source "IdleCache.java"


# instance fields
.field final synthetic a:Ldolphin/net/http/v;


# direct methods
.method private constructor <init>(Ldolphin/net/http/v;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Ldolphin/net/http/y;->a:Ldolphin/net/http/v;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/net/http/v;Ldolphin/net/http/w;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0, p1}, Ldolphin/net/http/y;-><init>(Ldolphin/net/http/v;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 308
    const-string v0, "Http"

    const-string v2, "[IdleCache::IdleReaper::run]"

    invoke-static {v0, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v0, "IdleReaper"

    invoke-virtual {p0, v0}, Ldolphin/net/http/y;->setName(Ljava/lang/String;)V

    .line 312
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 314
    iget-object v2, p0, Ldolphin/net/http/y;->a:Ldolphin/net/http/v;

    monitor-enter v2

    move v0, v1

    .line 315
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 317
    :try_start_0
    iget-object v3, p0, Ldolphin/net/http/y;->a:Ldolphin/net/http/v;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :goto_1
    :try_start_1
    iget-object v3, p0, Ldolphin/net/http/y;->a:Ldolphin/net/http/v;

    invoke-static {v3}, Ldolphin/net/http/v;->a(Ldolphin/net/http/v;)I

    move-result v3

    if-nez v3, :cond_0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Ldolphin/net/http/y;->a:Ldolphin/net/http/v;

    invoke-static {v0}, Ldolphin/net/http/v;->b(Ldolphin/net/http/v;)V

    move v0, v1

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Ldolphin/net/http/y;->a:Ldolphin/net/http/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldolphin/net/http/v;->a(Ldolphin/net/http/v;Ldolphin/net/http/y;)Ldolphin/net/http/y;

    .line 328
    monitor-exit v2

    .line 334
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 318
    :catch_0
    move-exception v3

    goto :goto_1
.end method
