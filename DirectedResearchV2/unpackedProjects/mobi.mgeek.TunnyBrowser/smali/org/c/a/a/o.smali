.class public Lorg/c/a/a/o;
.super Ljava/lang/Object;
.source "HttpDestination.java"


# static fields
.field private static final a:Lorg/c/a/d/c/d;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/c/a/a/t;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/c/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/c/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lorg/c/a/a/k;

.field private final g:Lorg/c/a/a/f;

.field private final h:Z

.field private final i:Lorg/c/a/c/o;

.field private volatile j:I

.field private volatile k:I

.field private l:I

.field private m:I

.field private volatile n:Lorg/c/a/a/f;

.field private o:Lorg/c/a/a/a/a;

.field private p:Lorg/c/a/b/z;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/c/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/c/a/a/o;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/a/o;->a:Lorg/c/a/d/c/d;

    return-void
.end method

.method constructor <init>(Lorg/c/a/a/k;Lorg/c/a/a/f;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/o;->c:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p0, Lorg/c/a/a/o;->d:Ljava/util/concurrent/BlockingQueue;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/o;->e:Ljava/util/List;

    .line 65
    iput v3, p0, Lorg/c/a/a/o;->l:I

    .line 66
    iput v3, p0, Lorg/c/a/a/o;->m:I

    .line 76
    iput-object p1, p0, Lorg/c/a/a/o;->f:Lorg/c/a/a/k;

    .line 77
    iput-object p2, p0, Lorg/c/a/a/o;->g:Lorg/c/a/a/f;

    .line 78
    iput-boolean p3, p0, Lorg/c/a/a/o;->h:Z

    .line 79
    iget-object v0, p0, Lorg/c/a/a/o;->f:Lorg/c/a/a/k;

    invoke-virtual {v0}, Lorg/c/a/a/k;->f()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/o;->j:I

    .line 80
    iget-object v0, p0, Lorg/c/a/a/o;->f:Lorg/c/a/a/k;

    invoke-virtual {v0}, Lorg/c/a/a/k;->g()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/o;->k:I

    .line 81
    invoke-virtual {p2}, Lorg/c/a/a/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p2}, Lorg/c/a/a/f;->b()I

    move-result v2

    iget-boolean v1, p0, Lorg/c/a/a/o;->h:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x1bb

    :goto_0
    if-eq v2, v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/c/a/a/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    new-instance v1, Lorg/c/a/c/o;

    invoke-direct {v1, v0}, Lorg/c/a/c/o;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/c/a/a/o;->i:Lorg/c/a/c/o;

    .line 85
    return-void

    .line 82
    :cond_1
    const/16 v1, 0x50

    goto :goto_0
.end method

