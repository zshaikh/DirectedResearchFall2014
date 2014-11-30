.class public Lorg/c/a/c/b/q;
.super Lorg/c/a/c/d;
.source "SslConnection.java"

# interfaces
.implements Lorg/c/a/c/b/a;


# static fields
.field private static final b:Lorg/c/a/c/b/e;

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/c/a/c/b/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lorg/c/a/d/c/d;

.field private final d:Ljavax/net/ssl/SSLEngine;

.field private final e:Ljavax/net/ssl/SSLSession;

.field private f:Lorg/c/a/c/b/a;

.field private final g:Lorg/c/a/c/b/t;

.field private h:I

.field private i:Lorg/c/a/c/b/s;

.field private k:Lorg/c/a/c/b/e;

.field private l:Lorg/c/a/c/b/e;

.field private m:Lorg/c/a/c/b/e;

.field private n:Lorg/c/a/c/e;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/c/a/c/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/c/a/c/b/d;-><init>(I)V

    sput-object v0, Lorg/c/a/c/b/q;->b:Lorg/c/a/c/b/e;

    .line 54
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/c/a/c/b/q;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/c/a/c/s;)V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/c/a/c/b/q;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/c/a/c/s;J)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Lorg/c/a/c/s;J)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p2, p3, p4}, Lorg/c/a/c/d;-><init>(Lorg/c/a/c/s;J)V

    .line 50
    const-string v0, "org.eclipse.jetty.io.nio.ssl"

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/String;)Lorg/c/a/d/c/d;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/b/q;->o:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/c/a/c/b/q;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    iput-object p1, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    .line 99
    iget-object v0, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    .line 100
    check-cast p2, Lorg/c/a/c/e;

    iput-object p2, p0, Lorg/c/a/c/b/q;->n:Lorg/c/a/c/e;

    .line 101
    invoke-virtual {p0}, Lorg/c/a/c/b/q;->a()Lorg/c/a/c/b/t;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    .line 102
    return-void
.end method

.method static synthetic a(Lorg/c/a/c/b/q;)Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method static synthetic a(Lorg/c/a/c/b/q;Lorg/c/a/c/b/a;)Lorg/c/a/c/b/a;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lorg/c/a/c/b/q;->f:Lorg/c/a/c/b/a;

    return-object p1
.end method

