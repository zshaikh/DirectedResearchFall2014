.class public Lorg/c/a/c/b/g;
.super Lorg/c/a/c/b/b;
.source "SelectChannelEndPoint.java"

# interfaces
.implements Lorg/c/a/c/e;
.implements Lorg/c/a/c/q;


# static fields
.field public static final g:Lorg/c/a/d/c/d;


# instance fields
.field private final h:Z

.field private final i:Lorg/c/a/c/b/n;

.field private final j:Lorg/c/a/c/b/j;

.field private k:Ljava/nio/channels/SelectionKey;

.field private final l:Ljava/lang/Runnable;

.field private m:I

.field private volatile n:Lorg/c/a/c/b/a;

.field private o:Z

.field private p:Z

.field private volatile q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private volatile u:J

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "org.eclipse.jetty.io.nio"

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/String;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/b/n;Ljava/nio/channels/SelectionKey;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p4}, Lorg/c/a/c/b/b;-><init>(Ljava/nio/channels/ByteChannel;I)V

    .line 46
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->h:Z

    .line 50
    new-instance v0, Lorg/c/a/c/b/h;

    invoke-direct {v0, p0}, Lorg/c/a/c/b/h;-><init>(Lorg/c/a/c/b/g;)V

    iput-object v0, p0, Lorg/c/a/c/b/g;->l:Ljava/lang/Runnable;

    .line 67
    iput-boolean v2, p0, Lorg/c/a/c/b/g;->o:Z

    .line 70
    iput-boolean v2, p0, Lorg/c/a/c/b/g;->p:Z

    .line 73
    iput-boolean v3, p0, Lorg/c/a/c/b/g;->q:Z

    .line 95
    invoke-virtual {p2}, Lorg/c/a/c/b/n;->b()Lorg/c/a/c/b/j;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/c/b/g;->j:Lorg/c/a/c/b/j;

    .line 96
    iput-object p2, p0, Lorg/c/a/c/b/g;->i:Lorg/c/a/c/b/n;

    .line 97
    iput-boolean v2, p0, Lorg/c/a/c/b/g;->o:Z

    .line 98
    iput-boolean v2, p0, Lorg/c/a/c/b/g;->p:Z

    .line 99
    iput-boolean v3, p0, Lorg/c/a/c/b/g;->t:Z

    .line 100
    iput-object p3, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    .line 102
    invoke-virtual {p0, v3}, Lorg/c/a/c/b/g;->a(Z)V

    .line 103
    return-void
.end method

.method private B()V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 512
    monitor-enter p0

    .line 515
    :try_start_0
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->u()Ljava/nio/channels/ByteChannel;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    iget-boolean v1, p0, Lorg/c/a/c/b/g;->r:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/c/a/c/b/g;->o:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    invoke-interface {v1}, Lorg/c/a/c/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    move v4, v2

    .line 518
    :goto_0
    iget-boolean v1, p0, Lorg/c/a/c/b/g;->s:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/c/a/c/b/g;->o:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/c/a/c/b/g;->q:Z

    if-nez v1, :cond_5

    :cond_1
    move v1, v2

    .line 520
    :goto_1
    iget-object v5, p0, Lorg/c/a/c/b/g;->c:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    move v4, v2

    :goto_2
    iget-object v5, p0, Lorg/c/a/c/b/g;->c:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    :goto_3
    or-int/2addr v1, v4

    iput v1, p0, Lorg/c/a/c/b/g;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    :try_start_1
    iget-object v1, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 533
    :cond_2
    :goto_4
    :try_start_2
    iget v1, p0, Lorg/c/a/c/b/g;->m:I

    if-eq v1, v0, :cond_8

    move v0, v2

    .line 534
    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    if-eqz v0, :cond_3

    .line 538
    iget-object v0, p0, Lorg/c/a/c/b/g;->i:Lorg/c/a/c/b/n;

    invoke-virtual {v0, p0}, Lorg/c/a/c/b/n;->a(Ljava/lang/Object;)V

    .line 539
    iget-object v0, p0, Lorg/c/a/c/b/g;->i:Lorg/c/a/c/b/n;

    invoke-virtual {v0}, Lorg/c/a/c/b/n;->d()V

    .line 541
    :cond_3
    return-void

    :cond_4
    move v4, v3

    .line 517
    goto :goto_0

    :cond_5
    move v1, v3

    .line 518
    goto :goto_1

    :cond_6
    move v4, v3

    .line 520
    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_3

    .line 527
    :catch_0
    move-exception v1

    .line 529
    const/4 v4, 0x0

    :try_start_3
    iput-object v4, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    .line 530
    sget-object v4, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v4, v1}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_8
    move v0, v3

    .line 533
    goto :goto_5
