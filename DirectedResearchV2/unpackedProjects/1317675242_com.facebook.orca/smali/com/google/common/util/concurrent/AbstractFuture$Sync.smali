.class final Lcom/google/common/util/concurrent/AbstractFuture$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            "I)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->a:Ljava/lang/Object;

    .line 325
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->b:Ljava/lang/Throwable;

    .line 326
    invoke-virtual {p0, p3}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->releaseShared(I)Z

    move v0, v2

    .line 331
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private e()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    .line 260
    packed-switch v0, :pswitch_data_0

    .line 272
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error, synchronizer in invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->a:Ljava/lang/Object;

    return-object v0

    .line 269
    :pswitch_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->acquireSharedInterruptibly(I)V

    .line 250
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for task."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method a(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    const/4 v0, 0x4

    invoke-direct {p0, v1, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method protected tryAcquireShared(I)I
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected tryReleaseShared(I)Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->setState(I)V

    .line 220
    const/4 v0, 0x1

    return v0
.end method
