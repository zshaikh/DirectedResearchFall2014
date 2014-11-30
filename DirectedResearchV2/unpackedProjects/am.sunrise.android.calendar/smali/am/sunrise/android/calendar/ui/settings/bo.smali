.class Lam/sunrise/android/calendar/ui/settings/bo;
.super Ljava/lang/Object;
.source "SettingsVisibleCalendarsFragment.java"

# interfaces
.implements Landroid/support/v4/app/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/af",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/bj;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/settings/bj;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/bo;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/settings/bj;Lam/sunrise/android/calendar/ui/settings/bk;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/bo;-><init>(Lam/sunrise/android/calendar/ui/settings/bj;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bo;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bj;->c(Lam/sunrise/android/calendar/ui/settings/bj;Z)Z

    .line 224
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bo;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/bj;->d(Lam/sunrise/android/calendar/ui/settings/bj;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bo;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/bj;->b(Lam/sunrise/android/calendar/ui/settings/bj;)Lam/sunrise/android/calendar/ui/settings/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/q;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bo;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bo;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/bj;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bj;->a(Lam/sunrise/android/calendar/ui/settings/bj;Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bo;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bj;->c(Lam/sunrise/android/calendar/ui/settings/bj;Z)Z

    .line 217
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/d/a;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bo;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/bj;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bo;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/bj;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lam/sunrise/android/calendar/ui/settings/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 212
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/bo;->a(Landroid/support/v4/a/d;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bo;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bj;->c(Lam/sunrise/android/calendar/ui/settings/bj;Z)Z

    .line 232
    return-void
.end method
