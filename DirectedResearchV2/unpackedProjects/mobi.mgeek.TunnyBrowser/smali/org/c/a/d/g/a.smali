.class public Lorg/c/a/d/g/a;
.super Lorg/c/a/d/b/a;
.source "QueuedThreadPool.java"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Lorg/c/a/d/g/d;


# static fields
.field private static final a:Lorg/c/a/d/c/d;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final f:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/c/a/d/g/a;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/g/a;->a:Lorg/c/a/d/c/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lorg/c/a/d/b/a;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/g/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/g/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/g/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/g/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/g/a;->g:Ljava/lang/Object;

    .line 55
    const v0, 0xea60

    iput v0, p0, Lorg/c/a/d/g/a;->j:I

    .line 56
    const/16 v0, 0xfe

    iput v0, p0, Lorg/c/a/d/g/a;->k:I

    .line 57
    const/16 v0, 0x8

    iput v0, p0, Lorg/c/a/d/g/a;->l:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/c/a/d/g/a;->m:I

    .line 59
    const/4 v0, 0x5

    iput v0, p0, Lorg/c/a/d/g/a;->n:I

    .line 60
    iput-boolean v1, p0, Lorg/c/a/d/g/a;->o:Z

    .line 61
    const/16 v0, 0x64

    iput v0, p0, Lorg/c/a/d/g/a;->p:I

    .line 62
    iput-boolean v1, p0, Lorg/c/a/d/g/a;->q:Z

    .line 530
    new-instance v0, Lorg/c/a/d/g/b;

    invoke-direct {v0, p0}, Lorg/c/a/d/g/b;-><init>(Lorg/c/a/d/g/a;)V

    iput-object v0, p0, Lorg/c/a/d/g/a;->r:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qtp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/g/a;->i:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic a(Lorg/c/a/d/g/a;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/c/a/d/g/a;->h:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic b(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/c/a/d/g/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private b(I)Z
    .locals 4

    .prologue
    .line 428
    add-int/lit8 v0, p1, 0x1

    .line 429
    iget-object v1, p0, Lorg/c/a/d/g/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    const/4 v0, 0x0

    .line 449
    :goto_0
    return v0

    .line 435
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/c/a/d/g/a;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/c/a/d/g/a;->b(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 436
    iget-boolean v1, p0, Lorg/c/a/d/g/a;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 437
    iget v1, p0, Lorg/c/a/d/g/a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/c/a/d/g/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lorg/c/a/d/g/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    const/4 v0, 0x1

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    .line 447
    iget-object v1, p0, Lorg/c/a/d/g/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method static synthetic c(Lorg/c/a/d/g/a;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/c/a/d/g/a;->j:I

    return v0
.end method

.method static synthetic d(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/c/a/d/g/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic e(Lorg/c/a/d/g/a;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/c/a/d/g/a;->l:I

    return v0
.end method

.method static synthetic e()Lorg/c/a/d/c/d;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/c/a/d/g/a;->a:Lorg/c/a/d/c/d;

    return-object v0
.end method

.method private f()Ljava/lang/Runnable;
    .locals 4

    .prologue
    .line 526
    iget-object v0, p0, Lorg/c/a/d/g/a;->h:Ljava/util/concurrent/BlockingQueue;

    iget v1, p0, Lorg/c/a/d/g/a;->j:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lorg/c/a/d/g/a;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/c/a/d/g/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic g(Lorg/c/a/d/g/a;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/c/a/d/g/a;->f()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lorg/c/a/d/g/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/c/a/d/g/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lorg/c/a/d/g/a;->k:I

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 205
    iput p1, p0, Lorg/c/a/d/g/a;->k:I

    .line 206
    iget v0, p0, Lorg/c/a/d/g/a;->l:I

    iget v1, p0, Lorg/c/a/d/g/a;->k:I

    if-le v0, v1, :cond_0

    .line 207
    iget v0, p0, Lorg/c/a/d/g/a;->k:I

    iput v0, p0, Lorg/c/a/d/g/a;->l:I

    .line 208
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/c/a/d/g/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iput-object p1, p0, Lorg/c/a/d/g/a;->i:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lorg/c/a/d/g/a;->o:Z

    .line 173
    return-void
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p0}, Lorg/c/a/d/g/a;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    iget-object v2, p0, Lorg/c/a/d/g/a;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    .line 358
    invoke-virtual {p0}, Lorg/c/a/d/g/a;->d()I

    move-result v3

    .line 359
    iget-object v4, p0, Lorg/c/a/d/g/a;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    if-eqz v3, :cond_0

    if-le v2, v3, :cond_1

    .line 364
    :cond_0
    iget-object v1, p0, Lorg/c/a/d/g/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 365
    iget v2, p0, Lorg/c/a/d/g/a;->k:I

    if-ge v1, v2, :cond_1

    .line 366
    invoke-direct {p0, v1}, Lorg/c/a/d/g/a;->b(I)Z

    .line 372
    :cond_1
    :goto_0
    return v0

    .line 371
    :cond_2
    sget-object v2, Lorg/c/a/d/g/a;->a:Lorg/c/a/d/c/d;

    const-string v3, "Dispatched {} to stopped {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p0, v4, v0

    invoke-interface {v2, v3, v4}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 372
    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lorg/c/a/d/g/a;->l:I

    return v0
.end method

.method protected b(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 455
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/c/a/d/g/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected c(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 608
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 609
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/c/a/d/g/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lorg/c/a/d/g/a;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0

    .line 380
    :cond_0
    return-void
.end method

.method protected h()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lorg/c/a/d/b/a;->h()V

    .line 97
    iget-object v0, p0, Lorg/c/a/d/g/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 99
    iget-object v0, p0, Lorg/c/a/d/g/a;->h:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 101
    iget v0, p0, Lorg/c/a/d/g/a;->m:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p0, Lorg/c/a/d/g/a;->m:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    :goto_0
    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    iput-object v0, p0, Lorg/c/a/d/g/a;->h:Ljava/util/concurrent/BlockingQueue;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/c/a/d/g/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 106
    :goto_1
    invoke-virtual {p0}, Lorg/c/a/d/g/a;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/c/a/d/g/a;->l:I

    if-ge v0, v1, :cond_2

    .line 108
    invoke-direct {p0, v0}, Lorg/c/a/d/g/a;->b(I)Z

    .line 109
    iget-object v0, p0, Lorg/c/a/d/g/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_1

    .line 101
    :cond_1
    new-instance v0, Lorg/c/a/d/c;

    iget v1, p0, Lorg/c/a/d/g/a;->l:I

    iget v2, p0, Lorg/c/a/d/g/a;->l:I

    invoke-direct {v0, v1, v2}, Lorg/c/a/d/c;-><init>(II)V

    goto :goto_0

    .line 111
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/c/a/d/g/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/d/g/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/d/g/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/d/g/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/d/g/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/c/a/d/g/a;->h:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/d/g/a;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    goto :goto_0
.end method
