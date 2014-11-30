.class Lcom/dolphin/browser/util/m;
.super Ljava/lang/Thread;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 271
    const-string v0, "LowPriorityThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/util/m;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/util/m;->b:Z

    .line 274
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    iget-boolean v0, p0, Lcom/dolphin/browser/util/m;->b:Z

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/util/m;->b:Z

    .line 294
    invoke-virtual {p0}, Lcom/dolphin/browser/util/m;->start()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/util/m;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 297
    monitor-exit p0

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 278
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/dolphin/browser/util/f;->a(I)V

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/util/m;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/util/m;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 283
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method
