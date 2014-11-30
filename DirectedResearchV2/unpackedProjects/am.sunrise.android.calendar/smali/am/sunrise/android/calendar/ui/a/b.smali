.class public Lam/sunrise/android/calendar/ui/a/b;
.super Ljava/lang/Object;
.source "AsyncAuthenticationTokenGrabberTask.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/a/c;)V
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a/b;->b()V

    .line 39
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/ui/a/d;

    invoke-direct {v0, p1, p2}, Lam/sunrise/android/calendar/ui/a/d;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/a/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/a/b;->a:Lam/sunrise/android/calendar/ui/a/d;

    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/b;->a:Lam/sunrise/android/calendar/ui/a/d;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/a/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/b;->a:Lam/sunrise/android/calendar/ui/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/b;->a:Lam/sunrise/android/calendar/ui/a/d;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/a/d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/a/b;->a:Lam/sunrise/android/calendar/ui/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/a/d;->cancel(Z)Z

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/a/b;->a:Lam/sunrise/android/calendar/ui/a/d;

    .line 48
    return-void
.end method
