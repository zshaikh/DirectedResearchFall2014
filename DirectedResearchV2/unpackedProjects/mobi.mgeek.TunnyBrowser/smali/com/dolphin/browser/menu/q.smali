.class Lcom/dolphin/browser/menu/q;
.super Landroid/widget/BaseAdapter;
.source "ListMenu.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/menu/ae;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method private a(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 787
    iget-object v0, p0, Lcom/dolphin/browser/menu/q;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/ae;

    move-object v1, p1

    .line 788
    check-cast v1, Lcom/dolphin/browser/menu/ac;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/menu/ac;->a(Lcom/dolphin/browser/menu/ae;)V

    .line 789
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/w;->e()I

    move-result v0

    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/menu/w;->f()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, p1

    .line 791
    check-cast v0, Lcom/dolphin/browser/menu/ac;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ac;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    return-object p1
.end method


# virtual methods
.method public a(I)Lcom/dolphin/browser/menu/ae;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/dolphin/browser/menu/q;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/menu/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 752
    :cond_0
    const/4 v0, 0x0

    .line 754
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/ae;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/dolphin/browser/menu/q;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 743
    const/4 v0, 0x0

    .line 745
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/menu/q;->a(I)Lcom/dolphin/browser/menu/ae;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 760
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/menu/q;->a(I)Lcom/dolphin/browser/menu/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 772
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/q;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 778
    if-nez p2, :cond_0

    .line 779
    new-instance p2, Lcom/dolphin/browser/menu/ac;

    iget-object v0, p0, Lcom/dolphin/browser/menu/q;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/dolphin/browser/menu/ac;-><init>(Landroid/content/Context;)V

    .line 782
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/dolphin/browser/menu/q;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x1

    return v0
.end method
