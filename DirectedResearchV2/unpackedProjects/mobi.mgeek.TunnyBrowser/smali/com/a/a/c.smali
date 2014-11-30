.class final Lcom/a/a/c;
.super Ljava/lang/Object;
.source "TaskQueue.java"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;

.field private b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/a/a/c;->a:Ljava/util/concurrent/BlockingQueue;

    .line 17
    return-void
.end method

.method static synthetic a(Lcom/a/a/c;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/a/a/c;->a:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/c;->b:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/a/a/d;

    invoke-direct {v0, p0}, Lcom/a/a/d;-><init>(Lcom/a/a/c;)V

    iput-object v0, p0, Lcom/a/a/c;->b:Ljava/lang/Thread;

    .line 29
    iget-object v0, p0, Lcom/a/a/c;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    const-string v0, "TaskQueue"

    const-string v1, "start ..."

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/a/a/c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    const-string v0, "TaskQueue"

    const-string v1, "Enqueue task failed"

    invoke-static {v0, v1}, Lcom/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/c;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/a/a/c;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c;->b:Ljava/lang/Thread;

    .line 38
    const-string v0, "TaskQueue"

    const-string v1, "stop ..."

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