.method static synthetic a(Lorg/c/a/c/b/q;Lorg/c/a/c/f;Lorg/c/a/c/f;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lorg/c/a/c/b/q;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/c/a/c/b/q;->r:Z

    return p1
.end method

.method private declared-synchronized a(Lorg/c/a/c/f;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 445
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/c/a/c/b/q;->c(Lorg/c/a/c/f;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 448
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :try_start_1
    iget-object v3, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    invoke-interface {v3}, Lorg/c/a/c/b/e;->f()V

    .line 451
    iget-object v3, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    invoke-interface {v3}, Lorg/c/a/c/b/e;->w()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 452
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 456
    :try_start_2
    invoke-interface {p1}, Lorg/c/a/c/f;->h()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 457
    invoke-interface {p1}, Lorg/c/a/c/f;->q()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 458
    iget-object v4, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    invoke-interface {v4}, Lorg/c/a/c/b/e;->q()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 459
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 460
    iget-object v4, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4, v2, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 461
    iget-object v5, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    invoke-interface {v5}, Lorg/c/a/d/c/d;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    iget-object v5, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v6, "{} wrap {} {} consumed={} produced={}"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_0
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v5

    invoke-interface {p1, v5}, Lorg/c/a/c/f;->f(I)I

    .line 471
    iget-object v5, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    iget-object v6, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    invoke-interface {v6}, Lorg/c/a/c/b/e;->q()I

    move-result v6

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v7

    add-int/2addr v6, v7

    invoke-interface {v5, v6}, Lorg/c/a/c/b/e;->e(I)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 481
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 482
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 483
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 484
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 486
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 487
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 489
    :try_start_5
    sget-object v2, Lorg/c/a/c/b/r;->b:[I

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 509
    iget-object v0, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v1, "{} wrap default {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 473
    :catch_0
    move-exception v0

    .line 475
    :try_start_6
    iget-object v1, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    iget-object v4, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    iget-object v1, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v1}, Lorg/c/a/c/s;->j()V

    .line 477
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 481
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 482
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 483
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 484
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    .line 486
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    .line 487
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0

    .line 492
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 498
    :pswitch_1
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v3, :cond_1

    .line 499
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/c/a/c/b/q;->p:Z

    .line 513
    :cond_1
    :goto_0
    :pswitch_2
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-lez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    monitor-exit p0

    return v0

    .line 503
    :pswitch_3
    :try_start_a
    iget-object v2, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v3, "wrap CLOSE {} {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-interface {v2, v3, v5}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v3, :cond_1

    .line 505
    iget-object v2, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v2}, Lorg/c/a/c/s;->j()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized a(Lorg/c/a/c/f;Lorg/c/a/c/f;)Z
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 278
    monitor-enter p0

    .line 282
    :try_start_0
    invoke-direct {p0}, Lorg/c/a/c/b/q;->e()V

    .line 285
    if-nez p1, :cond_6

    .line 288
    iget-object v1, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    invoke-interface {v1}, Lorg/c/a/c/b/e;->f()V

    .line 289
    iget-object p1, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    .line 319
    :cond_0
    if-nez p2, :cond_1

    .line 320
    sget-object p2, Lorg/c/a/c/b/q;->b:Lorg/c/a/c/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_1
    move v3, v0

    move v1, v2

    .line 324
    :goto_0
    if-eqz v3, :cond_d

    .line 329
    const/4 v4, 0x0

    .line 333
    :try_start_1
    iget-object v3, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v3}, Lorg/c/a/c/b/e;->s()I

    move-result v3

    if-lez v3, :cond_14

    iget-object v3, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    iget-object v5, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v3, v5}, Lorg/c/a/c/s;->a(Lorg/c/a/c/f;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-lez v3, :cond_13

    move v5, v0

    .line 337
    :goto_1
    :try_start_2
    iget-object v6, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    invoke-interface {v6}, Lorg/c/a/c/b/e;->i()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    iget-object v7, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    invoke-interface {v6, v7}, Lorg/c/a/c/s;->b(Lorg/c/a/c/f;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result v4

    if-lez v4, :cond_11

    move v5, v4

    move v4, v0

    .line 347
    :goto_2
    :try_start_3
    iget-object v6, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v7, "{} {} {} filled={}/{} flushed={}/{}"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p0, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v10}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v10}, Lorg/c/a/c/b/e;->m()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x6

    iget-object v9, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    invoke-interface {v9}, Lorg/c/a/c/b/e;->m()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-interface {v6, v7, v8}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    sget-object v5, Lorg/c/a/c/b/r;->a:[I

    iget-object v6, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_2
    move v3, v4

    .line 408
    :cond_3
    :goto_3
    iget-object v4, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v4}, Lorg/c/a/c/s;->q()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v4}, Lorg/c/a/c/s;->i()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v4}, Lorg/c/a/c/b/e;->i()Z

    move-result v4

    if-nez v4, :cond_4

    .line 409
    invoke-direct {p0}, Lorg/c/a/c/b/q;->g()V

    .line 411
    :cond_4
    iget-object v4, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v4}, Lorg/c/a/c/s;->q()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    invoke-interface {v4}, Lorg/c/a/c/b/e;->i()Z

    move-result v4

    if-nez v4, :cond_5

    .line 412
    iget-object v4, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v4}, Lorg/c/a/c/s;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 415
    :cond_5
    or-int/2addr v1, v3

    .line 416
    goto/16 :goto_0

    .line 292
    :cond_6
    :try_start_4
    invoke-interface {p1}, Lorg/c/a/c/f;->v()I

    move-result v1

    iget-object v3, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 295
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)Z

    move-result v1

    .line 298
    iget-object v3, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    invoke-interface {v3}, Lorg/c/a/c/b/e;->i()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 301
    iget-object v1, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    iget-object v3, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    invoke-interface {p1, v3}, Lorg/c/a/c/f;->b(Lorg/c/a/c/f;)I

    move-result v3

    invoke-interface {v1, v3}, Lorg/c/a/c/b/e;->f(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 424
    :try_start_5
    invoke-direct {p0}, Lorg/c/a/c/b/q;->f()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 428
    :goto_4
    monitor-exit p0

    return v0

    .line 424
    :cond_7
    :try_start_6
    invoke-direct {p0}, Lorg/c/a/c/b/q;->f()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v1

    .line 426
    goto :goto_4

    .line 309
    :cond_8
    :try_start_7
    iget-object v1, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    invoke-interface {v1}, Lorg/c/a/c/b/e;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    iget-object v3, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    invoke-interface {p1, v3}, Lorg/c/a/c/f;->b(Lorg/c/a/c/f;)I

    move-result v3

    invoke-interface {v1, v3}, Lorg/c/a/c/b/e;->f(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 424
    :try_start_8
    invoke-direct {p0}, Lorg/c/a/c/b/q;->f()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 340
    :catch_0
    move-exception v0

    .line 342
    :goto_5
    :try_start_9
    iget-object v3, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v3}, Lorg/c/a/c/s;->j()V

    .line 343
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 347
    :catchall_1
    move-exception v0

    :goto_6
    :try_start_a
    iget-object v3, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v5, "{} {} {} filled={}/{} flushed={}/{}"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x4

    iget-object v7, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v7}, Lorg/c/a/c/b/e;->m()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x6

    iget-object v4, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    invoke-interface {v4}, Lorg/c/a/c/b/e;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-interface {v3, v5, v6}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 424
    :catchall_2
    move-exception v0

    :goto_7
    :try_start_b
    invoke-direct {p0}, Lorg/c/a/c/b/q;->f()V

    .line 425
    if-eqz v1, :cond_9

    .line 426
    iget-object v1, p0, Lorg/c/a/c/b/q;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_9
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 354
    :pswitch_0
    :try_start_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 359
    :pswitch_1
    invoke-interface {p1}, Lorg/c/a/c/f;->s()I

    move-result v3

    if-lez v3, :cond_10

    iget-object v3, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v3}, Lorg/c/a/c/b/e;->i()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-direct {p0, p1}, Lorg/c/a/c/b/q;->b(Lorg/c/a/c/f;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v0

    .line 363
    :goto_8
    invoke-interface {p2}, Lorg/c/a/c/f;->i()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    invoke-interface {v4}, Lorg/c/a/c/b/e;->s()I

    move-result v4

    if-lez v4, :cond_3

    invoke-direct {p0, p2}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/f;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v0

    .line 364
    goto/16 :goto_3

    .line 372
    :goto_9
    iget-object v4, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 375
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    move v3, v0

    goto :goto_9

    .line 384
    :pswitch_2
    iget-boolean v3, p0, Lorg/c/a/c/b/q;->p:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lorg/c/a/c/b/q;->o:Z

    if-nez v3, :cond_a

    .line 385
    iget-object v3, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v3}, Lorg/c/a/c/s;->j()V

    move v3, v4

    goto/16 :goto_3

    .line 386
    :cond_a
    invoke-direct {p0, p2}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/f;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    .line 387
    goto/16 :goto_3

    .line 394
    :pswitch_3
    iget-boolean v5, p0, Lorg/c/a/c/b/q;->p:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lorg/c/a/c/b/q;->o:Z

    if-nez v5, :cond_b

    .line 395
    iget-object v3, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v3}, Lorg/c/a/c/s;->j()V

    move v3, v4

    goto/16 :goto_3

    .line 396
    :cond_b
    iget-object v5, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v5}, Lorg/c/a/c/b/e;->i()Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, -0x1

    if-ne v3, v5, :cond_c

    .line 399
    iget-object v3, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v3}, Lorg/c/a/c/s;->g()V

    move v3, v4

    goto/16 :goto_3

    .line 401
    :cond_c
    invoke-direct {p0, p1}, Lorg/c/a/c/b/q;->b(Lorg/c/a/c/f;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    .line 402
    goto/16 :goto_3

    .line 419
    :cond_d
    iget-object v0, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    invoke-interface {v0}, Lorg/c/a/c/b/e;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/c/a/c/b/q;->f:Lorg/c/a/c/b/a;

    invoke-interface {v0}, Lorg/c/a/c/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_e

    .line 420
    iget-object v0, p0, Lorg/c/a/c/b/q;->n:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->d()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 424
    :cond_e
    :try_start_d
    invoke-direct {p0}, Lorg/c/a/c/b/q;->f()V

    .line 425
    if-eqz v1, :cond_f

    .line 426
    iget-object v0, p0, Lorg/c/a/c/b/q;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_f
    move v0, v1

    .line 428
    goto/16 :goto_4

    .line 424
    :catchall_3
    move-exception v0

    move v1, v2

    goto/16 :goto_7

    .line 347
    :catchall_4
    move-exception v0

    move v2, v3

    goto/16 :goto_6

    .line 340
    :catch_1
    move-exception v0

    move v2, v3

    goto/16 :goto_5

    :cond_10
    move v3, v4

    goto/16 :goto_8

    :pswitch_4
    move v3, v4

    goto/16 :goto_9

    :cond_11
    move v11, v4

    move v4, v5

    move v5, v11

    goto/16 :goto_2

    :cond_12
    move v4, v5

    move v5, v2

    goto/16 :goto_2

    :cond_13
    move v5, v2

    goto/16 :goto_1

    :cond_14
    move v3, v2

    move v5, v2

    goto/16 :goto_1

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lorg/c/a/c/b/q;)Lorg/c/a/c/e;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->n:Lorg/c/a/c/e;

    return-object v0
