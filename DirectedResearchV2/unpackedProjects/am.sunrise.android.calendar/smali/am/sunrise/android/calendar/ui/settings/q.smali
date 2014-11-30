.class public Lam/sunrise/android/calendar/ui/settings/q;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "SettingsAccountInfoFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 476
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 469
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 470
    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/q;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/settings/q;-><init>()V

    const-string v2, "DisconnectConfirmationDialog"

    invoke-static {p0, v1, p1, v0, v2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 472
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 494
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->a()V

    .line 496
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/q;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/i;

    .line 497
    if-eqz v0, :cond_0

    .line 498
    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/i;->c(Lam/sunrise/android/calendar/ui/settings/i;)Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;

    move-result-object v1

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/settings/ConnectionInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/i;->a(Lam/sunrise/android/calendar/ui/settings/i;Ljava/lang/String;)V

    .line 500
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 480
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 482
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/q;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    const v1, 0x7f0f00af

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/settings/q;->b(I)V

    .line 485
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/q;->c()V

    .line 487
    const v1, 0x7f0f00ae

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lam/sunrise/android/calendar/ui/settings/q;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/q;->d(Ljava/lang/CharSequence;)V

    .line 489
    const v0, 0x7f0f0046

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/q;->e(I)V

    .line 490
    const v0, 0x7f0f0040

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/q;->f(I)V

    .line 491
    return-void
.end method
