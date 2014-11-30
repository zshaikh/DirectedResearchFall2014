.class Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;->a:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;->a:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->a(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 868
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;->a:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->b(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)Lcom/google/common/util/concurrent/ExecutionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ExecutionList;->run()V

    .line 869
    return-void

    .line 857
    :catch_0
    move-exception v0

    .line 858
    throw v0

    .line 859
    :catch_1
    move-exception v0

    .line 862
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 863
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter thread interrupted!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 864
    :catch_2
    move-exception v0

    goto :goto_0
.end method
