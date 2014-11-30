.class public Lorg/c/a/c/b/n;
.super Ljava/lang/Object;
.source "SelectorManager.java"


# instance fields
.field final synthetic a:Lorg/c/a/c/b/j;

.field private final b:I

.field private final c:Lorg/c/a/d/g/e;

.field private final d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Ljava/nio/channels/Selector;

.field private volatile f:Ljava/lang/Thread;

.field private g:I

.field private h:J

.field private i:Z

.field private j:Z

.field private volatile k:J

.field private l:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/c/a/c/b/g;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/c/a/c/b/j;I)V
    .locals 4

    .prologue
    .line 414
    iput-object p1, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/c/a/c/b/n;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 410
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/c/a/c/b/n;->l:Ljava/util/concurrent/ConcurrentMap;

    .line 415
    iput p2, p0, Lorg/c/a/c/b/n;->b:I

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/c/a/c/b/n;->k:J

    .line 418
    new-instance v0, Lorg/c/a/d/g/e;

    invoke-direct {v0, p0}, Lorg/c/a/d/g/e;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/c/a/c/b/n;->c:Lorg/c/a/d/g/e;

    .line 419
    iget-object v0, p0, Lorg/c/a/c/b/n;->c:Lorg/c/a/d/g/e;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/c/a/d/g/e;->a(J)V

    .line 422
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/c/b/n;->e:Ljava/nio/channels/Selector;

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/c/a/c/b/j;->e()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/c/a/c/b/n;->h:J

    .line 424
    return-void
.end method

