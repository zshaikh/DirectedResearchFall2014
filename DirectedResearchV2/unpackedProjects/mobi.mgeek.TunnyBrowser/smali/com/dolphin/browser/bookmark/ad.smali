.class Lcom/dolphin/browser/bookmark/ad;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/cn;

.field final synthetic b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Lcom/dolphin/browser/bookmark/cn;)V
    .locals 0

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ad;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/ad;->a:Lcom/dolphin/browser/bookmark/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ad;->a:Lcom/dolphin/browser/bookmark/cn;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/bookmark/cn;->a(I)Ljava/io/File;

    move-result-object v0

    .line 1599
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ad;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->r(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/ap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1600
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ad;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    new-instance v2, Lcom/dolphin/browser/bookmark/ap;

    iget-object v3, p0, Lcom/dolphin/browser/bookmark/ad;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {v2, v3}, Lcom/dolphin/browser/bookmark/ap;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->a(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Lcom/dolphin/browser/bookmark/ap;)Lcom/dolphin/browser/bookmark/ap;

    .line 1603
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ad;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->r(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/ap;->a(Ljava/io/File;)V

    .line 1604
    return-void
.end method
