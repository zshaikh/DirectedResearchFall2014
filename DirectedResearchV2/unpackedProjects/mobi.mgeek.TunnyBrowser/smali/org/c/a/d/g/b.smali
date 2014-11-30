.class Lorg/c/a/d/g/b;
.super Ljava/lang/Object;
.source "QueuedThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/c/a/d/g/a;


# direct methods
.method constructor <init>(Lorg/c/a/d/g/a;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 534
    .line 537
    :try_start_0
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->a(Lorg/c/a/d/g/a;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v1, v2

    .line 538
    :goto_0
    :try_start_1
    iget-object v3, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-virtual {v3}, Lorg/c/a/d/g/a;->q()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 541
    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-virtual {v3}, Lorg/c/a/d/g/a;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    iget-object v3, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-virtual {v3, v0}, Lorg/c/a/d/g/a;->c(Ljava/lang/Runnable;)V

    .line 544
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->a(Lorg/c/a/d/g/a;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 550
    :cond_0
    :try_start_2
    iget-object v3, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v3}, Lorg/c/a/d/g/a;->b(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 552
    :goto_2
    iget-object v3, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-virtual {v3}, Lorg/c/a/d/g/a;->q()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_6

    .line 554
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->c(Lorg/c/a/d/g/a;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 555
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->a(Lorg/c/a/d/g/a;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_2

    .line 559
    :cond_1
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->d(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 560
    iget-object v3, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v3}, Lorg/c/a/d/g/a;->e(Lorg/c/a/d/g/a;)I

    move-result v3

    if-le v0, v3, :cond_5

    .line 562
    iget-object v3, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v3}, Lorg/c/a/d/g/a;->f(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 564
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-eqz v7, :cond_2

    sub-long v7, v5, v3

    iget-object v9, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v9}, Lorg/c/a/d/g/a;->c(Lorg/c/a/d/g/a;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    .line 566
    :cond_2
    iget-object v7, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v7}, Lorg/c/a/d/g/a;->f(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v7

    invoke-virtual {v7, v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v3}, Lorg/c/a/d/g/a;->d(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 568
    :goto_3
    if-eqz v1, :cond_5

    .line 578
    :try_start_3
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->b(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 592
    if-nez v1, :cond_3

    .line 593
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->d(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 594
    :cond_3
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->h(Lorg/c/a/d/g/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 596
    :goto_4
    return-void

    :cond_4
    move v1, v2

    .line 566
    goto :goto_3

    .line 572
    :cond_5
    :try_start_4
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->g(Lorg/c/a/d/g/a;)Ljava/lang/Runnable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto/16 :goto_2

    .line 578
    :cond_6
    :try_start_5
    iget-object v3, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v3}, Lorg/c/a/d/g/a;->b(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 584
    :goto_5
    :try_start_6
    invoke-static {}, Lorg/c/a/d/g/a;->e()Lorg/c/a/d/c/d;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 592
    if-nez v1, :cond_7

    .line 593
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->d(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 594
    :cond_7
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->h(Lorg/c/a/d/g/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 578
    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v2}, Lorg/c/a/d/g/a;->b(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 586
    :catch_1
    move-exception v0

    .line 588
    :goto_6
    :try_start_8
    invoke-static {}, Lorg/c/a/d/g/a;->e()Lorg/c/a/d/c/d;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 592
    if-nez v1, :cond_8

    .line 593
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->d(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 594
    :cond_8
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->h(Lorg/c/a/d/g/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 592
    :cond_9
    if-nez v1, :cond_a

    .line 593
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->d(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 594
    :cond_a
    iget-object v0, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/g/a;->h(Lorg/c/a/d/g/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 592
    :catchall_1
    move-exception v0

    move v1, v2

    :goto_7
    if-nez v1, :cond_b

    .line 593
    iget-object v1, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v1}, Lorg/c/a/d/g/a;->d(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 594
    :cond_b
    iget-object v1, p0, Lorg/c/a/d/g/b;->a:Lorg/c/a/d/g/a;

    invoke-static {v1}, Lorg/c/a/d/g/a;->h(Lorg/c/a/d/g/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    throw v0

    .line 592
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 586
    :catch_2
    move-exception v0

    move v1, v2

    goto :goto_6

    .line 582
    :catch_3
    move-exception v0

    move v1, v2

    goto/16 :goto_5
.end method