.method static synthetic a(Lorg/c/a/a/o;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Lorg/c/a/a/k;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/c/a/a/o;->f:Lorg/c/a/a/k;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/c/a/a/a/a;)V
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/o;->p:Lorg/c/a/b/z;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lorg/c/a/b/z;

    invoke-direct {v0}, Lorg/c/a/b/z;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/o;->p:Lorg/c/a/b/z;

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/c/a/a/o;->p:Lorg/c/a/b/z;

    invoke-virtual {v0, p1, p2}, Lorg/c/a/b/z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit p0

    .line 153
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 288
    const/4 v2, 0x0

    .line 291
    monitor-enter p0

    .line 293
    :try_start_0
    iget v0, p0, Lorg/c/a/a/o;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/o;->l:I

    .line 294
    iget v0, p0, Lorg/c/a/a/o;->m:I

    if-lez v0, :cond_2

    .line 297
    iget v0, p0, Lorg/c/a/a/o;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/o;->m:I

    move v0, v1

    .line 310
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lorg/c/a/a/o;->f()V

    .line 315
    :cond_0
    if-eqz p1, :cond_1

    .line 319
    :try_start_1
    iget-object v0, p0, Lorg/c/a/a/o;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    :cond_1
    :goto_1
    return-void

    .line 299
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 301
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/t;

    .line 302
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lorg/c/a/a/t;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    invoke-virtual {v0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/c/a/a/r;->a(Ljava/lang/Throwable;)V

    .line 307
    :cond_3
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/c/a/a/o;->f:Lorg/c/a/a/k;

    invoke-virtual {v0}, Lorg/c/a/a/k;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    const/4 v0, 0x1

    move-object p1, v2

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 321
    :catch_0
    move-exception v0

    .line 323
    sget-object v1, Lorg/c/a/a/o;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move v0, v1

    move-object p1, v2

    goto :goto_0
.end method

.method public a(Lorg/c/a/a/a/a;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lorg/c/a/a/o;->o:Lorg/c/a/a/a/a;

    .line 635
    return-void
.end method

.method public a(Lorg/c/a/a/a;)V
    .locals 5

    .prologue
    .line 344
    const/4 v2, 0x0

    .line 346
    monitor-enter p0

    .line 348
    :try_start_0
    iget v0, p0, Lorg/c/a/a/o;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/o;->l:I

    .line 349
    iget-object v0, p0, Lorg/c/a/a/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget v0, p0, Lorg/c/a/a/o;->m:I

    if-lez v0, :cond_1

    .line 354
    iget v0, p0, Lorg/c/a/a/o;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/o;->m:I

    .line 378
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    if-eqz p1, :cond_0

    .line 384
    :try_start_1
    iget-object v0, p0, Lorg/c/a/a/o;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    :cond_0
    :goto_1
    return-void

    .line 356
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 358
    invoke-virtual {p1}, Lorg/c/a/a/a;->g()V

    .line 359
    iget-object v0, p0, Lorg/c/a/a/o;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v2

    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {p1}, Lorg/c/a/a/a;->l()Lorg/c/a/c/s;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Lorg/c/a/a/o;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/c/a/a/z;

    if-eqz v1, :cond_3

    .line 366
    check-cast v0, Lorg/c/a/a/z;

    .line 367
    iget-object v1, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/t;

    .line 368
    new-instance v3, Lorg/c/a/a/q;

    invoke-virtual {p0}, Lorg/c/a/a/o;->b()Lorg/c/a/a/f;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0, v1}, Lorg/c/a/a/q;-><init>(Lorg/c/a/a/o;Lorg/c/a/a/f;Lorg/c/a/a/z;Lorg/c/a/a/t;)V

    .line 369
    invoke-virtual {p0}, Lorg/c/a/a/o;->g()Lorg/c/a/a/f;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/c/a/a/q;->a(Lorg/c/a/a/f;)V

    .line 370
    invoke-virtual {p0, p1, v3}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Lorg/c/a/a/t;)V

    move-object p1, v2

    .line 371
    goto :goto_0

    .line 374
    :cond_3
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/t;

    .line 375
    invoke-virtual {p0, p1, v0}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Lorg/c/a/a/t;)V

    move-object p1, v2

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 386
    :catch_0
    move-exception v0

    .line 388
    sget-object v1, Lorg/c/a/a/o;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected a(Lorg/c/a/a/a;Lorg/c/a/a/t;)V
    .locals 2

    .prologue
    .line 577
    monitor-enter p0

    .line 581
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/c/a/a/a;->a(Lorg/c/a/a/t;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    invoke-virtual {p2}, Lorg/c/a/a/t;->g()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 584
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 585
    :cond_0
    invoke-virtual {p0, p1}, Lorg/c/a/a/o;->b(Lorg/c/a/a/a;)V

    .line 587
    :cond_1
    monitor-exit p0

    .line 588
    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lorg/c/a/a/a;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 395
    invoke-virtual {p1}, Lorg/c/a/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p1, v0}, Lorg/c/a/a/a;->a(Z)V

    .line 398
    :cond_0
    if-eqz p2, :cond_1

    .line 402
    :try_start_0
    invoke-virtual {p1}, Lorg/c/a/a/a;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/c/a/a/o;->f:Lorg/c/a/a/k;

    invoke-virtual {v1}, Lorg/c/a/a/k;->r()Z

    move-result v1

    if-nez v1, :cond_3

    .line 443
    :cond_2
    :goto_1
    return-void

    .line 404
    :catch_0
    move-exception v1

    .line 406
    sget-object v2, Lorg/c/a/a/o;->a:Lorg/c/a/d/c/d;

    invoke-interface {v2, v1}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 413
    :cond_3
    if-nez p2, :cond_5

    invoke-virtual {p1}, Lorg/c/a/a/a;->l()Lorg/c/a/c/s;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/c/s;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 415
    monitor-enter p0

    .line 417
    :try_start_1
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 419
    invoke-virtual {p1}, Lorg/c/a/a/a;->g()V

    .line 420
    iget-object v0, p0, Lorg/c/a/a/o;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 428
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 424
    :cond_4
    :try_start_2
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/t;

    .line 425
    invoke-virtual {p0, p1, v0}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Lorg/c/a/a/t;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 433
    :cond_5
    monitor-enter p0

    .line 435
    :try_start_3
    iget-object v1, p0, Lorg/c/a/a/o;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 436
    iget-object v1, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 437
    const/4 v0, 0x1

    .line 438
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 440
    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {p0}, Lorg/c/a/a/o;->f()V

    goto :goto_1

    .line 438
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public a(Lorg/c/a/a/f;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lorg/c/a/a/o;->n:Lorg/c/a/a/f;

    .line 620
    return-void
.end method

.method public a(Lorg/c/a/a/t;)V
    .locals 7

    .prologue
    .line 467
    iget-object v0, p0, Lorg/c/a/a/o;->f:Lorg/c/a/a/k;

    invoke-virtual {v0}, Lorg/c/a/a/k;->e()Ljava/util/LinkedList;

    move-result-object v3

    .line 469
    if-eqz v3, :cond_0

    .line 472
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    move v2, v0

    :goto_0
    if-lez v2, :cond_0

    .line 474
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 479
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/c/a/a/o;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lorg/c/a/a/t;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 480
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/r;

    .line 481
    invoke-virtual {p1, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/a/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v1

    .line 485
    new-instance v2, Lorg/c/a/a/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to instantiate registered listener for destination: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1}, Lorg/c/a/a/p;-><init>(Lorg/c/a/a/o;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 494
    :cond_0
    iget-object v0, p0, Lorg/c/a/a/o;->f:Lorg/c/a/a/k;

    invoke-virtual {v0}, Lorg/c/a/a/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    new-instance v0, Lorg/c/a/a/a/f;

    invoke-direct {v0, p0, p1}, Lorg/c/a/a/a/f;-><init>(Lorg/c/a/a/o;Lorg/c/a/a/t;)V

    invoke-virtual {p1, v0}, Lorg/c/a/a/t;->a(Lorg/c/a/a/r;)V

    .line 499
    :cond_1
    invoke-virtual {p0, p1}, Lorg/c/a/a/o;->c(Lorg/c/a/a/t;)V

    .line 500
    return-void
.end method

.method public b()Lorg/c/a/a/f;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/c/a/a/o;->g:Lorg/c/a/a/f;

    return-object v0
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 330
    monitor-enter p0

    .line 332
    :try_start_0
    iget v0, p0, Lorg/c/a/a/o;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/c/a/a/o;->l:I

    .line 333
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/t;

    .line 336
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v0}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/c/a/a/r;->b(Ljava/lang/Throwable;)V

    .line 339
    :cond_0
    monitor-exit p0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lorg/c/a/a/a;)V
    .locals 2

    .prologue
    .line 448
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/c/a/a/a;->l()Lorg/c/a/c/s;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/c/a/a/a;->l()Lorg/c/a/c/s;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/s;->s()I

    move-result v0

    int-to-long v0, v0

    .line 449
    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/a;->a(J)V

    .line 451
    const/4 v0, 0x0

    .line 452
    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v1, p0, Lorg/c/a/a/o;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 455
    iget-object v1, p0, Lorg/c/a/a/o;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 457
    iget-object v1, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/c/a/a/o;->f:Lorg/c/a/a/k;

    invoke-virtual {v1}, Lorg/c/a/a/k;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const/4 v0, 0x1

    .line 459
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {p0}, Lorg/c/a/a/o;->f()V

    .line 463
    :cond_1
    return-void

    .line 448
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lorg/c/a/a/t;)V
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p1}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/a/r;->f()V

    .line 505
    invoke-virtual {p1}, Lorg/c/a/a/t;->h()V

    .line 506
    invoke-virtual {p0, p1}, Lorg/c/a/a/o;->c(Lorg/c/a/a/t;)V

    .line 507
    return-void
