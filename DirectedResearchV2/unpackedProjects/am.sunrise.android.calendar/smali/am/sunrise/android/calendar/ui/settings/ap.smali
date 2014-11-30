.class Lam/sunrise/android/calendar/ui/settings/ap;
.super Ljava/lang/Object;
.source "SettingsDefaultCalendarFragment.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/an;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/settings/an;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/ap;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/settings/an;Lam/sunrise/android/calendar/ui/settings/ao;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/ap;-><init>(Lam/sunrise/android/calendar/ui/settings/an;)V

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
    .line 133
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ap;->a:Lam/sunrise/android/calendar/ui/settings/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/an;->a(Lam/sunrise/android/calendar/ui/settings/an;Z)Z

    .line 134
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ap;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/an;->b(Lam/sunrise/android/calendar/ui/settings/an;)Lam/sunrise/android/calendar/ui/settings/a/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/settings/a/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 135
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ap;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/an;->c(Lam/sunrise/android/calendar/ui/settings/an;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ap;->a:Lam/sunrise/android/calendar/ui/settings/an;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/ap;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/an;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/an;->a(Lam/sunrise/android/calendar/ui/settings/an;Ljava/lang/CharSequence;)V

    .line 140
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
    .line 122
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ap;->a:Lam/sunrise/android/calendar/ui/settings/an;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/an;->a(Lam/sunrise/android/calendar/ui/settings/an;Z)Z

    .line 123
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ap;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/an;->a(Lam/sunrise/android/calendar/ui/settings/an;)V

    .line 124
    new-instance v0, Landroid/support/v4/a/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/ap;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/an;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/provider/g;->a:Landroid/net/Uri;

    sget-object v3, Lam/sunrise/android/calendar/ui/settings/aq;->a:[Ljava/lang/String;

    const-string v4, "calendar_is_writable = ?"

    sget-object v5, Lam/sunrise/android/calendar/ui/settings/aq;->b:[Ljava/lang/String;

    const-string v6, "connection_type ASC, connection_info ASC, calendar_priority ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/ap;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

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
    .line 144
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ap;->a:Lam/sunrise/android/calendar/ui/settings/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/settings/an;->a(Lam/sunrise/android/calendar/ui/settings/an;Z)Z

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ap;->a:Lam/sunrise/android/calendar/ui/settings/an;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/an;->b(Lam/sunrise/android/calendar/ui/settings/an;)Lam/sunrise/android/calendar/ui/settings/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/settings/a/d;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 146
    return-void
.end method
