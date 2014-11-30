.class Lcom/dolphin/browser/menu/r;
.super Landroid/widget/BaseAdapter;
.source "ListMenu.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method private a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    .line 890
    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    .line 891
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(I)V

    .line 892
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/w;->e()I

    move-result v0

    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/menu/w;->f()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object v0, p1

    .line 895
    check-cast v0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    return-object p1
.end method

.method private a(Landroid/view/View;I)Landroid/view/View;
    .locals 4

    .prologue
    .line 876
    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    .line 877
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(I)V

    .line 878
    iget-object v1, p0, Lcom/dolphin/browser/menu/r;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/n;

    .line 879
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 881
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/menu/w;->e()I

    move-result v2

    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/menu/w;->f()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 884
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 885
    return-object p1
.end method


# virtual methods
.method public a(I)Lcom/dolphin/browser/extensions/n;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/dolphin/browser/menu/r;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/menu/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 830
    :cond_0
    const/4 v0, 0x0

    .line 832
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/r;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/dolphin/browser/menu/r;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 821
    const/4 v0, 0x0

    .line 823
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/menu/r;->a(I)Lcom/dolphin/browser/extensions/n;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 838
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 850
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/r;->getCount()I

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
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 856
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/r;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 857
    if-nez p2, :cond_0

    .line 859
    new-instance p2, Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    iget-object v0, p0, Lcom/dolphin/browser/menu/r;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;-><init>(Landroid/content/Context;)V

    .line 861
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/dolphin/browser/menu/r;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 870
    :goto_0
    return-object v0

    .line 864
    :cond_1
    if-nez p2, :cond_2

    .line 865
    new-instance v0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    iget-object v1, p0, Lcom/dolphin/browser/menu/r;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/menu/r;->b:Landroid/content/Context;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e03e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v3

    sget-object v5, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v5, 0x7f060027

    invoke-virtual {v3, v5}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    .line 870
    :goto_1
    invoke-direct {p0, v0}, Lcom/dolphin/browser/menu/r;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x1

    return v0
.end method
