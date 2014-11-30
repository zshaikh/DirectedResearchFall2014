.class Lam/sunrise/android/calendar/sync/m;
.super Ljava/lang/Object;
.source "SunriseDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/concurrent/CountDownLatch;

.field private b:Lam/sunrise/android/calendar/sync/n;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;Lam/sunrise/android/calendar/sync/n;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/m;->a:Ljava/util/concurrent/CountDownLatch;

    .line 132
    iput-object p2, p0, Lam/sunrise/android/calendar/sync/m;->b:Lam/sunrise/android/calendar/sync/n;

    .line 133
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/m;->b:Lam/sunrise/android/calendar/sync/n;

    invoke-static {v0, p0}, Lam/sunrise/android/calendar/sync/n;->a(Lam/sunrise/android/calendar/sync/n;Lam/sunrise/android/calendar/sync/m;)Lam/sunrise/android/calendar/sync/m;

    .line 134
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/sync/m;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/m;->d:Ljava/util/concurrent/Future;

    return-object p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/m;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 153
    :goto_0
    return-void

    .line 142
    :cond_0
    :try_start_1
    new-instance v0, Lam/sunrise/android/calendar/b/c;

    invoke-direct {v0}, Lam/sunrise/android/calendar/b/c;-><init>()V

    .line 143
    invoke-virtual {v0}, Lam/sunrise/android/calendar/b/c;->a()V

    .line 144
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/m;->b:Lam/sunrise/android/calendar/sync/n;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/sync/n;->run()V

    .line 145
    const-string v1, "SunriseDispatcher"

    const-string v2, "SunriseTask: task \'%s\' completed in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lam/sunrise/android/calendar/sync/m;->b:Lam/sunrise/android/calendar/sync/n;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/sync/n;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lam/sunrise/android/calendar/b/c;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/m;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    :try_start_2
    const-string v1, "SunriseDispatcher"

    const-string v2, "SunriseTask: EXCEPTION -- %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/m;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lam/sunrise/android/calendar/sync/m;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
