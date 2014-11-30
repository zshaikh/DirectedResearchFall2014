.class public Lam/sunrise/android/calendar/sync/l;
.super Ljava/lang/Object;
.source "SunriseDispatcher.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/CountDownLatch;

.field private d:[Lam/sunrise/android/calendar/sync/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/l;->a:Landroid/content/Context;

    .line 37
    new-instance v0, Lam/sunrise/android/calendar/sync/o;

    invoke-direct {v0}, Lam/sunrise/android/calendar/sync/o;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/l;->b:Ljava/util/concurrent/ExecutorService;

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/l;->c:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 99
    const-string v0, "SunriseDispatcher"

    const-string v1, "waitForCompletion: no tasks running"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :goto_0
    return-void

    .line 104
    :cond_0
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/l;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iput-object v6, p0, Lam/sunrise/android/calendar/sync/l;->c:Ljava/util/concurrent/CountDownLatch;

    .line 110
    iput-object v6, p0, Lam/sunrise/android/calendar/sync/l;->d:[Lam/sunrise/android/calendar/sync/m;

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :try_start_1
    const-string v1, "SunriseDispatcher"

    const-string v2, "waitForCompletion: EXCEPTION -- %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iput-object v6, p0, Lam/sunrise/android/calendar/sync/l;->c:Ljava/util/concurrent/CountDownLatch;

    .line 110
    iput-object v6, p0, Lam/sunrise/android/calendar/sync/l;->d:[Lam/sunrise/android/calendar/sync/m;

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    iput-object v6, p0, Lam/sunrise/android/calendar/sync/l;->c:Ljava/util/concurrent/CountDownLatch;

    .line 110
    iput-object v6, p0, Lam/sunrise/android/calendar/sync/l;->d:[Lam/sunrise/android/calendar/sync/m;

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lam/sunrise/android/calendar/sync/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 42
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/l;->c:Ljava/util/concurrent/CountDownLatch;

    .line 43
    new-array v0, v2, [Lam/sunrise/android/calendar/sync/m;

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/l;->d:[Lam/sunrise/android/calendar/sync/m;

    .line 45
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 46
    new-instance v3, Lam/sunrise/android/calendar/sync/m;

    iget-object v4, p0, Lam/sunrise/android/calendar/sync/l;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/sync/n;

    invoke-direct {v3, v4, v0}, Lam/sunrise/android/calendar/sync/m;-><init>(Ljava/util/concurrent/CountDownLatch;Lam/sunrise/android/calendar/sync/n;)V

    .line 47
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/l;->d:[Lam/sunrise/android/calendar/sync/m;

    aput-object v3, v0, v1

    .line 48
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/l;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v3, v0}, Lam/sunrise/android/calendar/sync/m;->a(Lam/sunrise/android/calendar/sync/m;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method
