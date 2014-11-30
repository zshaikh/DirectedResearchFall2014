.class Lam/sunrise/android/calendar/ui/settings/ag;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "SettingsAddAccountFragment.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 680
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/settings/w;)V
    .locals 3

    .prologue
    .line 685
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/ag;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/ag;-><init>()V

    const/4 v1, 0x0

    const-string v2, "NoGooglePlusAccountsDialog"

    invoke-static {p0, v0, p1, v1, v2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 686
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 700
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->a()V

    .line 701
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/ag;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/ag;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/ag;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    check-cast v0, Lam/sunrise/android/calendar/ui/settings/w;

    sget-object v1, Lam/sunrise/android/calendar/ui/settings/a/b;->d:Lam/sunrise/android/calendar/ui/settings/a/b;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/w;->a(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/a/b;)V

    .line 708
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 690
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 692
    const v0, 0x7f0f00e4

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/ag;->g(I)V

    .line 694
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/ag;->f(I)V

    .line 695
    const v0, 0x7f0f0055

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/ag;->e(I)V

    .line 696
    return-void
.end method
