.class Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;
.super Lcom/google/common/util/concurrent/AbstractListenableFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractListenableFuture",
        "<TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TI;+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TO;>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TO;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static synthetic a(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private a(Ljava/util/concurrent/Future;Z)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 692
    if-eqz p1, :cond_0

    .line 693
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 695
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0, p1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/util/concurrent/Future;Z)V

    .line 684
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0, p1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/util/concurrent/Future;Z)V

    .line 685
    const/4 v0, 0x1

    .line 687
    :goto_1
    return v0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 687
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 602
    if-eqz v0, :cond_0

    .line 603
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 616
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 617
    if-eqz v0, :cond_1

    .line 618
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    .line 621
    :cond_1
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TO;"
        }
    .end annotation

    .prologue
    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_4

    .line 635
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p3

    move-object v1, v4

    if-eq v0, v1, :cond_3

    .line 636
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v4

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 637
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v14, v6

    move-wide v15, v4

    move-wide v5, v15

    move-object v4, v14

    .line 644
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object v7, v0

    .line 645
    if-eqz v7, :cond_0

    .line 646
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 647
    invoke-interface {v7, v5, v6, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 648
    const-wide/16 v10, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long v7, v12, v8

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 654
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->e:Ljava/util/concurrent/CountDownLatch;

    move-object v9, v0

    invoke-virtual {v9, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 656
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 658
    :cond_1
    const-wide/16 v9, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long v7, v11, v7

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object v7, v0

    .line 666
    if-eqz v7, :cond_2

    .line 667
    invoke-interface {v7, v5, v6, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 670
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move-wide v1, v5

    move-object v3, v4

    invoke-super {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :cond_3
    move-object/from16 v4, p3

    move-wide/from16 v5, p1

    goto :goto_0

    :cond_4
    move-object/from16 v4, p3

    move-wide/from16 v5, p1

    goto :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->a(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/UninterruptibleFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 713
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 715
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->isCancelled()Z
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    :try_start_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 726
    :goto_0
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->c:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_3
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 762
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a:Lcom/google/common/base/Function;

    .line 763
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 765
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 767
    :goto_1
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 705
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a()Z
    :try_end_4
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 762
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a:Lcom/google/common/base/Function;

    .line 763
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 765
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 707
    :catch_1
    move-exception v0

    .line 709
    :try_start_5
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/lang/Throwable;)Z
    :try_end_5
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 762
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a:Lcom/google/common/base/Function;

    .line 763
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 765
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 723
    :catch_2
    move-exception v0

    .line 724
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 750
    :catch_3
    move-exception v0

    .line 752
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/lang/Throwable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 762
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a:Lcom/google/common/base/Function;

    .line 763
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 765
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 729
    :cond_0
    :try_start_8
    new-instance v1, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_8
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 762
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a:Lcom/google/common/base/Function;

    .line 763
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 765
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 753
    :catch_4
    move-exception v0

    .line 756
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/lang/Throwable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 762
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a:Lcom/google/common/base/Function;

    .line 763
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 765
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 757
    :catch_5
    move-exception v0

    .line 759
    :try_start_a
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a(Ljava/lang/Throwable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 762
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a:Lcom/google/common/base/Function;

    .line 763
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 765
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 762
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->a:Lcom/google/common/base/Function;

    .line 763
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 765
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
