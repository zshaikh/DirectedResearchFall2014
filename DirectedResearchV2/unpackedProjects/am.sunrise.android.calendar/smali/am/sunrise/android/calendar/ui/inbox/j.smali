.class Lam/sunrise/android/calendar/ui/inbox/j;
.super Ljava/lang/Object;
.source "InboxFragment.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/inbox/h;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/inbox/h;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/inbox/j;->a:Lam/sunrise/android/calendar/ui/inbox/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/inbox/h;Lam/sunrise/android/calendar/ui/inbox/i;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/inbox/j;-><init>(Lam/sunrise/android/calendar/ui/inbox/h;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V
    .locals 4
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
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 309
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 310
    :goto_0
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/inbox/j;->a:Lam/sunrise/android/calendar/ui/inbox/h;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/inbox/h;->b(Lam/sunrise/android/calendar/ui/inbox/h;)Lam/sunrise/android/calendar/ui/inbox/a;

    move-result-object v2

    invoke-virtual {v2, p2}, Lam/sunrise/android/calendar/ui/inbox/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 311
    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/j;->a:Lam/sunrise/android/calendar/ui/inbox/h;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/inbox/h;->c(Lam/sunrise/android/calendar/ui/inbox/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/j;->a:Lam/sunrise/android/calendar/ui/inbox/h;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/inbox/h;->d(Lam/sunrise/android/calendar/ui/inbox/h;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 318
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 309
    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/j;->a:Lam/sunrise/android/calendar/ui/inbox/h;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/inbox/h;->d(Lam/sunrise/android/calendar/ui/inbox/h;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/j;->a:Lam/sunrise/android/calendar/ui/inbox/h;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/inbox/h;->c(Lam/sunrise/android/calendar/ui/inbox/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
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
    .line 302
    new-instance v0, Lam/sunrise/android/calendar/ui/inbox/m;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/j;->a:Lam/sunrise/android/calendar/ui/inbox/h;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/inbox/k;->a:Landroid/net/Uri;

    sget-object v3, Lam/sunrise/android/calendar/ui/inbox/k;->b:[Ljava/lang/String;

    sget-object v4, Lam/sunrise/android/calendar/ui/inbox/k;->c:Ljava/lang/String;

    sget-object v5, Lam/sunrise/android/calendar/ui/inbox/k;->d:[Ljava/lang/String;

    const-string v6, "occurrence_start_date ASC"

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/inbox/m;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 299
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/inbox/j;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

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
    .line 322
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/j;->a:Lam/sunrise/android/calendar/ui/inbox/h;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/inbox/h;->b(Lam/sunrise/android/calendar/ui/inbox/h;)Lam/sunrise/android/calendar/ui/inbox/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/inbox/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 323
    return-void
.end method
