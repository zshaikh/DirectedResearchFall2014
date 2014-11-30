.class Lam/sunrise/android/calendar/authenticator/ui/i;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "AuthenticatorActivity.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/i;)V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/i;

    invoke-direct {v0}, Lam/sunrise/android/calendar/authenticator/ui/i;-><init>()V

    const-string v1, "NoGooglePlusAccountsDialog"

    invoke-static {p0, v0, v1}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Ljava/lang/String;)V

    .line 445
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 459
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->a()V

    .line 460
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;->f(Lam/sunrise/android/calendar/authenticator/ui/AuthenticatorActivity;)V

    .line 463
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 449
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 451
    const v0, 0x7f0f00e4

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/i;->g(I)V

    .line 453
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/i;->f(I)V

    .line 454
    const v0, 0x7f0f0055

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/i;->e(I)V

    .line 455
    return-void
.end method
