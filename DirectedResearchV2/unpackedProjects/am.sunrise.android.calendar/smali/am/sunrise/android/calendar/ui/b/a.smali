.class public Lam/sunrise/android/calendar/ui/b/a;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "OAuthErrorDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 28
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lam/sunrise/android/calendar/ui/b/a;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/b/a;-><init>()V

    const-string v1, "OAuthError"

    invoke-static {p0, v0, v1}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->a()V

    .line 46
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/a;->b()V

    .line 49
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f020141

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/b/a;->a(I)V

    .line 35
    const v0, 0x7f0f00aa

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/b/a;->b(I)V

    .line 36
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/a;->c()V

    .line 38
    const v0, 0x7f0f00a9

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/b/a;->g(I)V

    .line 40
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/b/a;->e(I)V

    .line 41
    return-void
.end method
