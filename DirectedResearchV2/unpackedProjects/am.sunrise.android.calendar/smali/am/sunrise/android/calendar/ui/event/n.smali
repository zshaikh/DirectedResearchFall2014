.class public Lam/sunrise/android/calendar/ui/event/n;
.super Lam/sunrise/android/calendar/ui/b/i;
.source "DescriptionDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/i;-><init>()V

    .line 34
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v1, "am.sunrise.android.calendar.extra.EVENT_DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lam/sunrise/android/calendar/ui/event/n;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/n;-><init>()V

    const-string v2, "DescriptionDialog"

    invoke-static {p0, v1, p1, v0, v2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/i;->a(Landroid/os/Bundle;)V

    .line 47
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.EVENT_DESCRIPTION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/n;->d(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    const v0, 0x7f0f00a4

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/n;->b(I)V

    .line 55
    const v0, 0x7f0f0048

    const/16 v1, 0x7e8

    new-instance v2, Lam/sunrise/android/calendar/ui/event/o;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/event/o;-><init>(Lam/sunrise/android/calendar/ui/event/n;)V

    invoke-virtual {p0, v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/n;->a(IILandroid/view/View$OnClickListener;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/n;->a(Z)V

    .line 62
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/n;->c()V

    .line 63
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/n;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/ui/event/p;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lam/sunrise/android/calendar/ui/event/p;

    .line 70
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/n;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/event/p;->a(Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/n;->dismiss()V

    .line 74
    return-void
.end method
