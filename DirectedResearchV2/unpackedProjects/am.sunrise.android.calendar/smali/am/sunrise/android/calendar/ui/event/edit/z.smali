.class public Lam/sunrise/android/calendar/ui/event/edit/z;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "EditEventFragment.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1487
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 1488
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;Z)V
    .locals 3

    .prologue
    .line 1479
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1480
    const-string v1, "am.sunrise.android.calendar.extra.SEND_NOTIFICATION_EMAIL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1481
    new-instance v1, Lam/sunrise/android/calendar/ui/event/edit/z;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/edit/z;-><init>()V

    const-string v2, "SaveRecurringEventDialog"

    invoke-static {p0, v1, p1, v0, v2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1482
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1514
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->a()V

    .line 1516
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/z;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1517
    if-eqz v0, :cond_0

    .line 1518
    check-cast v0, Lam/sunrise/android/calendar/ui/event/edit/c;

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/edit/z;->a:Z

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->b(Lam/sunrise/android/calendar/ui/event/edit/c;Z)V

    .line 1520
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1492
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 1494
    if-eqz p1, :cond_0

    .line 1495
    const-string v0, "saved_send_notification_email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/z;->a:Z

    .line 1500
    :goto_0
    const v0, 0x7f0f0134

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/edit/z;->g(I)V

    .line 1502
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/edit/z;->e(I)V

    .line 1503
    const v0, 0x7f0f0040

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/edit/z;->f(I)V

    .line 1504
    return-void

    .line 1497
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/z;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.SEND_NOTIFICATION_EMAIL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/z;->a:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1508
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1509
    const-string v0, "saved_send_notification_email"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/edit/z;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1510
    return-void
.end method
