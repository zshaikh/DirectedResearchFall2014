.class Lcom/dolphin/browser/bookmark/w;
.super Lcom/dolphin/browser/bookmark/a;
.source "BookmarkEntranceActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/w;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/w;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->i(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Landroid/view/View;

    move-result-object v0

    .line 1272
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/w;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->b(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/j;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1273
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/w;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->j(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1274
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/w;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->k(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    .line 1282
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/w;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    .line 1283
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/w;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    .line 1284
    return-void

    .line 1276
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1277
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/w;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->j(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/w;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->l(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    .line 1289
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/w;->a:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->m(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;)V

    .line 1290
    return-void
.end method
