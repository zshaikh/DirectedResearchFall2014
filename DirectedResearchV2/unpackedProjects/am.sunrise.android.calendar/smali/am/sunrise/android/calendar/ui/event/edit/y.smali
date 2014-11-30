.class Lam/sunrise/android/calendar/ui/event/edit/y;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/support/v4/app/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/af",
        "<",
        "Lam/sunrise/android/calendar/ui/event/info/EventInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/edit/c;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 1390
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/y;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/event/edit/c;Lam/sunrise/android/calendar/ui/event/edit/d;)V
    .locals 0

    .prologue
    .line 1390
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/edit/y;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Lam/sunrise/android/calendar/ui/event/info/EventInfo;",
            ">;",
            "Lam/sunrise/android/calendar/ui/event/info/EventInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1399
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/y;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0, p2}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Lam/sunrise/android/calendar/ui/event/edit/c;Lam/sunrise/android/calendar/ui/event/info/EventInfo;)Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    .line 1400
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/y;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->q(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    .line 1401
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
            "Lam/sunrise/android/calendar/ui/event/info/EventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1394
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/y;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/y;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/event/edit/c;->u(Lam/sunrise/android/calendar/ui/event/edit/c;)Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    move-result-object v2

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/y;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/event/edit/c;->u(Lam/sunrise/android/calendar/ui/event/edit/c;)Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    move-result-object v3

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/event/info/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1390
    check-cast p2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/edit/y;->a(Landroid/support/v4/a/d;Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Lam/sunrise/android/calendar/ui/event/info/EventInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1405
    return-void
.end method
