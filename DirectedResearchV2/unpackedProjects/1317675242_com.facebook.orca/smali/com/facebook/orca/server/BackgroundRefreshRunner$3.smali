.class Lcom/facebook/orca/server/BackgroundRefreshRunner$3;
.super Ljava/lang/Object;
.source "BackgroundRefreshRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/BackgroundRefreshRunner;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Lcom/facebook/orca/common/async/CancellableRunnable;)Lcom/facebook/orca/common/async/CancellableRunnable;

    .line 232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {v0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->c(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    .line 234
    return-void

    .line 232
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
