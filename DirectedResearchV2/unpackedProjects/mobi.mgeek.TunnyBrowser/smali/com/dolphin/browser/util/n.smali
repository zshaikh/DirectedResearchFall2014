.class Lcom/dolphin/browser/util/n;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final a:Lcom/dolphin/browser/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/b",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;

.field private c:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/dolphin/browser/util/f;->g:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/n;-><init>(Ljava/util/concurrent/Executor;)V

    .line 238
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Lcom/dolphin/browser/util/b;

    invoke-direct {v0}, Lcom/dolphin/browser/util/b;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/util/n;->a:Lcom/dolphin/browser/util/b;

    .line 241
    iput-object p1, p0, Lcom/dolphin/browser/util/n;->c:Ljava/util/concurrent/Executor;

    .line 242
    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 2

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/util/n;->a:Lcom/dolphin/browser/util/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/b;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/dolphin/browser/util/n;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/util/n;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/dolphin/browser/util/n;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_0
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/util/n;->a:Lcom/dolphin/browser/util/b;

    new-instance v1, Lcom/dolphin/browser/util/o;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/util/o;-><init>(Lcom/dolphin/browser/util/n;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/b;->offer(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/util/n;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/dolphin/browser/util/n;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
