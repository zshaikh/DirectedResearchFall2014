.class Lam/sunrise/android/calendar/ui/event/l;
.super Ljava/lang/Object;
.source "CalendarSelectionDialog.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/i;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/event/i;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/l;->a:Lam/sunrise/android/calendar/ui/event/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/event/i;Lam/sunrise/android/calendar/ui/event/j;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/l;-><init>(Lam/sunrise/android/calendar/ui/event/i;)V

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
    .line 143
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/l;->a:Lam/sunrise/android/calendar/ui/event/i;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/i;->b(Lam/sunrise/android/calendar/ui/event/i;)Lam/sunrise/android/calendar/ui/event/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/event/e;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 144
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
    .line 128
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/l;->a:Lam/sunrise/android/calendar/ui/event/i;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/i;->a(Lam/sunrise/android/calendar/ui/event/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v4, "calendar_is_writable = ?"

    .line 130
    sget-object v5, Lam/sunrise/android/calendar/ui/event/k;->c:[Ljava/lang/String;

    .line 136
    :goto_0
    new-instance v0, Landroid/support/v4/a/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/l;->a:Lam/sunrise/android/calendar/ui/event/i;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/event/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/event/k;->a:Landroid/net/Uri;

    sget-object v3, Lam/sunrise/android/calendar/ui/event/k;->b:[Ljava/lang/String;

    const-string v6, "connection_type ASC, connection_info ASC, calendar_priority ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 132
    :cond_0
    const-string v4, "calendar_is_writable = ? AND calendar_connection_id = ?"

    .line 134
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/l;->a:Lam/sunrise/android/calendar/ui/event/i;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/i;->a(Lam/sunrise/android/calendar/ui/event/i;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/l;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

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
    .line 148
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/l;->a:Lam/sunrise/android/calendar/ui/event/i;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/i;->b(Lam/sunrise/android/calendar/ui/event/i;)Lam/sunrise/android/calendar/ui/event/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/e;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 149
    return-void
.end method