.end method

.method protected c(Lorg/c/a/a/t;)V
    .locals 4

    .prologue
    .line 513
    iget-object v0, p0, Lorg/c/a/a/o;->q:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 515
    const/4 v1, 0x0

    .line 516
    iget-object v0, p0, Lorg/c/a/a/o;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/b/c;

    .line 518
    if-nez v1, :cond_0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    :goto_1
    invoke-virtual {v0}, Lorg/c/a/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0}, Lorg/c/a/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 521
    :cond_0
    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 526
    :cond_1
    if-eqz v1, :cond_2

    .line 527
    const-string v0, "Cookie"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_2
    iget-object v0, p0, Lorg/c/a/a/o;->p:Lorg/c/a/b/z;

    if-eqz v0, :cond_3

    .line 533
    iget-object v0, p0, Lorg/c/a/a/o;->p:Lorg/c/a/b/z;

    invoke-virtual {p1}, Lorg/c/a/a/t;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/b/z;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/a/a;

    .line 534
    if-eqz v0, :cond_3

    .line 535
    invoke-interface {v0, p1}, Lorg/c/a/a/a/a;->a(Lorg/c/a/a/t;)V

    .line 540
    :cond_3
    invoke-virtual {p1, p0}, Lorg/c/a/a/t;->b(Lorg/c/a/a/o;)V

    .line 542
    invoke-virtual {p0}, Lorg/c/a/a/o;->e()Lorg/c/a/a/a;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_5

    .line 545
    invoke-virtual {p0, v0, p1}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Lorg/c/a/a/t;)V

    .line 563
    :cond_4
    :goto_2
    return-void

    .line 549
    :cond_5
    const/4 v0, 0x0

    .line 550
    monitor-enter p0

    .line 552
    :try_start_0
    iget-object v1, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/c/a/a/o;->k:I

    if-ne v1, v2, :cond_6

    .line 553
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue full for address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/o;->g:Lorg/c/a/a/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 555
    :cond_6
    :try_start_1
    iget-object v1, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v1, p0, Lorg/c/a/a/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/c/a/a/o;->l:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/c/a/a/o;->j:I

    if-ge v1, v2, :cond_7

    .line 557
    const/4 v0, 0x1

    .line 558
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    if-eqz v0, :cond_4

    .line 561
    invoke-virtual {p0}, Lorg/c/a/a/o;->f()V

    goto :goto_2
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/c/a/a/o;->h:Z

    return v0
