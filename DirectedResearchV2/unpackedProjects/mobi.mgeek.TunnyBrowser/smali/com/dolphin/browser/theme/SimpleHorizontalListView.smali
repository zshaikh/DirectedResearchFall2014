.class public Lcom/dolphin/browser/theme/SimpleHorizontalListView;
.super Landroid/widget/HorizontalScrollView;
.source "SimpleHorizontalListView.java"

# interfaces
.implements Lcom/dolphin/browser/ui/aa;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/BaseAdapter;

.field private c:Z

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:I

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnLongClickListener;

.field private k:Landroid/view/ContextMenu$ContextMenuInfo;

.field private l:Landroid/view/View$OnCreateContextMenuListener;

.field private m:Lcom/dolphin/browser/theme/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-boolean v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->c:Z

    .line 60
    iput v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->d:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->h:I

    .line 227
    new-instance v0, Lcom/dolphin/browser/theme/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/l;-><init>(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->i:Landroid/view/View$OnClickListener;

    .line 238
    new-instance v0, Lcom/dolphin/browser/theme/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/m;-><init>(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->j:Landroid/view/View$OnLongClickListener;

    .line 49
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput-boolean v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->c:Z

    .line 60
    iput v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->d:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->h:I

    .line 227
    new-instance v0, Lcom/dolphin/browser/theme/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/l;-><init>(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->i:Landroid/view/View$OnClickListener;

    .line 238
    new-instance v0, Lcom/dolphin/browser/theme/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/m;-><init>(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->j:Landroid/view/View$OnLongClickListener;

    .line 44
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 253
    new-instance v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    int-to-long v2, v0

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v1
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/SimpleHorizontalListView;Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->k:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/SimpleHorizontalListView;Landroid/view/View;)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a(Landroid/view/View;)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method private a()Landroid/view/View;
    .locals 2

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->b()I

    move-result v0

    .line 307
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->setHorizontalScrollBarEnabled(Z)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->setOverScrollMode(I)V

    .line 75
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->addView(Landroid/view/View;)V

    .line 78
    iput-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a:Landroid/widget/LinearLayout;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->g:I

    .line 80
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->updateTheme()V

    .line 81
    return-void
.end method

.method private b()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->b:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/dolphin/browser/theme/n;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->b:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/dolphin/browser/theme/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/n;->a()I

    move-result v0

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)Lcom/dolphin/browser/theme/o;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->m:Lcom/dolphin/browser/theme/o;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/theme/SimpleHorizontalListView;)Landroid/view/View$OnCreateContextMenuListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->l:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 3

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 269
    instance-of v2, p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    .line 270
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 273
    check-cast v0, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 277
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->l:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->l:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v0, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 282
    :cond_1
    if-eqz v2, :cond_2

    .line 285
    check-cast p1, Lcom/dolphin/browser/ui/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 287
    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 87
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 88
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 89
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->computeHorizontalScrollRange()I

    move-result v2

    .line 90
    int-to-float v1, v1

    int-to-float v3, v2

    div-float/2addr v1, v3

    .line 91
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 92
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 93
    iget-object v2, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    iget-object v2, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->e:Landroid/graphics/drawable/Drawable;

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v0, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 100
    return-void
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->k:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 292
    iput-object p1, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->l:Landroid/view/View$OnCreateContextMenuListener;

    .line 293
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public updateTheme()V
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    .line 324
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    invoke-direct {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->a()Landroid/view/View;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/dolphin/browser/ui/aa;

    if-eqz v1, :cond_0

    .line 328
    check-cast v0, Lcom/dolphin/browser/ui/aa;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/aa;->updateTheme()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 335
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->invalidate()V

    .line 336
    return-void

    .line 332
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202f5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ar;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->f:Landroid/graphics/drawable/Drawable;

    .line 333
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202f4

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ar;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/SimpleHorizontalListView;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
