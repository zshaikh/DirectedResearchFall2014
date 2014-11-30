.class Lam/sunrise/android/calendar/ui/birthdays/m;
.super Ljava/lang/Object;
.source "BirthdaysFragment.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/birthdays/i;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/birthdays/i;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/birthdays/m;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/birthdays/i;Lam/sunrise/android/calendar/ui/birthdays/j;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/birthdays/m;-><init>(Lam/sunrise/android/calendar/ui/birthdays/i;)V

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
    .line 277
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/m;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/birthdays/i;->b(Lam/sunrise/android/calendar/ui/birthdays/i;)Lam/sunrise/android/calendar/ui/birthdays/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/birthdays/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 278
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
    .line 266
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v2

    .line 267
    new-instance v0, Landroid/support/v4/a/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/birthdays/m;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/birthdays/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/birthdays/m;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/birthdays/i;->a(Lam/sunrise/android/calendar/ui/birthdays/i;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/provider/f;->a(J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/birthdays/k;->a:[Ljava/lang/String;

    sget-object v4, Lam/sunrise/android/calendar/ui/birthdays/k;->b:Ljava/lang/String;

    sget-object v5, Lam/sunrise/android/calendar/ui/birthdays/k;->c:[Ljava/lang/String;

    const-string v6, "person_name"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 263
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/birthdays/m;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

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
    .line 282
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/birthdays/m;->a:Lam/sunrise/android/calendar/ui/birthdays/i;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/birthdays/i;->b(Lam/sunrise/android/calendar/ui/birthdays/i;)Lam/sunrise/android/calendar/ui/birthdays/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/birthdays/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 283
    return-void
.end method
