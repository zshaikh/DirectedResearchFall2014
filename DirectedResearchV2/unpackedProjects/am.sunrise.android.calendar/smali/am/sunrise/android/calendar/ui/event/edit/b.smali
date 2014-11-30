.class public Lam/sunrise/android/calendar/ui/event/edit/b;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "EditEventActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 122
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/b;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/edit/b;-><init>()V

    const-string v1, "DiscardEventEditionDialog"

    invoke-static {p0, v0, v1}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Ljava/lang/String;)V

    .line 126
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->a()V

    .line 141
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/edit/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 144
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/l;->a(Landroid/os/Bundle;)V

    .line 132
    const v0, 0x7f0f00a7

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/edit/b;->g(I)V

    .line 134
    const v0, 0x7f0f0055

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/edit/b;->e(I)V

    .line 135
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/edit/b;->f(I)V

    .line 136
    return-void
.end method
