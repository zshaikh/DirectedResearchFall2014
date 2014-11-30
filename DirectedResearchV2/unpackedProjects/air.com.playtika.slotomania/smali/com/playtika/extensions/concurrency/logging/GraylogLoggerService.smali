.class public Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;
.super Landroid/app/Service;
.source "GraylogLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;,
        Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LoggerBinder;,
        Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LowPriorityThreadFactory;
    }
.end annotation


# instance fields
.field private final binder:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LoggerBinder;

.field private final threadExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile urlBase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LoggerBinder;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LoggerBinder;-><init>(Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;)V

    iput-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->binder:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LoggerBinder;

    .line 73
    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LowPriorityThreadFactory;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LowPriorityThreadFactory;-><init>(Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->urlBase:Ljava/lang/String;

    return-object v0
.end method

.method private getLogRunnable(Ljava/util/HashMap;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$1;

    invoke-direct {v0, p0, p1}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$1;-><init>(Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;Ljava/util/HashMap;)V

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized finalize()V
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0
    .param p1, "urlBase"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->urlBase:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public declared-synchronized log(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->getLogRunnable(Ljava/util/HashMap;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->binder:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LoggerBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 87
    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
