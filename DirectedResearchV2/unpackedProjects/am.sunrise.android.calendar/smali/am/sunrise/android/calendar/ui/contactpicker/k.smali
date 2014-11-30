.class Lam/sunrise/android/calendar/ui/contactpicker/k;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/contactpicker/f;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/f;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/k;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/f;Lam/sunrise/android/calendar/ui/contactpicker/g;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/contactpicker/k;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

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
    .line 458
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/d;
    .locals 4
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
    .line 450
    new-instance v0, Lam/sunrise/android/calendar/ui/contactpicker/x;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/k;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/k;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/contactpicker/f;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/k;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/contactpicker/f;->j(Lam/sunrise/android/calendar/ui/contactpicker/f;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/contactpicker/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 447
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/contactpicker/k;->a(Landroid/support/v4/a/d;Ljava/lang/Boolean;)V

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
    .line 465
    return-void
.end method
