.class public abstract Lcom/dolphin/browser/util/f;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/dolphin/browser/util/l;

.field private static volatile e:Ljava/util/concurrent/Executor;

.field public static final g:Ljava/util/concurrent/Executor;

.field public static final h:Ljava/util/concurrent/Executor;

.field public static final i:Ljava/util/concurrent/Executor;


# instance fields
.field private final f:Lcom/dolphin/browser/util/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/q",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile k:Lcom/dolphin/browser/util/p;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v3, 0x1

    const/16 v2, 0x80

    const/16 v1, 0xa

    .line 187
    new-instance v0, Lcom/dolphin/browser/util/g;

    invoke-direct {v0}, Lcom/dolphin/browser/util/g;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/f;->a:Ljava/util/concurrent/ThreadFactory;

    .line 195
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/dolphin/browser/util/f;->b:Ljava/util/concurrent/BlockingQueue;

    .line 197
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/dolphin/browser/util/f;->c:Ljava/util/concurrent/BlockingQueue;

    .line 203
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/dolphin/browser/util/f;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/dolphin/browser/util/f;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/dolphin/browser/util/f;->g:Ljava/util/concurrent/Executor;

    .line 207
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/dolphin/browser/util/f;->c:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/dolphin/browser/util/f;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/dolphin/browser/util/f;->h:Ljava/util/concurrent/Executor;

    .line 215
    new-instance v0, Lcom/dolphin/browser/util/n;

    new-instance v1, Lcom/dolphin/browser/util/m;

    invoke-direct {v1}, Lcom/dolphin/browser/util/m;-><init>()V

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/n;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/dolphin/browser/util/f;->i:Ljava/util/concurrent/Executor;

    .line 220
    new-instance v0, Lcom/dolphin/browser/util/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/l;-><init>(Lcom/dolphin/browser/util/g;)V

    sput-object v0, Lcom/dolphin/browser/util/f;->d:Lcom/dolphin/browser/util/l;

    .line 222
    sget-object v0, Lcom/dolphin/browser/util/f;->h:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/dolphin/browser/util/f;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    sget-object v0, Lcom/dolphin/browser/util/p;->a:Lcom/dolphin/browser/util/p;

    iput-object v0, p0, Lcom/dolphin/browser/util/f;->k:Lcom/dolphin/browser/util/p;

    .line 228
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/util/f;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 229
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/util/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 343
    new-instance v0, Lcom/dolphin/browser/util/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/h;-><init>(Lcom/dolphin/browser/util/f;)V

    iput-object v0, p0, Lcom/dolphin/browser/util/f;->f:Lcom/dolphin/browser/util/q;

    .line 359
    new-instance v0, Lcom/dolphin/browser/util/i;

    iget-object v1, p0, Lcom/dolphin/browser/util/f;->f:Lcom/dolphin/browser/util/q;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/util/i;-><init>(Lcom/dolphin/browser/util/f;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/dolphin/browser/util/f;->j:Ljava/util/concurrent/FutureTask;

    .line 374
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/util/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/util/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/util/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    .prologue
    .line 179
    invoke-static {p0}, Lcom/dolphin/browser/util/f;->b(I)V

    return-void
.end method

.method private static b(I)V
    .locals 2

    .prologue
    .line 333
    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/util/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/f;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/util/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/f;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/dolphin/browser/util/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 378
    if-nez v0, :cond_0

    .line 379
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 385
    sget-object v0, Lcom/dolphin/browser/util/f;->d:Lcom/dolphin/browser/util/l;

    new-instance v1, Lcom/dolphin/browser/util/k;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/util/k;-><init>(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/dolphin/browser/util/l;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 388
    return-object p1
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/dolphin/browser/util/f;->d:Lcom/dolphin/browser/util/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/l;->getLooper()Landroid/os/Looper;

    .line 324
    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/dolphin/browser/util/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/f;->b(Ljava/lang/Object;)V

    .line 706
    :goto_0
    sget-object v0, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    iput-object v0, p0, Lcom/dolphin/browser/util/f;->k:Lcom/dolphin/browser/util/p;

    .line 707
    return-void

    .line 704
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/f;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/dolphin/browser/util/f",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/dolphin/browser/util/f;->k:Lcom/dolphin/browser/util/p;

    sget-object v1, Lcom/dolphin/browser/util/p;->a:Lcom/dolphin/browser/util/p;

    if-eq v0, v1, :cond_0

    .line 641
    sget-object v0, Lcom/dolphin/browser/util/j;->a:[I

    iget-object v1, p0, Lcom/dolphin/browser/util/f;->k:Lcom/dolphin/browser/util/p;

    invoke-virtual {v1}, Lcom/dolphin/browser/util/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 652
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/p;->b:Lcom/dolphin/browser/util/p;

    iput-object v0, p0, Lcom/dolphin/browser/util/f;->k:Lcom/dolphin/browser/util/p;

    .line 654
    invoke-virtual {p0}, Lcom/dolphin/browser/util/f;->a()V

    .line 656
    iget-object v0, p0, Lcom/dolphin/browser/util/f;->f:Lcom/dolphin/browser/util/q;

    iput-object p2, v0, Lcom/dolphin/browser/util/q;->b:[Ljava/lang/Object;

    .line 657
    sget-object v0, Lcom/dolphin/browser/util/f;->g:Ljava/util/concurrent/Executor;

    if-ne p1, v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/dolphin/browser/util/f;->f:Lcom/dolphin/browser/util/q;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/util/q;->c:Z

    .line 662
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/util/f;->j:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 664
    return-object p0

    .line 643
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/util/f;->f:Lcom/dolphin/browser/util/q;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dolphin/browser/util/q;->c:Z

    goto :goto_0

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 441
    return-void
.end method

.method protected varargs a_([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 454
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/dolphin/browser/util/f;->b()V

    .line 473
    return-void
.end method

.method public final b(Z)Z
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/dolphin/browser/util/f;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 535
    iget-object v0, p0, Lcom/dolphin/browser/util/f;->j:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final varargs d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/dolphin/browser/util/f",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 602
    sget-object v0, Lcom/dolphin/browser/util/f;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/util/f;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/dolphin/browser/util/p;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/dolphin/browser/util/f;->k:Lcom/dolphin/browser/util/p;

    return-object v0
.end method

.method protected final varargs e([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/dolphin/browser/util/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    sget-object v0, Lcom/dolphin/browser/util/f;->d:Lcom/dolphin/browser/util/l;

    const/4 v1, 0x2

    new-instance v2, Lcom/dolphin/browser/util/k;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/util/k;-><init>(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/l;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 698
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/dolphin/browser/util/f;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
