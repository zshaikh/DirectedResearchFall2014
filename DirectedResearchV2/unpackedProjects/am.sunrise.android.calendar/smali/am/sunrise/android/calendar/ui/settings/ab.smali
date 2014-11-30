.class Lam/sunrise/android/calendar/ui/settings/ab;
.super Ljava/lang/Object;
.source "SettingsAddAccountFragment.java"

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
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/w;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/settings/w;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/ab;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/settings/w;Lam/sunrise/android/calendar/ui/settings/x;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/settings/ab;-><init>(Lam/sunrise/android/calendar/ui/settings/w;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V
    .locals 7
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
    const/4 v2, 0x0

    .line 536
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 537
    invoke-static {}, Lam/sunrise/android/calendar/ui/settings/a/b;->values()[Lam/sunrise/android/calendar/ui/settings/a/b;

    move-result-object v1

    array-length v4, v1

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v5, v1, v0

    .line 539
    sget-object v6, Lam/sunrise/android/calendar/ui/settings/a/b;->c:Lam/sunrise/android/calendar/ui/settings/a/b;

    if-ne v6, v5, :cond_1

    .line 540
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/settings/ab;->a:Lam/sunrise/android/calendar/ui/settings/w;

    iget-boolean v6, v6, Lam/sunrise/android/calendar/ui/settings/w;->a:Z

    if-eqz v6, :cond_2

    .line 537
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    sget-object v6, Lam/sunrise/android/calendar/ui/settings/a/b;->d:Lam/sunrise/android/calendar/ui/settings/a/b;

    if-ne v6, v5, :cond_2

    .line 544
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/settings/ab;->a:Lam/sunrise/android/calendar/ui/settings/w;

    iget-boolean v6, v6, Lam/sunrise/android/calendar/ui/settings/w;->a:Z

    if-eqz v6, :cond_0

    .line 549
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 552
    :cond_3
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 553
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 554
    const-string v0, "connection_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 557
    :cond_4
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v1, v2

    .line 558
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 559
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/b;

    .line 560
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 561
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/settings/ab;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-static {v6}, Lam/sunrise/android/calendar/ui/settings/w;->b(Lam/sunrise/android/calendar/ui/settings/w;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 562
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 563
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 577
    :cond_5
    :goto_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 581
    :cond_6
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ab;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/w;->c(Lam/sunrise/android/calendar/ui/settings/w;)Lam/sunrise/android/calendar/ui/settings/a/a;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/settings/a/b;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/ui/settings/a/b;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/settings/a/a;->a([Lam/sunrise/android/calendar/ui/settings/a/b;)V

    .line 582
    return-void

    .line 567
    :cond_7
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/settings/a/b;->e()Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lam/sunrise/android/calendar/ui/settings/a/b;->d:Lam/sunrise/android/calendar/ui/settings/a/b;

    if-eq v0, v6, :cond_8

    sget-object v6, Lam/sunrise/android/calendar/ui/settings/a/b;->c:Lam/sunrise/android/calendar/ui/settings/a/b;

    if-eq v0, v6, :cond_8

    sget-object v6, Lam/sunrise/android/calendar/ui/settings/a/b;->b:Lam/sunrise/android/calendar/ui/settings/a/b;

    if-ne v0, v6, :cond_9

    .line 571
    :cond_8
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 558
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
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

    .line 529
    new-instance v0, Landroid/support/v4/a/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/ab;->a:Lam/sunrise/android/calendar/ui/settings/w;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/settings/w;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/provider/h;->a:Landroid/net/Uri;

    sget-object v3, Lam/sunrise/android/calendar/ui/settings/ac;->b:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 526
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/settings/ab;->a(Landroid/support/v4/a/d;Landroid/database/Cursor;)V

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
    .line 586
    return-void
.end method
