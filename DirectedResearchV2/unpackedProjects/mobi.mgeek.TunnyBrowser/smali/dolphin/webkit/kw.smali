.class final Ldolphin/webkit/kw;
.super Ljava/lang/Thread;
.source "WebViewWorker.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 95
    invoke-static {}, Ldolphin/util/l;->a()V

    .line 96
    invoke-static {}, Ldolphin/webkit/kv;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 97
    :try_start_0
    new-instance v0, Ldolphin/webkit/kv;

    invoke-static {}, Ldolphin/util/l;->c()Ldolphin/util/l;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Ldolphin/webkit/kv;-><init>(Ldolphin/util/l;Ldolphin/webkit/kw;)V

    invoke-static {v0}, Ldolphin/webkit/kv;->a(Ldolphin/webkit/kv;)Ldolphin/webkit/kv;

    .line 98
    invoke-static {}, Ldolphin/webkit/kv;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 102
    invoke-static {}, Ldolphin/util/l;->b()V

    .line 103
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
