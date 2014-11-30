.class Lam/sunrise/android/calendar/ui/mainview/a/o;
.super Landroid/database/ContentObserver;
.source "ScheduleViewRangeOccurrenceLoader.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/a/m;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/mainview/a/m;)V
    .locals 1

    .prologue
    .line 430
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/o;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    .line 431
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 432
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/o;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->d(Lam/sunrise/android/calendar/ui/mainview/a/m;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/o;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b(Lam/sunrise/android/calendar/ui/mainview/a/m;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 443
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/o;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->f(Lam/sunrise/android/calendar/ui/mainview/a/m;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/o;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->d(Lam/sunrise/android/calendar/ui/mainview/a/m;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/o;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b(Lam/sunrise/android/calendar/ui/mainview/a/m;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/o;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/mainview/a/m;->c(Lam/sunrise/android/calendar/ui/mainview/a/m;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
