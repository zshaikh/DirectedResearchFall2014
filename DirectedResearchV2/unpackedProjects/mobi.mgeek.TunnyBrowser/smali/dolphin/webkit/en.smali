.class final Ldolphin/webkit/en;
.super Ljava/lang/Object;
.source "JniUtil.java"


# instance fields
.field private a:Z

.field private b:Ljava/util/concurrent/locks/Lock;

.field private c:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/en;->b:Ljava/util/concurrent/locks/Lock;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/en;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Ldolphin/webkit/en;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/en;->a:Z

    .line 92
    iget-object v1, p0, Ldolphin/webkit/en;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/en;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Ldolphin/webkit/en;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 96
    return-void

    .line 94
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Ldolphin/webkit/en;->a:Z

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Ldolphin/webkit/en;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 109
    iget-boolean v0, p0, Ldolphin/webkit/en;->a:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Ldolphin/webkit/en;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 111
    iget-object v1, p0, Ldolphin/webkit/en;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/en;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 113
    monitor-exit v1

    .line 117
    :goto_0
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/en;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method
