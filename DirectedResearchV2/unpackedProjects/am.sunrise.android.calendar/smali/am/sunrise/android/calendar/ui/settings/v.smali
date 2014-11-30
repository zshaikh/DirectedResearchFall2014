.class public Lam/sunrise/android/calendar/ui/settings/v;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 404
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;)V
    .locals 2

    .prologue
    .line 399
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/v;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/v;-><init>()V

    const-string v1, "SignOutConfirmationDialgo"

    invoke-static {p0, v0, v1}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Ljava/lang/String;)V

    .line 400
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 415
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->a()V

    .line 416
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/a/e;->a(Landroid/app/Activity;)V

    .line 417
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 408
    const v0, 0x7f0f0165

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/v;->g(I)V

    .line 409
    const v0, 0x7f0f0053

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/v;->e(I)V

    .line 410
    const v0, 0x7f0f0040

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/v;->f(I)V

    .line 411
    return-void
.end method
