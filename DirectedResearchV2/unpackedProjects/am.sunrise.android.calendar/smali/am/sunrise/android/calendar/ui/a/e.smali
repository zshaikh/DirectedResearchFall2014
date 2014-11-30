.class public Lam/sunrise/android/calendar/ui/a/e;
.super Ljava/lang/Object;
.source "SignOutTask.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lam/sunrise/android/calendar/ui/a/g;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/a/g;-><init>(Landroid/app/Activity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/a/g;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    return-void
.end method
