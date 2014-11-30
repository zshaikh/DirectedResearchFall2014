.class Lcom/dolphin/browser/tablist/ag;
.super Ljava/lang/Object;
.source "CurrentTablistView.java"

# interfaces
.implements Lcom/dolphin/browser/tablist/ck;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ac;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ag;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/tablist/bk;)V
    .locals 5

    .prologue
    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ag;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->c(Lcom/dolphin/browser/tablist/ac;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ag;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->f(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/AnimListItemParent;

    move-result-object v0

    move-object v2, v0

    .line 355
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 356
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 357
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 358
    instance-of v1, v0, Lcom/dolphin/browser/tablist/bn;

    if-eqz v1, :cond_0

    .line 359
    check-cast v0, Lcom/dolphin/browser/tablist/bn;

    .line 360
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bn;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/tablist/bp;

    .line 361
    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/dolphin/browser/tablist/bp;->a:Lcom/dolphin/browser/tablist/bk;

    if-ne v1, p1, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bn;->b()V

    .line 356
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ag;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->g(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/AnimListItemParent;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 366
    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    return v0
.end method
