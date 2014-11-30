.class Lam/sunrise/android/calendar/ui/q;
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
    .line 426
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/q;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/HomeActivity;Lam/sunrise/android/calendar/ui/j;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/q;-><init>(Lam/sunrise/android/calendar/ui/HomeActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V
    .locals 3
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
    const/4 v1, 0x0

    .line 438
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 439
    :goto_0
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/q;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lam/sunrise/android/calendar/ui/HomeActivity;->a(Lam/sunrise/android/calendar/ui/HomeActivity;Z)V

    .line 440
    return-void

    :cond_1
    move v0, v1

    .line 438
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
    .line 430
    new-instance v0, Landroid/support/v4/a/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/q;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    sget-object v2, Lam/sunrise/android/calendar/ui/r;->a:Landroid/net/Uri;

    sget-object v3, Lam/sunrise/android/calendar/ui/r;->b:[Ljava/lang/String;

    const-string v4, "connection_is_disconnected = ? AND connection_is_unavailable = ? AND calendar_is_writable = ?"

    sget-object v5, Lam/sunrise/android/calendar/ui/r;->c:[Ljava/lang/String;

    sget-object v6, Lam/sunrise/android/calendar/ui/r;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 426
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/q;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

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
    .line 444
    return-void
.end method
