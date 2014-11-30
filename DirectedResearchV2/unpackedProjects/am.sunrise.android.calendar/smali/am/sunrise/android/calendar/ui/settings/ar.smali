.class Lam/sunrise/android/calendar/ui/settings/ar;
.super Ljava/lang/Object;
.source "SettingsDefaultCalendarFragment.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/an;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/settings/an;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/ar;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/settings/an;Lam/sunrise/android/calendar/ui/settings/ao;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/ar;-><init>(Lam/sunrise/android/calendar/ui/settings/an;)V

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
    .line 180
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ar;->a:Lam/sunrise/android/calendar/ui/settings/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/an;->b(Lam/sunrise/android/calendar/ui/settings/an;Z)Z

    .line 182
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ar;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/an;->d(Lam/sunrise/android/calendar/ui/settings/an;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ar;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/an;->b(Lam/sunrise/android/calendar/ui/settings/an;)Lam/sunrise/android/calendar/ui/settings/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/d;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ar;->a:Lam/sunrise/android/calendar/ui/settings/an;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/ar;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/an;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/an;->a(Lam/sunrise/android/calendar/ui/settings/an;Ljava/lang/CharSequence;)V

    .line 185
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
    .line 174
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ar;->a:Lam/sunrise/android/calendar/ui/settings/an;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/an;->b(Lam/sunrise/android/calendar/ui/settings/an;Z)Z

    .line 175
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/d/a;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ar;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/an;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ar;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/an;->getActivity()Landroid/support/v4/app/i;

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
    .line 170
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/ar;->a(Landroid/support/v4/a/d;Ljava/lang/Boolean;)V

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
    .line 189
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ar;->a:Lam/sunrise/android/calendar/ui/settings/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/an;->b(Lam/sunrise/android/calendar/ui/settings/an;Z)Z

    .line 190
    return-void
.end method
