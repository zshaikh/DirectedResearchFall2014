.class Lcom/dolphin/browser/sidebar/p;
.super Lcom/dolphin/browser/bookmark/a;
.source "BookmarkView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/i;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/p;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/p;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/i;->d(Lcom/dolphin/browser/sidebar/i;)Landroid/view/View;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/p;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/j;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/p;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v1}, Lcom/dolphin/browser/sidebar/i;->e(Lcom/dolphin/browser/sidebar/i;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 372
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/p;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v1}, Lcom/dolphin/browser/sidebar/i;->e(Lcom/dolphin/browser/sidebar/i;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method