.end method

.method private declared-synchronized b(Lorg/c/a/c/f;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 518
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v2}, Lorg/c/a/c/b/e;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 595
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 521
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lorg/c/a/c/b/q;->c(Lorg/c/a/c/f;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 524
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    :try_start_2
    iget-object v3, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v3}, Lorg/c/a/c/b/e;->w()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 527
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 531
    :try_start_3
    invoke-interface {p1}, Lorg/c/a/c/f;->q()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 532
    invoke-interface {p1}, Lorg/c/a/c/f;->v()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 533
    iget-object v4, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v4}, Lorg/c/a/c/b/e;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 534
    iget-object v4, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v4}, Lorg/c/a/c/b/e;->q()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 536
    iget-object v4, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4, v3, v2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 537
    iget-object v5, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    invoke-interface {v5}, Lorg/c/a/d/c/d;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 538
    iget-object v5, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v6, "{} unwrap {} {} consumed={} produced={}"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    :cond_2
    iget-object v5, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v6

    invoke-interface {v5, v6}, Lorg/c/a/c/b/e;->f(I)I

    .line 546
    iget-object v5, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v5}, Lorg/c/a/c/b/e;->f()V

    .line 547
    invoke-interface {p1}, Lorg/c/a/c/f;->q()I

    move-result v5

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v6

    add-int/2addr v5, v6

    invoke-interface {p1, v5}, Lorg/c/a/c/f;->e(I)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 557
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 558
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 559
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 560
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 562
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 563
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 565
    :try_start_6
    sget-object v2, Lorg/c/a/c/b/r;->b:[I

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 588
    iget-object v0, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v1, "{} wrap default {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 549
    :catch_0
    move-exception v0

    .line 551
    :try_start_7
    iget-object v1, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    iget-object v4, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    iget-object v1, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v1}, Lorg/c/a/c/s;->j()V

    .line 553
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 557
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 558
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 559
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 560
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    .line 562
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    .line 563
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0

    .line 568
    :pswitch_0
    iget-object v2, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v2}, Lorg/c/a/c/s;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 569
    iget-object v2, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v2}, Lorg/c/a/c/b/e;->e()V

    .line 595
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v2

    if-gtz v2, :cond_4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v2

    if-lez v2, :cond_0

    :cond_4
    move v0, v1

    goto/16 :goto_0

    .line 573
    :pswitch_1
    iget-object v2, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    invoke-interface {v2}, Lorg/c/a/d/c/d;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v3, "{} unwrap {} {}->{}"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v7}, Lorg/c/a/c/b/e;->t()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-interface {p1}, Lorg/c/a/c/f;->t()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v5}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 577
    :pswitch_2
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v3, :cond_3

    .line 578
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/c/a/c/b/q;->p:Z

    goto :goto_1

    .line 582
    :pswitch_3
    iget-object v2, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v3, "unwrap CLOSE {} {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-interface {v2, v3, v5}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v3, :cond_3

    .line 584
    iget-object v2, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v2}, Lorg/c/a/c/s;->j()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c(Lorg/c/a/c/f;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 602
    invoke-interface {p1}, Lorg/c/a/c/f;->d()Lorg/c/a/c/f;

    move-result-object v0

    instance-of v0, v0, Lorg/c/a/c/b/e;

    if-eqz v0, :cond_0

    .line 603
    invoke-interface {p1}, Lorg/c/a/c/f;->d()Lorg/c/a/c/f;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/b/e;

    invoke-interface {v0}, Lorg/c/a/c/b/e;->w()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/c/a/c/f;->u()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lorg/c/a/c/b/q;)Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method static synthetic d(Lorg/c/a/c/b/q;)Lorg/c/a/d/c/d;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    .line 140
    :try_start_0
    iget v0, p0, Lorg/c/a/c/b/q;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/c/a/c/b/q;->h:I

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/c/a/c/b/q;->i:Lorg/c/a/c/b/s;

    if-nez v0, :cond_1

    .line 144
    sget-object v0, Lorg/c/a/c/b/q;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/b/s;

    iput-object v0, p0, Lorg/c/a/c/b/q;->i:Lorg/c/a/c/b/s;

    .line 145
    iget-object v0, p0, Lorg/c/a/c/b/q;->i:Lorg/c/a/c/b/s;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lorg/c/a/c/b/s;

    iget-object v1, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/c/a/c/b/s;-><init>(II)V

    iput-object v0, p0, Lorg/c/a/c/b/q;->i:Lorg/c/a/c/b/s;

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/b/q;->i:Lorg/c/a/c/b/s;

    iget-object v0, v0, Lorg/c/a/c/b/s;->a:Lorg/c/a/c/b/e;

    iput-object v0, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    .line 148
    iget-object v0, p0, Lorg/c/a/c/b/q;->i:Lorg/c/a/c/b/s;

    iget-object v0, v0, Lorg/c/a/c/b/s;->b:Lorg/c/a/c/b/e;

    iput-object v0, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    .line 149
    iget-object v0, p0, Lorg/c/a/c/b/q;->i:Lorg/c/a/c/b/s;

    iget-object v0, v0, Lorg/c/a/c/b/s;->c:Lorg/c/a/c/b/e;

    iput-object v0, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    .line 150
    sget-object v0, Lorg/c/a/c/b/q;->c:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 153
    :cond_1
    monitor-exit p0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e(Lorg/c/a/c/b/q;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/c/a/c/b/q;->r:Z

    return v0
.end method

.method static synthetic f(Lorg/c/a/c/b/q;)Lorg/c/a/c/s;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 159
    monitor-enter p0

    .line 161
    :try_start_0
    iget v0, p0, Lorg/c/a/c/b/q;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/c/b/q;->h:I

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/c/a/c/b/q;->i:Lorg/c/a/c/b/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    invoke-interface {v0}, Lorg/c/a/c/b/e;->m()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    invoke-interface {v0}, Lorg/c/a/c/b/e;->m()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    invoke-interface {v0}, Lorg/c/a/c/b/e;->m()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    .line 171
    sget-object v0, Lorg/c/a/c/b/q;->c:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lorg/c/a/c/b/q;->i:Lorg/c/a/c/b/s;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/c/b/q;->i:Lorg/c/a/c/b/s;

    .line 175
    :cond_0
    monitor-exit p0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic g(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/e;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->l:Lorg/c/a/c/b/e;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 435
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 439
    iget-object v1, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic h(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/e;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->k:Lorg/c/a/c/b/e;

    return-object v0
.end method

.method static synthetic i(Lorg/c/a/c/b/q;)Lorg/c/a/c/s;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    return-object v0
.end method

.method static synthetic j(Lorg/c/a/c/b/q;)Lorg/c/a/c/s;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    return-object v0
.end method

.method static synthetic k(Lorg/c/a/c/b/q;)Lorg/c/a/c/s;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    return-object v0
.end method

.method static synthetic l(Lorg/c/a/c/b/q;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic m(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->f:Lorg/c/a/c/b/a;

    return-object v0
.end method

.method static synthetic n(Lorg/c/a/c/b/q;)Lorg/c/a/c/b/e;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/c/b/q;->m:Lorg/c/a/c/b/e;

    return-object v0
.end method

.method static synthetic o(Lorg/c/a/c/b/q;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/c/a/c/b/q;->q:Z

    return v0
.end method


# virtual methods
.method protected a()Lorg/c/a/c/b/t;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lorg/c/a/c/b/t;

    invoke-direct {v0, p0}, Lorg/c/a/c/b/t;-><init>(Lorg/c/a/c/b/q;)V

    return-object v0
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v1, "onIdleExpired {}ms on {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lorg/c/a/c/b/q;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    invoke-virtual {v0}, Lorg/c/a/c/b/t;->j()V

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    invoke-virtual {v0}, Lorg/c/a/c/b/t;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 264
    iget-object v1, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/Throwable;)V

    .line 265
    invoke-super {p0, p1, p2}, Lorg/c/a/c/d;->a(J)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    invoke-virtual {v0}, Lorg/c/a/c/b/t;->b()Lorg/c/a/c/r;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 247
    invoke-interface {v0}, Lorg/c/a/c/r;->c()V

    .line 248
    :cond_0
    return-void
.end method

.method public d()Lorg/c/a/c/e;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    return-object v0
.end method

.method public j()Lorg/c/a/c/r;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 183
    :try_start_0
    invoke-direct {p0}, Lorg/c/a/c/b/q;->e()V

    move v0, v1

    .line 187
    :goto_0
    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lorg/c/a/c/b/q;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v2, :cond_4

    .line 193
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/c/a/c/b/q;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)Z

    move-result v2

    .line 196
    :goto_1
    iget-object v0, p0, Lorg/c/a/c/b/q;->f:Lorg/c/a/c/b/a;

    invoke-interface {v0}, Lorg/c/a/c/b/a;->j()Lorg/c/a/c/r;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/b/a;

    .line 197
    iget-object v4, p0, Lorg/c/a/c/b/q;->f:Lorg/c/a/c/b/a;

    if-eq v0, v4, :cond_3

    if-eqz v0, :cond_3

    .line 199
    iput-object v0, p0, Lorg/c/a/c/b/q;->f:Lorg/c/a/c/b/a;

    move v0, v1

    .line 203
    :goto_2
    iget-object v2, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v4, "{} handle {} progress={}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/c/a/c/b/q;->e:Ljavax/net/ssl/SSLSession;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v4, v5}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/c/a/c/b/q;->f()V

    .line 210
    iget-boolean v2, p0, Lorg/c/a/c/b/q;->q:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    invoke-virtual {v2}, Lorg/c/a/c/b/t;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    invoke-virtual {v2}, Lorg/c/a/c/b/t;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iput-boolean v1, p0, Lorg/c/a/c/b/q;->q:Z

    .line 215
    :try_start_1
    iget-object v1, p0, Lorg/c/a/c/b/q;->f:Lorg/c/a/c/b/a;

    invoke-interface {v1}, Lorg/c/a/c/b/a;->k()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 223
    :cond_0
    :goto_3
    throw v0

    .line 208
    :cond_1
    invoke-direct {p0}, Lorg/c/a/c/b/q;->f()V

    .line 210
    iget-boolean v0, p0, Lorg/c/a/c/b/q;->q:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    invoke-virtual {v0}, Lorg/c/a/c/b/t;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    invoke-virtual {v0}, Lorg/c/a/c/b/t;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iput-boolean v1, p0, Lorg/c/a/c/b/q;->q:Z

    .line 215
    :try_start_2
    iget-object v0, p0, Lorg/c/a/c/b/q;->f:Lorg/c/a/c/b/a;

    invoke-interface {v0}, Lorg/c/a/c/b/a;->k()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :cond_2
    :goto_4
    return-object p0

    .line 217
    :catch_0
    move-exception v0

    .line 219
    iget-object v1, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v2, "onInputShutdown failed"

    invoke-interface {v1, v2, v0}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    :try_start_3
    iget-object v0, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    invoke-virtual {v0}, Lorg/c/a/c/b/t;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 221
    :catch_1
    move-exception v0

    .line 222
    iget-object v1, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 217
    :catch_2
    move-exception v1

    .line 219
    iget-object v2, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    const-string v3, "onInputShutdown failed"

    invoke-interface {v2, v3, v1}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    :try_start_4
    iget-object v1, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    invoke-virtual {v1}, Lorg/c/a/c/b/t;->j()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 221
    :catch_3
    move-exception v1

    .line 222
    iget-object v2, p0, Lorg/c/a/c/b/q;->a:Lorg/c/a/d/c/d;

    invoke-interface {v2, v1}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    move v2, v3

    goto/16 :goto_1
.end method

.method public k()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 616
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/c/a/c/d;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/c/a/c/b/q;->g:Lorg/c/a/c/b/t;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
