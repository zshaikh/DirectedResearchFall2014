.class Lcom/dolphin/browser/bookmark/ag;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Lcom/dolphin/browser/sync/o;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ag;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 547
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ag;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Z)Z

    .line 548
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ag;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;I)I

    .line 549
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 561
    const-wide/16 v0, 0x14

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ag;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;I)V

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ag;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 534
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ag;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;I)V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ag;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->d(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method
