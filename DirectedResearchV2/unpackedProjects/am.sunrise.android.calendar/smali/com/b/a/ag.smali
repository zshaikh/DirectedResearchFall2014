.class public Lcom/b/a/ag;
.super Ljava/lang/Object;
.source "Picasso.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/b/a/t;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/b/a/h;

.field private e:Lcom/b/a/aj;

.field private f:Lcom/b/a/al;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ag;->a:Landroid/content/Context;

    .line 412
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/ae;
    .locals 15

    .prologue
    .line 487
    iget-object v1, p0, Lcom/b/a/ag;->a:Landroid/content/Context;

    .line 489
    iget-object v0, p0, Lcom/b/a/ag;->b:Lcom/b/a/t;

    if-nez v0, :cond_0

    .line 490
    invoke-static {v1}, Lcom/b/a/bd;->a(Landroid/content/Context;)Lcom/b/a/t;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ag;->b:Lcom/b/a/t;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/b/a/ag;->d:Lcom/b/a/h;

    if-nez v0, :cond_1

    .line 493
    new-instance v0, Lcom/b/a/y;

    invoke-direct {v0, v1}, Lcom/b/a/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/ag;->d:Lcom/b/a/h;

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 496
    new-instance v0, Lcom/b/a/ao;

    invoke-direct {v0}, Lcom/b/a/ao;-><init>()V

    iput-object v0, p0, Lcom/b/a/ag;->c:Ljava/util/concurrent/ExecutorService;

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/b/a/ag;->f:Lcom/b/a/al;

    if-nez v0, :cond_3

    .line 499
    sget-object v0, Lcom/b/a/al;->a:Lcom/b/a/al;

    iput-object v0, p0, Lcom/b/a/ag;->f:Lcom/b/a/al;

    .line 502
    :cond_3
    new-instance v6, Lcom/b/a/au;

    iget-object v0, p0, Lcom/b/a/ag;->d:Lcom/b/a/h;

    invoke-direct {v6, v0}, Lcom/b/a/au;-><init>(Lcom/b/a/h;)V

    .line 504
    new-instance v0, Lcom/b/a/o;

    iget-object v2, p0, Lcom/b/a/ag;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Lcom/b/a/ae;->a:Landroid/os/Handler;

    iget-object v4, p0, Lcom/b/a/ag;->b:Lcom/b/a/t;

    iget-object v5, p0, Lcom/b/a/ag;->d:Lcom/b/a/h;

    invoke-direct/range {v0 .. v6}, Lcom/b/a/o;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/b/a/t;Lcom/b/a/h;Lcom/b/a/au;)V

    .line 506
    new-instance v7, Lcom/b/a/ae;

    iget-object v10, p0, Lcom/b/a/ag;->d:Lcom/b/a/h;

    iget-object v11, p0, Lcom/b/a/ag;->e:Lcom/b/a/aj;

    iget-object v12, p0, Lcom/b/a/ag;->f:Lcom/b/a/al;

    iget-boolean v14, p0, Lcom/b/a/ag;->g:Z

    move-object v8, v1

    move-object v9, v0

    move-object v13, v6

    invoke-direct/range {v7 .. v14}, Lcom/b/a/ae;-><init>(Landroid/content/Context;Lcom/b/a/o;Lcom/b/a/h;Lcom/b/a/aj;Lcom/b/a/al;Lcom/b/a/au;Z)V

    return-object v7
.end method

.method public a(Lcom/b/a/t;)Lcom/b/a/ag;
    .locals 2

    .prologue
    .line 416
    if-nez p1, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Downloader must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/b/a/ag;->b:Lcom/b/a/t;

    if-eqz v0, :cond_1

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Downloader already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1
    iput-object p1, p0, Lcom/b/a/ag;->b:Lcom/b/a/t;

    .line 423
    return-object p0
.end method
