.class public Lcom/dolphin/browser/search/ui/SearchDialogRootView;
.super Landroid/widget/RelativeLayout;
.source "SearchDialogRootView.java"


# instance fields
.field private final a:I

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

.field private e:Lcom/dolphin/browser/search/ui/y;

.field private f:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->a:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->a:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->a:I

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f0802eb

    .line 47
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->removeAllViews()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->addView(Landroid/view/View;)V

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {p0, v3}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->d:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    .line 50
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802e5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->b:Landroid/view/View;

    .line 51
    if-nez p2, :cond_0

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    iput-object p2, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->c:Landroid/view/View;

    .line 55
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->a:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 59
    invoke-virtual {p0, p2, v0}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/Window;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->f:Landroid/view/Window;

    .line 64
    return-void
.end method

.method public a(Lcom/dolphin/browser/search/ui/y;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->e:Lcom/dolphin/browser/search/ui/y;

    .line 67
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 72
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->a:I

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->d:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setDropDownHeight(I)V

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->d:Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_2

    .line 84
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->invalidate()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->f:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->e:Lcom/dolphin/browser/search/ui/y;

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->f:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 97
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->e:Lcom/dolphin/browser/search/ui/y;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/search/ui/y;->a(Z)V

    .line 103
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->forceLayout()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchDialogRootView;->e:Lcom/dolphin/browser/search/ui/y;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/search/ui/y;->a(Z)V

    goto :goto_1
.end method
