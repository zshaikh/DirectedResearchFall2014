.class Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic b:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->b:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->b:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->a(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/util/concurrent/UninterruptibleFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->b:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 748
    :goto_0
    return-void

    .line 737
    :catch_0
    move-exception v0

    .line 739
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->b:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->b:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 741
    :catch_1
    move-exception v0

    .line 743
    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->b:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 746
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->b:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->b:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    throw v0
.end method
