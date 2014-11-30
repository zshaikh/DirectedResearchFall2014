.class public Lam/sunrise/android/calendar/ui/event/add/b;
.super Lam/sunrise/android/calendar/ui/b/l;
.source "AddEventActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/l;-><init>()V

    .line 140
    return-void
.end method

.method static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/b;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/add/b;-><init>()V

    const-string v1, "DiscardEventCreationDialog"

    invoke-static {p0, v0, v1}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Ljava/lang/String;)V

    .line 136
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/l;->a()V

    .line 153
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 156
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/b;->d()V

    .line 145
    const v0, 0x7f0f00a6

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/b;->g(I)V

    .line 146
    const v0, 0x7f0f0055

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/b;->e(I)V

    .line 147
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/b;->f(I)V

    .line 148
    return-void
.end method
