.class Lam/sunrise/android/calendar/sync/q;
.super Ljava/lang/Object;
.source "SunriseExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lam/sunrise/android/calendar/sync/p;

    invoke-direct {v0, p1}, Lam/sunrise/android/calendar/sync/p;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
