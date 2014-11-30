.class Lam/sunrise/android/calendar/ui/event/details/r;
.super Ljava/lang/Object;
.source "EventDetailsAttendeesFragment.java"

# interfaces
.implements Landroid/support/v4/app/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/af",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/n;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/event/details/n;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/r;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/event/details/n;Lam/sunrise/android/calendar/ui/event/details/o;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/r;-><init>(Lam/sunrise/android/calendar/ui/event/details/n;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/r;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->e(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/event/details/h;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 257
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/d",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 249
    new-instance v0, Landroid/support/v4/a/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/r;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/event/details/n;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/r;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/event/details/n;->c(Lam/sunrise/android/calendar/ui/event/details/n;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/r;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/event/details/n;->d(Lam/sunrise/android/calendar/ui/event/details/n;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/provider/i;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/event/details/s;->a:[Ljava/lang/String;

    const-string v6, "person_name, person_email_1"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/details/r;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/r;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->e(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/h;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 262
    return-void
.end method