.method static synthetic a(Lorg/c/a/c/b/n;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/c/a/c/b/n;->l:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private a(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/c/a/c/b/g;
    .locals 5

    .prologue
    .line 847
    iget-object v0, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-virtual {v0, p1, p0, p2}, Lorg/c/a/c/b/j;->a(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/b/n;Ljava/nio/channels/SelectionKey;)Lorg/c/a/c/b/g;

    move-result-object v0

    .line 848
    sget-object v1, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    const-string v2, "created {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    iget-object v1, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-virtual {v1, v0}, Lorg/c/a/c/b/j;->a(Lorg/c/a/c/b/g;)V

    .line 850
    iget-object v1, p0, Lorg/c/a/c/b/n;->l:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    return-object v0
.end method

.method static synthetic b(Lorg/c/a/c/b/n;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lorg/c/a/c/b/n;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 760
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :try_start_1
    iget-object v0, p0, Lorg/c/a/c/b/n;->e:Ljava/nio/channels/Selector;

    .line 763
    if-nez v0, :cond_0

    .line 764
    monitor-exit p0

    .line 787
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    .line 766
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 768
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    if-eqz v3, :cond_1

    .line 771
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    .line 772
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    .line 774
    if-nez v0, :cond_2

    .line 775
    invoke-virtual {p0, v3}, Lorg/c/a/c/b/n;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 783
    :catch_0
    move-exception v0

    .line 785
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "recreating selector"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 777
    :cond_2
    :try_start_3
    invoke-virtual {p0, v3, v0}, Lorg/c/a/c/b/n;->a(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    goto :goto_1

    .line 779
    :cond_3
    iget-object v0, p0, Lorg/c/a/c/b/n;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 780
    iput-object v1, p0, Lorg/c/a/c/b/n;->e:Ljava/nio/channels/Selector;

    .line 781
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 13

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    .line 453
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lorg/c/a/c/b/n;->f:Ljava/lang/Thread;

    .line 454
    iget-object v11, p0, Lorg/c/a/c/b/n;->e:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    if-nez v11, :cond_0

    .line 750
    iput-object v4, p0, Lorg/c/a/c/b/n;->f:Ljava/lang/Thread;

    .line 752
    :goto_0
    return-void

    .line 461
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/c/a/c/b/n;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    .line 462
    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_9

    iget-object v1, p0, Lorg/c/a/c/b/n;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_9

    .line 469
    :try_start_2
    instance-of v2, v1, Lorg/c/a/c/s;

    if-eqz v2, :cond_2

    .line 472
    check-cast v1, Lorg/c/a/c/b/g;

    .line 473
    invoke-virtual {v1}, Lorg/c/a/c/b/g;->u()Ljava/nio/channels/ByteChannel;
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 474
    :try_start_3
    invoke-virtual {v1}, Lorg/c/a/c/b/g;->z()V
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_2
    move v1, v3

    .line 538
    goto :goto_1

    .line 476
    :cond_2
    :try_start_4
    instance-of v2, v1, Lorg/c/a/c/b/m;

    if-eqz v2, :cond_4

    .line 479
    check-cast v1, Lorg/c/a/c/b/m;

    .line 480
    iget-object v2, v1, Lorg/c/a/c/b/m;->a:Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 482
    :try_start_5
    iget-object v5, v1, Lorg/c/a/c/b/m;->b:Ljava/lang/Object;

    .line 484
    instance-of v1, v2, Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_3

    move-object v0, v2

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 486
    const/4 v1, 0x1

    invoke-virtual {v2, v11, v1, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v5

    .line 487
    move-object v0, v2

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v1, v0

    invoke-direct {p0, v1, v5}, Lorg/c/a/c/b/n;->a(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/c/a/c/b/g;

    move-result-object v1

    .line 488
    invoke-virtual {v5, v1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-virtual {v1}, Lorg/c/a/c/b/g;->v()V
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 517
    :catch_0
    move-exception v1

    .line 519
    :try_start_6
    sget-object v2, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v2, v1}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 737
    :catch_1
    move-exception v1

    .line 739
    :try_start_7
    iget-object v2, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-virtual {v2}, Lorg/c/a/c/b/j;->q()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 740
    sget-object v2, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v2, v1}, Lorg/c/a/d/c/d;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 750
    :goto_3
    iput-object v4, p0, Lorg/c/a/c/b/n;->f:Ljava/lang/Thread;

    goto :goto_0

    .line 491
    :cond_3
    :try_start_8
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    const/16 v1, 0x8

    invoke-virtual {v2, v11, v1, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 521
    :catch_2
    move-exception v1

    .line 523
    :goto_4
    :try_start_9
    iget-object v5, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-virtual {v5}, Lorg/c/a/c/b/j;->q()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 524
    sget-object v5, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v5, v1}, Lorg/c/a/d/c/d;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 530
    :goto_5
    if-eqz v2, :cond_1

    .line 531
    :try_start_a
    invoke-interface {v2}, Ljava/nio/channels/Channel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 533
    :catch_3
    move-exception v1

    .line 535
    :try_start_b
    sget-object v2, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v2, v1}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 744
    :catch_4
    move-exception v1

    .line 746
    :try_start_c
    sget-object v2, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v2, v1}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 750
    iput-object v4, p0, Lorg/c/a/c/b/n;->f:Ljava/lang/Thread;

    goto/16 :goto_0

    .line 496
    :cond_4
    :try_start_d
    instance-of v2, v1, Ljava/nio/channels/SocketChannel;

    if-eqz v2, :cond_5

    .line 499
    check-cast v1, Ljava/nio/channels/SocketChannel;
    :try_end_d
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 501
    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_e
    invoke-virtual {v1, v11, v2, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 502
    invoke-direct {p0, v1, v2}, Lorg/c/a/c/b/n;->a(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/c/a/c/b/g;

    move-result-object v5

    .line 503
    invoke-virtual {v2, v5}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-virtual {v5}, Lorg/c/a/c/b/g;->v()V
    :try_end_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 521
    :catch_5
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_4

    .line 506
    :cond_5
    :try_start_f
    instance-of v2, v1, Lorg/c/a/c/b/l;

    if-eqz v2, :cond_6

    .line 508
    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_2

    .line 521
    :catch_6
    move-exception v1

    move-object v2, v4

    goto :goto_4

    .line 510
    :cond_6
    instance-of v2, v1, Ljava/lang/Runnable;

    if-eqz v2, :cond_7

    .line 512
    iget-object v2, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Lorg/c/a/c/b/j;->a(Ljava/lang/Runnable;)Z
    :try_end_f
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 750
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lorg/c/a/c/b/n;->f:Ljava/lang/Thread;

    throw v1

    .line 515
    :cond_7
    :try_start_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 526
    :cond_8
    :try_start_11
    sget-object v5, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v5, v1}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 542
    :cond_9
    invoke-virtual {v11}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v3

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 547
    if-nez v3, :cond_a

    invoke-virtual {v11}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 550
    iget-boolean v3, p0, Lorg/c/a/c/b/n;->i:Z
    :try_end_11
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v3, :cond_1e

    .line 554
    :try_start_12
    invoke-static {}, Lorg/c/a/c/b/j;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 560
    :goto_6
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v9, v1

    .line 564
    :goto_7
    iget-object v1, p0, Lorg/c/a/c/b/n;->c:Lorg/c/a/d/g/e;

    invoke-virtual {v1, v9, v10}, Lorg/c/a/d/g/e;->b(J)V

    .line 565
    iget-object v1, p0, Lorg/c/a/c/b/n;->c:Lorg/c/a/d/g/e;

    invoke-virtual {v1}, Lorg/c/a/d/g/e;->f()J

    move-result-wide v1

    .line 567
    iget-object v3, p0, Lorg/c/a/c/b/n;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lorg/c/a/c/b/j;->g()I

    move-result v3

    int-to-long v5, v3

    .line 568
    :goto_8
    cmp-long v3, v5, v7

    if-lez v3, :cond_1d

    cmp-long v3, v1, v7

    if-ltz v3, :cond_1d

    cmp-long v3, v5, v1

    if-lez v3, :cond_1d

    .line 572
    :goto_9
    cmp-long v3, v1, v7

    if-lez v3, :cond_a

    .line 575
    invoke-virtual {v11, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 577
    iget-object v3, p0, Lorg/c/a/c/b/n;->c:Lorg/c/a/d/g/e;

    invoke-virtual {v3, v1, v2}, Lorg/c/a/d/g/e;->b(J)V

    .line 581
    invoke-static {}, Lorg/c/a/c/b/j;->e()I

    move-result v3

    if-lez v3, :cond_a

    sub-long/2addr v1, v9

    const-wide/16 v5, 0x1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_a

    .line 584
    iget v1, p0, Lorg/c/a/c/b/n;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/c/a/c/b/n;->g:I

    invoke-static {}, Lorg/c/a/c/b/j;->i()I

    move-result v2

    if-le v1, v2, :cond_a

    .line 587
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/c/a/c/b/n;->i:Z

    .line 590
    iget-boolean v1, p0, Lorg/c/a/c/b/n;->j:Z

    if-nez v1, :cond_a

    .line 593
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/c/a/c/b/n;->j:Z

    .line 594
    sget-object v1, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    const-string v2, "Selector {} is too busy, pausing!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    invoke-interface {v1, v2, v3}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    :cond_a
    iget-object v1, p0, Lorg/c/a/c/b/n;->e:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_b

    invoke-virtual {v11}, Ljava/nio/channels/Selector;->isOpen()Z
    :try_end_13
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result v1

    if-nez v1, :cond_d

    .line 750
    :cond_b
    iput-object v4, p0, Lorg/c/a/c/b/n;->f:Ljava/lang/Thread;

    goto/16 :goto_0

    .line 556
    :catch_7
    move-exception v1

    .line 558
    :try_start_14
    sget-object v2, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v2, v1}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    move-wide v5, v7

    .line 567
    goto :goto_8

    .line 606
    :cond_d
    invoke-virtual {v11}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;
    :try_end_14
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 612
    :try_start_15
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_f

    .line 614
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 615
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/c/a/c/b/g;

    .line 616
    if-eqz v2, :cond_e

    .line 617
    invoke-virtual {v2}, Lorg/c/a/c/b/g;->z()V
    :try_end_15
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_15 .. :try_end_15} :catch_8
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_a

    .line 666
    :catch_8
    move-exception v1

    .line 668
    :try_start_16
    sget-object v2, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v2, v1}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_a

    .line 621
    :cond_f
    :try_start_17
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    .line 622
    instance-of v3, v2, Lorg/c/a/c/b/g;

    if-eqz v3, :cond_12

    .line 624
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 625
    :cond_10
    check-cast v2, Lorg/c/a/c/b/g;

    invoke-virtual {v2}, Lorg/c/a/c/b/g;->v()V
    :try_end_17
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_a

    .line 670
    :catch_9
    move-exception v2

    move-object v3, v4

    .line 672
    :goto_b
    :try_start_18
    iget-object v6, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-virtual {v6}, Lorg/c/a/c/b/j;->q()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 673
    sget-object v6, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v6, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/Throwable;)V
    :try_end_18
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 679
    :goto_c
    if-eqz v3, :cond_11

    .line 680
    :try_start_19
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 687
    :cond_11
    :goto_d
    if-eqz v1, :cond_e

    :try_start_1a
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    instance-of v2, v2, Ljava/nio/channels/ServerSocketChannel;

    if-nez v2, :cond_e

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 688
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_a

    .line 627
    :cond_12
    :try_start_1b
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 630
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SocketChannel;
    :try_end_1b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1b .. :try_end_1b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 634
    :try_start_1c
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->finishConnect()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    move-result v2

    .line 642
    if-eqz v2, :cond_13

    .line 644
    const/4 v2, 0x1

    :try_start_1d
    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 645
    invoke-direct {p0, v3, v1}, Lorg/c/a/c/b/n;->a(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/c/a/c/b/g;

    move-result-object v2

    .line 646
    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-virtual {v2}, Lorg/c/a/c/b/g;->v()V

    goto/16 :goto_a

    .line 670
    :catch_a
    move-exception v2

    goto :goto_b

    .line 651
    :cond_13
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1d
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1d .. :try_end_1d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_a

    .line 636
    :catch_b
    move-exception v6

    .line 638
    :try_start_1e
    iget-object v9, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-virtual {v9, v3, v6, v2}, Lorg/c/a/c/b/j;->a(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 651
    :try_start_1f
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto/16 :goto_a

    .line 642
    :catchall_1
    move-exception v2

    .line 651
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    throw v2
    :try_end_1f
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1f .. :try_end_1f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 658
    :cond_14
    :try_start_20
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;
    :try_end_20
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_20 .. :try_end_20} :catch_8
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 659
    :try_start_21
    invoke-direct {p0, v2, v1}, Lorg/c/a/c/b/n;->a(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/c/a/c/b/g;

    move-result-object v3

    .line 660
    invoke-virtual {v1, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 662
    invoke-virtual {v3}, Lorg/c/a/c/b/g;->v()V
    :try_end_21
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_21 .. :try_end_21} :catch_8
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto/16 :goto_a

    .line 670
    :catch_c
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_b

    .line 675
    :cond_15
    :try_start_22
    sget-object v6, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v6, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 682
    :catch_d
    move-exception v2

    .line 684
    sget-object v3, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v3, v2}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 693
    :cond_16
    invoke-virtual {v11}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 696
    iget-object v1, p0, Lorg/c/a/c/b/n;->c:Lorg/c/a/d/g/e;

    invoke-virtual {v1, v5, v6}, Lorg/c/a/d/g/e;->b(J)V

    .line 697
    iget-object v1, p0, Lorg/c/a/c/b/n;->c:Lorg/c/a/d/g/e;

    invoke-virtual {v1}, Lorg/c/a/d/g/e;->d()Lorg/c/a/d/g/f;

    move-result-object v1

    .line 698
    :goto_e
    if-eqz v1, :cond_18

    .line 700
    instance-of v2, v1, Ljava/lang/Runnable;

    if-eqz v2, :cond_17

    .line 701
    iget-object v2, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Lorg/c/a/c/b/j;->a(Ljava/lang/Runnable;)Z

    .line 702
    :cond_17
    iget-object v1, p0, Lorg/c/a/c/b/n;->c:Lorg/c/a/d/g/e;

    invoke-virtual {v1}, Lorg/c/a/d/g/e;->d()Lorg/c/a/d/g/f;

    move-result-object v1

    goto :goto_e

    .line 706
    :cond_18
    iget-wide v1, p0, Lorg/c/a/c/b/n;->k:J

    sub-long v1, v5, v1

    invoke-static {}, Lorg/c/a/c/b/j;->g()I

    move-result v3

    int-to-long v9, v3

    cmp-long v1, v1, v9

    if-lez v1, :cond_19

    .line 708
    iput-wide v5, p0, Lorg/c/a/c/b/n;->k:J

    .line 710
    iget-object v1, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-static {v1}, Lorg/c/a/c/b/j;->b(Lorg/c/a/c/b/j;)J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-lez v1, :cond_1b

    invoke-virtual {v11}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-static {v3}, Lorg/c/a/c/b/j;->b(Lorg/c/a/c/b/j;)J

    move-result-wide v7

    cmp-long v1, v1, v7

    if-lez v1, :cond_1b

    iget-object v1, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-static {v1}, Lorg/c/a/c/b/j;->c(Lorg/c/a/c/b/j;)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, v5

    iget-object v3, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-static {v3}, Lorg/c/a/c/b/j;->d(Lorg/c/a/c/b/j;)I

    move-result v3

    int-to-long v7, v3

    sub-long/2addr v1, v7

    .line 714
    :goto_f
    iget-object v3, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    new-instance v7, Lorg/c/a/c/b/o;

    invoke-direct {v7, p0, v1, v2}, Lorg/c/a/c/b/o;-><init>(Lorg/c/a/c/b/n;J)V

    invoke-virtual {v3, v7}, Lorg/c/a/c/b/j;->a(Ljava/lang/Runnable;)Z

    .line 729
    :cond_19
    invoke-static {}, Lorg/c/a/c/b/j;->e()I

    move-result v1

    if-lez v1, :cond_1a

    iget-wide v1, p0, Lorg/c/a/c/b/n;->h:J

    cmp-long v1, v5, v1

    if-lez v1, :cond_1a

    .line 731
    const/4 v1, 0x0

    iput v1, p0, Lorg/c/a/c/b/n;->g:I

    .line 732
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/c/a/c/b/n;->i:Z

    .line 733
    invoke-static {}, Lorg/c/a/c/b/j;->e()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, v5

    iput-wide v1, p0, Lorg/c/a/c/b/n;->h:J
    :try_end_22
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_22 .. :try_end_22} :catch_4
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 750
    :cond_1a
    iput-object v4, p0, Lorg/c/a/c/b/n;->f:Ljava/lang/Thread;

    goto/16 :goto_0

    :cond_1b
    move-wide v1, v5

    .line 710
    goto :goto_f

    .line 742
    :cond_1c
    :try_start_23
    sget-object v2, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v2, v1}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto/16 :goto_3

    :cond_1d
    move-wide v1, v5

    goto/16 :goto_9

    :cond_1e
    move-wide v9, v1

    goto/16 :goto_7
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/c/a/c/b/n;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method public a(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 435
    if-nez p2, :cond_0

    .line 436
    invoke-virtual {p0, p1}, Lorg/c/a/c/b/n;->a(Ljava/lang/Object;)V

    .line 441
    :goto_0
    return-void

    .line 437
    :cond_0
    instance-of v0, p2, Lorg/c/a/c/s;

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p0, p2}, Lorg/c/a/c/b/n;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 440
    :cond_1
    new-instance v0, Lorg/c/a/c/b/m;

    invoke-direct {v0, p1, p2}, Lorg/c/a/c/b/m;-><init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/c/a/c/b/n;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lorg/c/a/c/b/g;)V
    .locals 4

    .prologue
    .line 857
    sget-object v0, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    const-string v1, "destroyEndPoint {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 858
    iget-object v0, p0, Lorg/c/a/c/b/n;->l:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iget-object v0, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    invoke-virtual {v0, p1}, Lorg/c/a/c/b/j;->b(Lorg/c/a/c/b/g;)V

    .line 860
    return-void
.end method

.method public b()Lorg/c/a/c/b/j;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lorg/c/a/c/b/n;->a:Lorg/c/a/c/b/j;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lorg/c/a/c/b/n;->c:Lorg/c/a/d/g/e;

    invoke-virtual {v0}, Lorg/c/a/d/g/e;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 826
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/n;->e:Ljava/nio/channels/Selector;

    .line 827
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 832
    new-instance v0, Lorg/c/a/c/b/p;

    invoke-direct {v0, p0}, Lorg/c/a/c/b/p;-><init>(Lorg/c/a/c/b/n;)V

    invoke-virtual {p0, v0}, Lorg/c/a/c/b/n;->a(Ljava/lang/Object;)V

    .line 840
    invoke-direct {p0}, Lorg/c/a/c/b/n;->f()V

    goto :goto_0
.end method

.method e()Ljava/nio/channels/Selector;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lorg/c/a/c/b/n;->e:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 998
    iget-object v2, p0, Lorg/c/a/c/b/n;->e:Ljava/nio/channels/Selector;

    .line 999
    const-string v3, "%s keys=%d selected=%d"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
