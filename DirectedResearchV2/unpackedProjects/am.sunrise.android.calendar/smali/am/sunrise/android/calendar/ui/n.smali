.class Lam/sunrise/android/calendar/ui/n;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "HomeActivity.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/i;)V
    .locals 2

    .prologue
    .line 478
    new-instance v0, Lam/sunrise/android/calendar/ui/n;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/n;-><init>()V

    const-string v1, "NoWritableCalendarsDialog"

    invoke-static {p0, v0, v1}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Ljava/lang/String;)V

    .line 479
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 496
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->a()V

    .line 497
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/n;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;->a(Landroid/support/v4/app/i;)V

    .line 498
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 483
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 485
    const v0, 0x7f0f00ab

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/n;->b(I)V

    .line 486
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/n;->c()V

    .line 488
    const v0, 0x7f0f00f7

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/n;->g(I)V

    .line 490
    const v0, 0x7f0f0040

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/n;->f(I)V

    .line 491
    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/n;->e(I)V

    .line 492
    return-void
.end method
