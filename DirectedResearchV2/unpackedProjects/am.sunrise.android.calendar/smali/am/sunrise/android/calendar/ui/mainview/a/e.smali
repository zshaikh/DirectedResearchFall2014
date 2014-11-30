.class Lam/sunrise/android/calendar/ui/mainview/a/e;
.super Landroid/database/ContentObserver;
.source "RangeOccurrencesLoader.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/a/c;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/mainview/a/c;)V
    .locals 1

    .prologue
    .line 541
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/e;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    .line 542
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 543
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4

    .prologue
    .line 552
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/e;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->d(Lam/sunrise/android/calendar/ui/mainview/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/e;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->b(Lam/sunrise/android/calendar/ui/mainview/a/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 554
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/e;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->f(Lam/sunrise/android/calendar/ui/mainview/a/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/e;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->d(Lam/sunrise/android/calendar/ui/mainview/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/e;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->b(Lam/sunrise/android/calendar/ui/mainview/a/c;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/e;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/mainview/a/c;->c(Lam/sunrise/android/calendar/ui/mainview/a/c;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