.end method

.method public d()Lorg/c/a/c/f;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/c/a/a/o;->i:Lorg/c/a/c/o;

    return-object v0
.end method

.method protected d(Lorg/c/a/a/t;)V
    .locals 1

    .prologue
    .line 569
    monitor-enter p0

    .line 571
    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 572
    monitor-exit p0

    .line 573
    return-void

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Lorg/c/a/a/a;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 238
    move-object v0, v1

    .line 241
    :cond_0
    monitor-enter p0

    .line 243
    if-eqz v0, :cond_1

    .line 245
    :try_start_0
    iget-object v2, p0, Lorg/c/a/a/o;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v0}, Lorg/c/a/a/a;->f()V

    move-object v0, v1

    .line 249
    :cond_1
    iget-object v2, p0, Lorg/c/a/a/o;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 250
    iget-object v0, p0, Lorg/c/a/a/o;->e:Ljava/util/List;

    iget-object v2, p0, Lorg/c/a/a/o;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/a;

    .line 251
    :cond_2
    monitor-exit p0

    .line 253
    if-nez v0, :cond_3

    .line 262
    :goto_0
    return-object v1

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 260
    :cond_3
    invoke-virtual {v0}, Lorg/c/a/a/a;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 262
    goto :goto_0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 271
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :try_start_1
    iget v0, p0, Lorg/c/a/a/o;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/c/a/a/o;->l:I

    .line 274
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :try_start_2
    iget-object v0, p0, Lorg/c/a/a/o;->f:Lorg/c/a/a/k;

    iget-object v0, v0, Lorg/c/a/a/k;->b:Lorg/c/a/a/m;

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0, p0}, Lorg/c/a/a/m;->a(Lorg/c/a/a/o;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 274
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    sget-object v1, Lorg/c/a/a/o;->a:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    .line 282
    invoke-virtual {p0, v0}, Lorg/c/a/a/o;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public g()Lorg/c/a/a/f;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lorg/c/a/a/o;->n:Lorg/c/a/a/f;

    return-object v0
.end method

.method public h()Lorg/c/a/a/a/a;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lorg/c/a/a/o;->o:Lorg/c/a/a/a/a;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lorg/c/a/a/o;->n:Lorg/c/a/a/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    const-string v0, "HttpDestination@%x//%s:%d(%d/%d,%d,%d/%d)%n"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/c/a/a/o;->g:Lorg/c/a/a/f;

    invoke-virtual {v3}, Lorg/c/a/a/f;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/c/a/a/o;->g:Lorg/c/a/a/f;

    invoke-virtual {v3}, Lorg/c/a/a/f;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/c/a/a/o;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lorg/c/a/a/o;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/c/a/a/o;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/c/a/a/o;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lorg/c/a/a/o;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
