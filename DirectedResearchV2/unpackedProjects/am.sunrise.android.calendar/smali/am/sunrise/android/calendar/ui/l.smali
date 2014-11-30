.class Lam/sunrise/android/calendar/ui/l;
.super Ljava/lang/Object;
.source "HomeActivity.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/HomeActivity;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/HomeActivity;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/l;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/HomeActivity;Lam/sunrise/android/calendar/ui/j;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/l;-><init>(Lam/sunrise/android/calendar/ui/HomeActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V
    .locals 2
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
    .line 393
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/l;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->a(Lam/sunrise/android/calendar/ui/HomeActivity;I)I

    .line 394
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/l;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->b(Lam/sunrise/android/calendar/ui/HomeActivity;)Lam/sunrise/android/calendar/ui/InboxActionView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/l;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->b(Lam/sunrise/android/calendar/ui/HomeActivity;)Lam/sunrise/android/calendar/ui/InboxActionView;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/l;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/HomeActivity;->c(Lam/sunrise/android/calendar/ui/HomeActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/InboxActionView;->setUnreadCount(I)V

    .line 397
    :cond_0
    return-void

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 386
    new-instance v0, Lam/sunrise/android/calendar/ui/inbox/m;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/l;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    sget-object v2, Lam/sunrise/android/calendar/ui/m;->a:Landroid/net/Uri;

    sget-object v3, Lam/sunrise/android/calendar/ui/m;->b:[Ljava/lang/String;

    const-string v4, "event_extra_invitation_seen = ? OR event_extra_invitation_seen IS NULL"

    sget-object v5, Lam/sunrise/android/calendar/ui/m;->c:[Ljava/lang/String;

    sget-object v6, Lam/sunrise/android/calendar/ui/m;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/inbox/m;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 382
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/l;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/d;)V
    .locals 0
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
    .line 401
    return-void
.end method
