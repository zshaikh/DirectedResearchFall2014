.class public Lcom/dolphin/browser/bookmark/cw;
.super Landroid/widget/LinearLayout;
.source "TopPopupView.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/dolphin/browser/bookmark/cy;

.field private c:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/cp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/dolphin/browser/bookmark/cx;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/cx;-><init>(Lcom/dolphin/browser/bookmark/cw;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/cw;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 34
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/cw;->a:Landroid/widget/ListView;

    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cw;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cw;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    new-instance v0, Lcom/dolphin/browser/bookmark/cy;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/bookmark/cy;-><init>(Lcom/dolphin/browser/bookmark/cw;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/cw;->b:Lcom/dolphin/browser/bookmark/cy;

    .line 38
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 40
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cw;->a:Landroid/widget/ListView;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/bookmark/cw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cw;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cw;->b:Lcom/dolphin/browser/bookmark/cy;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cw;->a()V

    .line 44
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cw;->c()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/cw;)Lcom/dolphin/browser/bookmark/cy;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cw;->b:Lcom/dolphin/browser/bookmark/cy;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020135

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/bookmark/cw;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cw;->a:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0026

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cw;->a:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 52
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/cw;->a:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020027

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cw;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cw;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cw;->b:Lcom/dolphin/browser/bookmark/cy;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/cy;->a()V

    .line 56
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cw;->b:Lcom/dolphin/browser/bookmark/cy;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/bookmark/cy;->a(IZ)V

    .line 82
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/cw;->setVisibility(I)V

    .line 74
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/cw;->setVisibility(I)V

    .line 78
    return-void
.end method
