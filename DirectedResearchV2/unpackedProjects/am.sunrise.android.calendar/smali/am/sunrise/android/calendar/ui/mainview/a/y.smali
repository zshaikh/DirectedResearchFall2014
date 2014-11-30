.class Lam/sunrise/android/calendar/ui/mainview/a/y;
.super Ljava/lang/Object;
.source "ScheduleViewRangeOccurrencesLoaderTask.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/mainview/a/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "*>;>",
        "Ljava/lang/Object;",
        "Lam/sunrise/android/calendar/ui/mainview/a/z;"
    }
.end annotation


# instance fields
.field a:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/AsyncTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/y;->a:Landroid/os/AsyncTask;

    .line 128
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/y;->a:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/y;->a:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/y;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

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
    .line 138
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/y;->a:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/y;->a:Landroid/os/AsyncTask;

    .line 142
    :cond_0
    return-void
.end method
