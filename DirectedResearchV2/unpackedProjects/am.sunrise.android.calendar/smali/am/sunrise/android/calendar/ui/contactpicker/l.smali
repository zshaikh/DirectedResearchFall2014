.class Lam/sunrise/android/calendar/ui/contactpicker/l;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/contactpicker/f;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/f;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/l;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/f;Lam/sunrise/android/calendar/ui/contactpicker/g;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/contactpicker/l;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

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
    .line 426
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/l;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->d(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/t;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/contactpicker/t;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 427
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/d;
    .locals 8
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
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "suggested_people_calendar_id = ?"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/l;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->i(Lam/sunrise/android/calendar/ui/contactpicker/f;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 400
    const-string v0, " AND "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v0, "suggested_people_email"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v0, " NOT IN ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/l;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->i(Lam/sunrise/android/calendar/ui/contactpicker/f;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    if-eqz v1, :cond_0

    move v1, v6

    .line 410
    :goto_1
    const-string v3, "\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    const-string v0, "\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 408
    :cond_0
    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 414
    :cond_1
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_2
    new-instance v0, Landroid/support/v4/a/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/l;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/l;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/contactpicker/f;->j(Lam/sunrise/android/calendar/ui/contactpicker/f;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/provider/g;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/contactpicker/m;->a:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/contactpicker/l;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v7}, Lam/sunrise/android/calendar/ui/contactpicker/f;->j(Lam/sunrise/android/calendar/ui/contactpicker/f;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "suggested_people_score DESC LIMIT 8"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 394
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/contactpicker/l;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

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
    .line 431
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/l;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->d(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/t;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 432
    return-void
.end method