.end method


# virtual methods
.method protected A()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 619
    move v4, v1

    .line 622
    :goto_0
    if-eqz v4, :cond_d

    .line 628
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    invoke-interface {v0}, Lorg/c/a/c/b/a;->j()Lorg/c/a/c/r;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/b/a;

    .line 629
    iget-object v3, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    if-eq v0, v3, :cond_1

    .line 631
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v5, "{} replaced {}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    aput-object v8, v6, v7

    invoke-interface {v3, v5, v6}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    iget-object v3, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    .line 633
    iput-object v0, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    .line 634
    iget-object v0, p0, Lorg/c/a/c/b/g;->j:Lorg/c/a/c/b/j;

    invoke-virtual {v0, p0, v3}, Lorg/c/a/c/b/j;->a(Lorg/c/a/c/q;Lorg/c/a/c/r;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/c/a/c/t; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_1

    .line 640
    :catch_0
    move-exception v0

    .line 642
    :try_start_1
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v3, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 664
    :try_start_2
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 669
    :try_start_3
    iget-object v0, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    invoke-interface {v0}, Lorg/c/a/c/b/a;->k()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 679
    :try_start_4
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 682
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->w()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    move v4, v0

    goto :goto_0

    .line 664
    :cond_1
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 669
    :try_start_5
    iget-object v0, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    invoke-interface {v0}, Lorg/c/a/c/b/a;->k()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 679
    :try_start_6
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 682
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->w()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    .line 671
    :catch_1
    move-exception v0

    .line 673
    :try_start_7
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v3, v5, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 674
    :try_start_8
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->j()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 679
    :goto_5
    :try_start_9
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 688
    :catchall_0
    move-exception v0

    move-object v3, v0

    move v0, v4

    :goto_6
    if-eqz v0, :cond_12

    .line 690
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->w()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 691
    :goto_7
    if-eqz v0, :cond_12

    .line 693
    sget-object v0, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v4, "SCEP.run() finally DISPATCHED"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->w()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_7

    .line 675
    :catch_2
    move-exception v0

    :try_start_a
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v3, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 679
    :catchall_1
    move-exception v0

    :try_start_b
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_3
    move v0, v2

    .line 682
    goto :goto_3

    .line 671
    :catch_3
    move-exception v0

    .line 673
    :try_start_c
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v3, v5, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 674
    :try_start_d
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->j()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 679
    :goto_8
    :try_start_e
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 675
    :catch_4
    move-exception v0

    :try_start_f
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v3, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_8

    .line 679
    :catchall_2
    move-exception v0

    :try_start_10
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_4
    move v0, v2

    .line 682
    goto :goto_3

    .line 644
    :catch_5
    move-exception v0

    .line 646
    :try_start_11
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v5, "EOF"

    invoke-interface {v3, v5, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 647
    :try_start_12
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->j()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 664
    :goto_9
    :try_start_13
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 669
    :try_start_14
    iget-object v0, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    invoke-interface {v0}, Lorg/c/a/c/b/a;->k()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 679
    :try_start_15
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 682
    :cond_5
    :goto_a
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->w()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto/16 :goto_3

    .line 648
    :catch_6
    move-exception v0

    :try_start_16
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v3, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_9

    .line 664
    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_17
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 669
    :try_start_18
    iget-object v0, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    invoke-interface {v0}, Lorg/c/a/c/b/a;->k()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_11
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 679
    :try_start_19
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 682
    :cond_6
    :goto_b
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->w()Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    :try_start_1a
    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 688
    :catchall_4
    move-exception v3

    goto/16 :goto_6

    .line 671
    :catch_7
    move-exception v0

    .line 673
    :try_start_1b
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v3, v5, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 674
    :try_start_1c
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->j()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 679
    :goto_d
    :try_start_1d
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_a

    .line 675
    :catch_8
    move-exception v0

    :try_start_1e
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v3, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    goto :goto_d

    .line 679
    :catchall_5
    move-exception v0

    :try_start_1f
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :cond_7
    move v0, v2

    .line 682
    goto/16 :goto_3

    .line 650
    :catch_9
    move-exception v0

    .line 652
    :try_start_20
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v0, v5}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 653
    :try_start_21
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->j()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .line 664
    :goto_e
    :try_start_22
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 669
    :try_start_23
    iget-object v0, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    invoke-interface {v0}, Lorg/c/a/c/b/a;->k()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_b
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    .line 679
    :try_start_24
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 682
    :cond_8
    :goto_f
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->w()Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto/16 :goto_3

    .line 654
    :catch_a
    move-exception v0

    :try_start_25
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v3, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    goto :goto_e

    .line 671
    :catch_b
    move-exception v0

    .line 673
    :try_start_26
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v3, v5, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    .line 674
    :try_start_27
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->j()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_c
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    .line 679
    :goto_10
    :try_start_28
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    goto :goto_f

    .line 675
    :catch_c
    move-exception v0

    :try_start_29
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v3, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    goto :goto_10

    .line 679
    :catchall_6
    move-exception v0

    :try_start_2a
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    :cond_9
    move v0, v2

    .line 682
    goto/16 :goto_3

    .line 656
    :catch_d
    move-exception v0

    .line 658
    :try_start_2b
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v5, "handle failed"

    invoke-interface {v3, v5, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    .line 659
    :try_start_2c
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->j()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_e
    .catchall {:try_start_2c .. :try_end_2c} :catchall_3

    .line 664
    :goto_11
    :try_start_2d
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->q()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->v:Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 669
    :try_start_2e
    iget-object v0, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    invoke-interface {v0}, Lorg/c/a/c/b/a;->k()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_f
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    .line 679
    :try_start_2f
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 682
    :cond_a
    :goto_12
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->w()Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    goto/16 :goto_3

    .line 660
    :catch_e
    move-exception v0

    :try_start_30
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v3, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_3

    goto :goto_11

    .line 671
    :catch_f
    move-exception v0

    .line 673
    :try_start_31
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v5, "onInputShutdown failed"

    invoke-interface {v3, v5, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_7

    .line 674
    :try_start_32
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->j()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_10
    .catchall {:try_start_32 .. :try_end_32} :catchall_7

    .line 679
    :goto_13
    :try_start_33
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    goto :goto_12

    .line 675
    :catch_10
    move-exception v0

    :try_start_34
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v3, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_7

    goto :goto_13

    .line 679
    :catchall_7
    move-exception v0

    :try_start_35
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    throw v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    :cond_b
    move v0, v2

    .line 682
    goto/16 :goto_3

    .line 671
    :catch_11
    move-exception v0

    .line 673
    :try_start_36
    sget-object v5, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v6, "onInputShutdown failed"

    invoke-interface {v5, v6, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_8

    .line 674
    :try_start_37
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->j()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_12
    .catchall {:try_start_37 .. :try_end_37} :catchall_8

    .line 679
    :goto_14
    :try_start_38
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    goto/16 :goto_b

    .line 675
    :catch_12
    move-exception v0

    :try_start_39
    sget-object v5, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v5, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_8

    goto :goto_14

    .line 679
    :catchall_8
    move-exception v0

    :try_start_3a
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    throw v0
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    :cond_c
    move v0, v2

    .line 682
    goto/16 :goto_c

    .line 688
    :cond_d
    if-eqz v4, :cond_13

    .line 690
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->w()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 691
    :goto_15
    if-eqz v0, :cond_13

    .line 693
    sget-object v0, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v3, "SCEP.run() finally DISPATCHED"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->w()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_15

    :cond_e
    move v0, v2

    .line 690
    goto :goto_15

    :cond_f
    move v0, v2

    .line 694
    goto :goto_15

    :cond_10
    move v0, v2

    .line 690
    goto/16 :goto_7

    :cond_11
    move v0, v2

    .line 694
    goto/16 :goto_7

    :cond_12
    throw v3

    .line 698
    :cond_13
    return-void
.end method

.method public a(Lorg/c/a/c/f;)I
    .locals 1

    .prologue
    .line 326
    invoke-super {p0, p1}, Lorg/c/a/c/b/b;->a(Lorg/c/a/c/f;)I

    move-result v0

    .line 327
    if-lez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->y()V

    .line 329
    :cond_0
    return v0
.end method

.method public a(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/c/f;)I
    .locals 2

    .prologue
    .line 336
    invoke-super {p0, p1, p2, p3}, Lorg/c/a/c/b/b;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/c/f;)I

    move-result v0

    .line 339
    if-nez v0, :cond_5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/c/a/c/f;->i()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/c/a/c/f;->i()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lorg/c/a/c/f;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 341
    :cond_2
    monitor-enter p0

    .line 343
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/c/a/c/b/g;->q:Z

    .line 344
    iget-boolean v1, p0, Lorg/c/a/c/b/g;->o:Z

    if-nez v1, :cond_3

    .line 345
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 346
    :cond_3
    monitor-exit p0

    .line 353
    :cond_4
    :goto_0
    return v0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 348
    :cond_5
    if-lez v0, :cond_4

    .line 350
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/c/a/c/b/g;->q:Z

    .line 351
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->y()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 797
    iput p1, p0, Lorg/c/a/c/b/g;->f:I

    .line 798
    return-void
.end method

.method public a(Lorg/c/a/c/r;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    .line 130
    check-cast p1, Lorg/c/a/c/b/a;

    iput-object p1, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    .line 131
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    if-eq v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lorg/c/a/c/b/g;->j:Lorg/c/a/c/b/j;

    invoke-virtual {v1, p0, v0}, Lorg/c/a/c/b/j;->a(Lorg/c/a/c/q;Lorg/c/a/c/r;)V

    .line 133
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 269
    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/c/a/c/b/g;->u:J

    .line 270
    return-void

    .line 269
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(J)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 438
    monitor-enter p0

    .line 440
    :try_start_0
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    new-instance v0, Lorg/c/a/c/t;

    invoke-direct {v0}, Lorg/c/a/c/t;-><init>()V

    throw v0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 443
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/c/a/c/b/g;->i:Lorg/c/a/c/b/n;

    invoke-virtual {v2}, Lorg/c/a/c/b/n;->c()J

    move-result-wide v2

    .line 444
    add-long v4, v2, p1

    .line 445
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->x()Z

    move-result v6

    .line 446
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lorg/c/a/c/b/g;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, p0, Lorg/c/a/c/b/g;->s:Z

    .line 450
    :cond_1
    iget-boolean v7, p0, Lorg/c/a/c/b/g;->s:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->f()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    if-nez v7, :cond_3

    .line 454
    :try_start_3
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 455
    cmp-long v7, p1, v8

    if-lez v7, :cond_2

    sub-long v2, v4, v2

    :goto_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 463
    :try_start_4
    iget-object v2, p0, Lorg/c/a/c/b/g;->i:Lorg/c/a/c/b/n;

    invoke-virtual {v2}, Lorg/c/a/c/b/n;->c()J

    move-result-wide v2

    .line 465
    :goto_1
    iget-boolean v7, p0, Lorg/c/a/c/b/g;->s:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_1

    cmp-long v7, p1, v8

    if-lez v7, :cond_1

    cmp-long v7, v2, v4

    if-ltz v7, :cond_1

    .line 471
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lorg/c/a/c/b/g;->s:Z

    .line 472
    invoke-virtual {p0, v6}, Lorg/c/a/c/b/g;->a(Z)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 475
    :goto_2
    return v0

    .line 455
    :cond_2
    const-wide/16 v2, 0x2710

    goto :goto_0

    .line 457
    :catch_0
    move-exception v2

    .line 459
    :try_start_6
    sget-object v3, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v3, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 463
    :try_start_7
    iget-object v2, p0, Lorg/c/a/c/b/g;->i:Lorg/c/a/c/b/n;

    invoke-virtual {v2}, Lorg/c/a/c/b/n;->c()J

    move-result-wide v2

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/c/a/c/b/g;->i:Lorg/c/a/c/b/n;

    invoke-virtual {v1}, Lorg/c/a/c/b/n;->c()J

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 471
    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lorg/c/a/c/b/g;->s:Z

    .line 472
    invoke-virtual {p0, v6}, Lorg/c/a/c/b/g;->a(Z)V

    throw v0

    .line 471
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->s:Z

    .line 472
    invoke-virtual {p0, v6}, Lorg/c/a/c/b/g;->a(Z)V

    .line 474
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v0, v1

    .line 475
    goto :goto_2
.end method

.method public b(Lorg/c/a/c/f;)I
    .locals 2

    .prologue
    .line 362
    invoke-super {p0, p1}, Lorg/c/a/c/b/b;->b(Lorg/c/a/c/f;)I

    move-result v0

    .line 365
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/c/a/c/f;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    monitor-enter p0

    .line 369
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/c/a/c/b/g;->q:Z

    .line 370
    iget-boolean v1, p0, Lorg/c/a/c/b/g;->o:Z

    if-nez v1, :cond_0

    .line 371
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 372
    :cond_0
    monitor-exit p0

    .line 380
    :cond_1
    :goto_0
    return v0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 374
    :cond_2
    if-lez v0, :cond_1

    .line 376
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/c/a/c/b/g;->q:Z

    .line 377
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->y()V

    goto :goto_0
.end method

.method public b()Lorg/c/a/c/r;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    return-object v0
.end method

.method public b(J)V
    .locals 4

    .prologue
    .line 288
    iget-wide v0, p0, Lorg/c/a/c/b/g;->u:J

    .line 290
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/c/a/c/b/g;->f:I

    if-lez v2, :cond_0

    .line 292
    sub-long v0, p1, v0

    .line 294
    iget v2, p0, Lorg/c/a/c/b/g;->f:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 297
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/c/a/c/b/g;->a(Z)V

    .line 298
    iget-object v2, p0, Lorg/c/a/c/b/g;->j:Lorg/c/a/c/b/j;

    new-instance v3, Lorg/c/a/c/b/i;

    invoke-direct {v3, p0, v0, v1}, Lorg/c/a/c/b/i;-><init>(Lorg/c/a/c/b/g;J)V

    invoke-virtual {v2, v3}, Lorg/c/a/c/b/j;->a(Ljava/lang/Runnable;)Z

    .line 314
    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    invoke-interface {v0, p1, p2}, Lorg/c/a/c/b/a;->a(J)V

    .line 320
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 216
    monitor-enter p0

    .line 218
    :try_start_0
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->o:Z

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->o:Z

    .line 221
    iget-object v0, p0, Lorg/c/a/c/b/g;->j:Lorg/c/a/c/b/j;

    iget-object v1, p0, Lorg/c/a/c/b/g;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/c/a/c/b/j;->a(Ljava/lang/Runnable;)Z

    move-result v0

    .line 222
    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->o:Z

    .line 225
    sget-object v0, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatched Failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/c/b/g;->j:Lorg/c/a/c/b/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 229
    :cond_0
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    .line 206
    :try_start_0
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->o:Z

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->p:Z

    .line 210
    :goto_0
    monitor-exit p0

    .line 211
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->d()V

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 484
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->q:Z

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    const-string v1, "Required scheduleWrite {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    :cond_0
    iput-boolean v3, p0, Lorg/c/a/c/b/g;->q:Z

    .line 488
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 489
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 712
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->h:Z

    if-eqz v0, :cond_0

    .line 716
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    .line 717
    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_0
    :goto_0
    :try_start_1
    invoke-super {p0}, Lorg/c/a/c/b/b;->j()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 738
    :goto_1
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 722
    sget-object v1, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 730
    :catch_1
    move-exception v0

    .line 732
    :try_start_2
    sget-object v1, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 736
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    throw v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 747
    iget-object v1, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    .line 748
    const-string v0, ""

    .line 749
    if-eqz v1, :cond_3

    .line 751
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 753
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    :cond_0
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    :cond_1
    :goto_0
    const-string v1, "SCEP@%x{l(%s)<->r(%s),d=%b,open=%b,ishut=%b,oshut=%b,rb=%b,wb=%b,w=%b,i=%d%s}-{%s}"

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/c/a/c/b/g;->c:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/c/a/c/b/g;->c:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lorg/c/a/c/b/g;->o:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->q()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->i()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {p0}, Lorg/c/a/c/b/g;->f()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-boolean v4, p0, Lorg/c/a/c/b/g;->r:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-boolean v4, p0, Lorg/c/a/c/b/g;->s:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-boolean v4, p0, Lorg/c/a/c/b/g;->q:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget v4, p0, Lorg/c/a/c/b/g;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    aput-object v0, v2, v3

    const/16 v0, 0xc

    iget-object v3, p0, Lorg/c/a/c/b/g;->n:Lorg/c/a/c/b/a;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 760
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 765
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public v()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 147
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->r:Z

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->s:Z

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 155
    monitor-exit p0

    .line 199
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->r:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/c/a/c/b/g;->s:Z

    if-eqz v0, :cond_6

    .line 162
    :cond_2
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->r:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->r:Z

    .line 164
    :cond_3
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->s:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->s:Z

    .line 168
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 171
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 172
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->o:Z

    if-nez v0, :cond_5

    .line 173
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 174
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 178
    :cond_6
    :try_start_1
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v1, :cond_7

    .line 181
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/c/a/c/b/g;->m:I

    .line 182
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lorg/c/a/c/b/g;->m:I

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->q:Z

    .line 187
    :cond_7
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->o:Z

    if-eqz v0, :cond_9

    .line 188
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 198
    :cond_8
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 192
    :cond_9
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->d()V

    .line 193
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->o:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/c/a/c/b/g;->i:Lorg/c/a/c/b/n;

    invoke-virtual {v0}, Lorg/c/a/c/b/n;->b()Lorg/c/a/c/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/c/b/j;->d()Z

    move-result v0

    if-nez v0, :cond_8

    .line 195
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected w()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 241
    monitor-enter p0

    .line 243
    :try_start_0
    iget-boolean v1, p0, Lorg/c/a/c/b/g;->p:Z

    if-eqz v1, :cond_0

    .line 245
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/c/a/c/b/g;->p:Z

    .line 246
    monitor-exit p0

    .line 251
    :goto_0
    return v0

    .line 248
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->o:Z

    .line 249
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 250
    monitor-exit p0

    .line 251
    const/4 v0, 0x1

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public x()Z
    .locals 4

    .prologue
    .line 275
    iget-wide v0, p0, Lorg/c/a/c/b/g;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected y()V
    .locals 4

    .prologue
    .line 281
    iget-wide v0, p0, Lorg/c/a/c/b/g;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/c/a/c/b/g;->u:J

    .line 283
    :cond_0
    return-void
.end method

.method z()V
    .locals 3

    .prologue
    .line 550
    monitor-enter p0

    .line 552
    :try_start_0
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->u()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 554
    iget v0, p0, Lorg/c/a/c/b/g;->m:I

    if-lez v0, :cond_5

    .line 556
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 558
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->u()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 559
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    invoke-direct {p0}, Lorg/c/a/c/b/g;->B()V

    .line 611
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    return-void

    .line 567
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/c/a/c/b/g;->u()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    iget-object v1, p0, Lorg/c/a/c/b/g;->i:Lorg/c/a/c/b/n;

    invoke-virtual {v1}, Lorg/c/a/c/b/n;->e()Ljava/nio/channels/Selector;

    move-result-object v1

    iget v2, p0, Lorg/c/a/c/b/g;->m:I

    invoke-virtual {v0, v1, v2, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 571
    :try_start_2
    sget-object v1, Lorg/c/a/c/b/g;->g:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    .line 572
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 577
    :cond_2
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->t:Z

    if-eqz v0, :cond_3

    .line 579
    iget-object v0, p0, Lorg/c/a/c/b/g;->i:Lorg/c/a/c/b/n;

    invoke-virtual {v0, p0}, Lorg/c/a/c/b/n;->a(Lorg/c/a/c/b/g;)V

    .line 581
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->t:Z

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 588
    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    iget v1, p0, Lorg/c/a/c/b/g;->m:I

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 593
    :cond_5
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 594
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 596
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 601
    :cond_7
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 602
    iget-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 604
    :cond_8
    iget-boolean v0, p0, Lorg/c/a/c/b/g;->t:Z

    if-eqz v0, :cond_9

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/c/b/g;->t:Z

    .line 607
    iget-object v0, p0, Lorg/c/a/c/b/g;->i:Lorg/c/a/c/b/n;

    invoke-virtual {v0, p0}, Lorg/c/a/c/b/n;->a(Lorg/c/a/c/b/g;)V

    .line 609
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/c/b/g;->k:Ljava/nio/channels/SelectionKey;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
