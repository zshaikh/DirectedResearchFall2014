.class Lam/sunrise/android/calendar/ui/firstsync/e;
.super Ljava/lang/Object;
.source "FirstRunActivity.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/firstsync/e;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;Lam/sunrise/android/calendar/ui/firstsync/a;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/firstsync/e;-><init>(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;)V

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
    .line 283
    if-eqz p2, :cond_0

    .line 284
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/e;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->b(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;I)V

    .line 286
    :cond_0
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

    .line 276
    new-instance v0, Landroid/support/v4/a/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/e;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    sget-object v2, Lam/sunrise/android/calendar/ui/firstsync/f;->a:Landroid/net/Uri;

    sget-object v3, Lam/sunrise/android/calendar/ui/firstsync/f;->b:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/firstsync/e;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

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
    .line 290
    return-void
.end method
