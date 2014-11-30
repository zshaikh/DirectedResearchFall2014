.class Lcom/dolphin/browser/tablist/p;
.super Ljava/lang/Object;
.source "CloudTabListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/j;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/dolphin/browser/tablist/p;->a:Lcom/dolphin/browser/tablist/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/tablist/p;->a:Lcom/dolphin/browser/tablist/j;

    new-instance v1, Lcom/dolphin/browser/tablist/i;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/p;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v2}, Lcom/dolphin/browser/tablist/j;->c(Lcom/dolphin/browser/tablist/j;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/tablist/p;->a:Lcom/dolphin/browser/tablist/j;

    iget-object v3, v3, Lcom/dolphin/browser/tablist/j;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/p;->a:Lcom/dolphin/browser/tablist/j;

    iget-object v4, v4, Lcom/dolphin/browser/tablist/j;->c:Ljava/util/List;

    iget-object v5, p0, Lcom/dolphin/browser/tablist/p;->a:Lcom/dolphin/browser/tablist/j;

    iget-object v5, v5, Lcom/dolphin/browser/tablist/j;->a:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dolphin/browser/tablist/i;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/j;->a(Lcom/dolphin/browser/tablist/j;Lcom/dolphin/browser/tablist/i;)Lcom/dolphin/browser/tablist/i;

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/tablist/p;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/j;->a(Lcom/dolphin/browser/tablist/j;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/p;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/j;->b(Lcom/dolphin/browser/tablist/j;)Lcom/dolphin/browser/tablist/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/tablist/p;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/j;->e(Lcom/dolphin/browser/tablist/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/tablist/p;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/j;->b(Lcom/dolphin/browser/tablist/j;)Lcom/dolphin/browser/tablist/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/dolphin/browser/tablist/p;->a:Lcom/dolphin/browser/tablist/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/j;->a(Lcom/dolphin/browser/tablist/j;I)V

    .line 284
    :cond_0
    return-void
.end method
