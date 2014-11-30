.class Lcom/dolphin/browser/provider/l;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 2017
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/provider/l;->a:Ljava/util/Queue;

    .line 2021
    :goto_0
    return-void

    .line 2019
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/provider/l;->a:Ljava/util/Queue;

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 1

    .prologue
    .line 2041
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/provider/l;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/dolphin/browser/provider/l;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/dolphin/browser/provider/l;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2044
    :cond_0
    monitor-exit p0

    return-void

    .line 2041
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 2025
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/provider/l;->a:Ljava/util/Queue;

    new-instance v1, Lcom/dolphin/browser/provider/m;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/provider/m;-><init>(Lcom/dolphin/browser/provider/l;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2035
    iget-object v0, p0, Lcom/dolphin/browser/provider/l;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2036
    invoke-virtual {p0}, Lcom/dolphin/browser/provider/l;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2038
    :cond_0
    monitor-exit p0

    return-void

    .line 2025
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
