.class public Lam/sunrise/android/calendar/sync/o;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SunriseExecutorService.java"


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x3

    .line 25
    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lam/sunrise/android/calendar/sync/q;

    invoke-direct {v7}, Lam/sunrise/android/calendar/sync/q;-><init>()V

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 27
    return-void
.end method
