.class Lam/sunrise/android/calendar/ui/settings/bf;
.super Ljava/lang/Object;
.source "SettingsNotificationsFragment.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/bb;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/settings/bb;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/bf;->a:Lam/sunrise/android/calendar/ui/settings/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/settings/bb;Lam/sunrise/android/calendar/ui/settings/bc;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/bf;-><init>(Lam/sunrise/android/calendar/ui/settings/bb;)V

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
    .line 193
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bf;->a:Lam/sunrise/android/calendar/ui/settings/bb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bb;->b(Lam/sunrise/android/calendar/ui/settings/bb;Z)Z

    .line 195
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bf;->a:Lam/sunrise/android/calendar/ui/settings/bb;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/bb;->d(Lam/sunrise/android/calendar/ui/settings/bb;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bf;->a:Lam/sunrise/android/calendar/ui/settings/bb;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/bb;->b(Lam/sunrise/android/calendar/ui/settings/bb;)Lam/sunrise/android/calendar/ui/settings/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/k;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bf;->a:Lam/sunrise/android/calendar/ui/settings/bb;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bf;->a:Lam/sunrise/android/calendar/ui/settings/bb;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/bb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bb;->a(Lam/sunrise/android/calendar/ui/settings/bb;Ljava/lang/CharSequence;)V

    .line 198
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
    .line 187
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bf;->a:Lam/sunrise/android/calendar/ui/settings/bb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bb;->b(Lam/sunrise/android/calendar/ui/settings/bb;Z)Z

    .line 188
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/d/a;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bf;->a:Lam/sunrise/android/calendar/ui/settings/bb;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/bb;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bf;->a:Lam/sunrise/android/calendar/ui/settings/bb;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/bb;->getActivity()Landroid/support/v4/app/i;

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
    .line 183
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/bf;->a(Landroid/support/v4/a/d;Ljava/lang/Boolean;)V

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
    .line 202
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bf;->a:Lam/sunrise/android/calendar/ui/settings/bb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bb;->b(Lam/sunrise/android/calendar/ui/settings/bb;Z)Z

    .line 203
    return-void
.end method
