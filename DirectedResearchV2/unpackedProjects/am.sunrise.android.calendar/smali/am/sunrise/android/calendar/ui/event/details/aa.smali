.class Lam/sunrise/android/calendar/ui/event/details/aa;
.super Ljava/lang/Object;
.source "EventDetailsFragment.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/v;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/event/details/v;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/aa;->a:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/event/details/v;Lam/sunrise/android/calendar/ui/event/details/w;)V
    .locals 0

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/aa;-><init>(Lam/sunrise/android/calendar/ui/event/details/v;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V
    .locals 2
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
    .line 601
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/aa;->a:Lam/sunrise/android/calendar/ui/event/details/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/v;->b(Lam/sunrise/android/calendar/ui/event/details/v;Z)Z

    .line 602
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/aa;->a:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v0, p2}, Lam/sunrise/android/calendar/ui/event/details/v;->a(Lam/sunrise/android/calendar/ui/event/details/v;Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

    .line 603
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
    .line 596
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/aa;->a:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/aa;->a:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/event/details/v;->g(Lam/sunrise/android/calendar/ui/event/details/v;)Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    move-result-object v2

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->a:Ljava/lang/String;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/aa;->a:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/event/details/v;->g(Lam/sunrise/android/calendar/ui/event/details/v;)Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    move-result-object v3

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/event/info/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 592
    check-cast p2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/details/aa;->a(Landroid/support/v4/a/d;Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

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
    .line 607
    return-void
.end method
