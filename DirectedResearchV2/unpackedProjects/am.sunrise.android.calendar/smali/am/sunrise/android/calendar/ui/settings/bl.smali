.class Lam/sunrise/android/calendar/ui/settings/bl;
.super Ljava/lang/Object;
.source "SettingsVisibleCalendarsFragment.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/bj;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/settings/bj;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/bl;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/settings/bj;Lam/sunrise/android/calendar/ui/settings/bk;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/bl;-><init>(Lam/sunrise/android/calendar/ui/settings/bj;)V

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
    .line 177
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bl;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bj;->b(Lam/sunrise/android/calendar/ui/settings/bj;Z)Z

    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bl;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/bj;->b(Lam/sunrise/android/calendar/ui/settings/bj;)Lam/sunrise/android/calendar/ui/settings/a/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/settings/a/q;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 179
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bl;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/bj;->c(Lam/sunrise/android/calendar/ui/settings/bj;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bl;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bl;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/bj;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bj;->a(Lam/sunrise/android/calendar/ui/settings/bj;Ljava/lang/CharSequence;)V

    .line 184
    :cond_1
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

    .line 168
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bl;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bj;->b(Lam/sunrise/android/calendar/ui/settings/bj;Z)Z

    .line 169
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bl;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/bj;->a(Lam/sunrise/android/calendar/ui/settings/bj;)V

    .line 170
    new-instance v0, Landroid/support/v4/a/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/bl;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/bj;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    sget-object v3, Lam/sunrise/android/calendar/ui/settings/bm;->a:[Ljava/lang/String;

    const-string v6, "connection_type ASC, connection_info ASC, calendar_priority ASC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 164
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/bl;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

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
    .line 188
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bl;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/bj;->b(Lam/sunrise/android/calendar/ui/settings/bj;Z)Z

    .line 189
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/bl;->a:Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/bj;->b(Lam/sunrise/android/calendar/ui/settings/bj;)Lam/sunrise/android/calendar/ui/settings/a/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/settings/a/q;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 190
    return-void
.end method
