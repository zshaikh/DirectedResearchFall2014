.class Lam/sunrise/android/calendar/ui/mainview/a/n;
.super Ljava/lang/Object;
.source "ScheduleViewRangeOccurrenceLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/a/m;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/mainview/a/m;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/n;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/n;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Lam/sunrise/android/calendar/ui/mainview/a/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/n;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->d(Lam/sunrise/android/calendar/ui/mainview/a/m;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/n;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b(Lam/sunrise/android/calendar/ui/mainview/a/m;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/n;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/mainview/a/m;->c(Lam/sunrise/android/calendar/ui/mainview/a/m;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/n;->a:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->e(Lam/sunrise/android/calendar/ui/mainview/a/m;)V

    goto :goto_0
.end method
