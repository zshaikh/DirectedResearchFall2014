.class Lam/sunrise/android/calendar/ui/mainview/a/d;
.super Ljava/lang/Object;
.source "RangeOccurrencesLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/a/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/mainview/a/c;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/d;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 529
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/d;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Lam/sunrise/android/calendar/ui/mainview/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/d;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->d(Lam/sunrise/android/calendar/ui/mainview/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/d;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->b(Lam/sunrise/android/calendar/ui/mainview/a/c;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/d;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/mainview/a/c;->c(Lam/sunrise/android/calendar/ui/mainview/a/c;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 536
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/d;->a:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->e(Lam/sunrise/android/calendar/ui/mainview/a/c;)V

    goto :goto_0
.end method
