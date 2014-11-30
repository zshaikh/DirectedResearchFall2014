.class Lcom/dolphin/browser/bookmark/aa;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Lcom/dolphin/browser/bookmark/bx;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/aa;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1457
    .line 1459
    packed-switch p1, :pswitch_data_0

    .line 1473
    :goto_0
    :pswitch_0
    return v0

    .line 1466
    :pswitch_1
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->b()Z

    move-result v0

    goto :goto_0

    .line 1459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1449
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/aa;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->f()[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/aa;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->f()[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/aa;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->f()[I

    move-result-object v2

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    return-object v0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 1478
    packed-switch p1, :pswitch_data_0

    .line 1506
    :goto_0
    return-void

    .line 1480
    :pswitch_0
    new-instance v0, Lcom/dolphin/browser/c/b;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/aa;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/c/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/b;->a()Z

    .line 1484
    const-string v0, "bookmark"

    const-string v1, "import"

    const-string v2, "fromstockbrowser"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1490
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aa;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->o(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    .line 1491
    const-string v0, "bookmark"

    const-string v1, "import"

    const-string v2, "fromsdcard"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1497
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/aa;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->p(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    .line 1498
    const-string v0, "bookmark"

    const-string v1, "export"

    const-string v2, "tosdcard"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
