.class Lam/sunrise/android/calendar/ui/settings/ah;
.super Ljava/lang/Object;
.source "SettingsAddAccountFragment.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/w;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/settings/w;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/ah;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/x;)V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/ah;-><init>(Lam/sunrise/android/calendar/ui/settings/w;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;Ljava/lang/Boolean;)V
    .locals 0
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
    .line 598
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
    .line 593
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/d/a;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ah;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ah;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

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
    .line 589
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/ah;->a(Landroid/support/v4/a/d;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/d;)V
    .locals 0
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
    .line 602
    return-void
.end method
