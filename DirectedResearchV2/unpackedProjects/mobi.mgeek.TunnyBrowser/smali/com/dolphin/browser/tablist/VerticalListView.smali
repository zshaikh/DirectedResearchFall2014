.class public Lcom/dolphin/browser/tablist/VerticalListView;
.super Landroid/widget/ScrollView;
.source "VerticalListView.java"

# interfaces
.implements Lcom/dolphin/browser/tablist/a;
.implements Lcom/dolphin/browser/tablist/bj;
.implements Lcom/dolphin/browser/tablist/bo;
.implements Lcom/dolphin/browser/tablist/f;


# instance fields
.field private a:Lcom/dolphin/browser/tablist/bd;

.field private b:Lcom/dolphin/browser/tablist/be;

.field private c:Lcom/dolphin/browser/tablist/AnimListItemParent;

.field private d:Lcom/dolphin/browser/tablist/cu;

.field private e:Lcom/dolphin/browser/tablist/bl;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-boolean v3, p0, Lcom/dolphin/browser/tablist/VerticalListView;->f:Z

    .line 45
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/VerticalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 46
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 47
    new-instance v2, Lcom/dolphin/browser/tablist/be;

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/dolphin/browser/tablist/be;-><init>(ILcom/dolphin/browser/tablist/bj;FF)V

    iput-object v2, p0, Lcom/dolphin/browser/tablist/VerticalListView;->b:Lcom/dolphin/browser/tablist/be;

    .line 49
    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Lcom/dolphin/browser/tablist/bd;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/dolphin/browser/tablist/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->a:Lcom/dolphin/browser/tablist/bd;

    .line 51
    invoke-virtual {p0, v3}, Lcom/dolphin/browser/tablist/VerticalListView;->setVerticalScrollBarEnabled(Z)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/VerticalListView;)Lcom/dolphin/browser/tablist/cu;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->d:Lcom/dolphin/browser/tablist/cu;

    return-object v0
.end method

.method private a(II)V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/VerticalListView;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/VerticalListView;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->e:Lcom/dolphin/browser/tablist/bl;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bl;->b()I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 136
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/VerticalListView;->getScrollY()I

    move-result v2

    .line 137
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/VerticalListView;->getHeight()I

    move-result v3

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    .line 139
    const/4 v3, 0x0

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    invoke-virtual {p0, v3, v0}, Lcom/dolphin/browser/tablist/VerticalListView;->smoothScrollBy(II)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->b:Lcom/dolphin/browser/tablist/be;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/be;->a(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 5

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/VerticalListView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float v2, v0, v1

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/VerticalListView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v0, v1

    .line 313
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    move-object v0, v1

    .line 320
    :goto_1
    return-object v0

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->d:Lcom/dolphin/browser/tablist/cu;

    invoke-interface {v0}, Lcom/dolphin/browser/tablist/cu;->a()V

    .line 437
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Landroid/view/View;F)V

    .line 362
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/animation/Animation;Z)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Landroid/view/View;Landroid/view/animation/Animation;Z)V

    .line 386
    return-void
.end method

.method public a(Lcom/dolphin/browser/tablist/bl;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->e:Lcom/dolphin/browser/tablist/bl;

    if-ne p1, v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/tablist/bl;->a(Lcom/dolphin/browser/tablist/bo;)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->f:Z

    .line 150
    iput-object p1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->e:Lcom/dolphin/browser/tablist/bl;

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->e:Lcom/dolphin/browser/tablist/bl;

    new-instance v1, Lcom/dolphin/browser/tablist/cq;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/tablist/cq;-><init>(Lcom/dolphin/browser/tablist/VerticalListView;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/bl;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/tablist/cu;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->d:Lcom/dolphin/browser/tablist/cu;

    .line 288
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->b:Lcom/dolphin/browser/tablist/be;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    const/high16 v2, -0x3e900000

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/tablist/be;->a(Landroid/view/ViewGroup;F)V

    .line 58
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/bp;

    .line 418
    iget-object v1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->e:Lcom/dolphin/browser/tablist/bl;

    iget-object v0, v0, Lcom/dolphin/browser/tablist/bp;->a:Lcom/dolphin/browser/tablist/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bk;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/bl;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 419
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->d:Lcom/dolphin/browser/tablist/cu;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/cu;->a(I)V

    .line 420
    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/tablist/AnimListItemParent;->b(Landroid/view/View;F)V

    .line 374
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 442
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/VerticalListView;->setVisibility(I)V

    .line 443
    new-instance v0, Lcom/dolphin/browser/c/f;

    invoke-direct {v0}, Lcom/dolphin/browser/c/f;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/f;->a()Z

    .line 444
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 425
    iget-object v1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    .line 426
    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildCount()I

    move-result v2

    .line 427
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 428
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 429
    iget-object v4, p0, Lcom/dolphin/browser/tablist/VerticalListView;->e:Lcom/dolphin/browser/tablist/bl;

    invoke-virtual {v4, v3}, Lcom/dolphin/browser/tablist/bl;->a(Landroid/view/View;)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 326
    return-object p1
.end method

.method public d()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/VerticalListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/DisplayManager;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    .line 66
    iget-boolean v3, p0, Lcom/dolphin/browser/tablist/VerticalListView;->f:Z

    if-eqz v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v4}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v0, v4}, Lcom/dolphin/browser/tablist/AnimListItemParent;->removeViews(II)V

    .line 68
    iput-boolean v1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->f:Z

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/tablist/VerticalListView;->e:Lcom/dolphin/browser/tablist/bl;

    invoke-virtual {v3}, Lcom/dolphin/browser/tablist/bl;->getCount()I

    move-result v3

    .line 71
    invoke-virtual {v2}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildCount()I

    move-result v4

    .line 72
    add-int/lit8 v5, v3, 0x1

    if-le v4, v5, :cond_4

    .line 73
    :goto_1
    if-ge v1, v3, :cond_2

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->e:Lcom/dolphin/browser/tablist/bl;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v2}, Lcom/dolphin/browser/tablist/bl;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :cond_2
    add-int/lit8 v0, v3, 0x1

    sub-int v1, v4, v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->removeViews(II)V

    .line 120
    :cond_3
    new-instance v0, Lcom/dolphin/browser/tablist/cp;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/cp;-><init>(Lcom/dolphin/browser/tablist/VerticalListView;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/VerticalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 82
    :cond_4
    :goto_2
    if-ge v0, v4, :cond_5

    .line 83
    iget-object v5, p0, Lcom/dolphin/browser/tablist/VerticalListView;->e:Lcom/dolphin/browser/tablist/bl;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Lcom/dolphin/browser/tablist/bl;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 88
    :cond_5
    if-lez v4, :cond_7

    .line 89
    add-int/lit8 v0, v4, -0x1

    .line 92
    :goto_3
    if-ge v0, v3, :cond_3

    .line 93
    iget-object v4, p0, Lcom/dolphin/browser/tablist/VerticalListView;->e:Lcom/dolphin/browser/tablist/bl;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Lcom/dolphin/browser/tablist/bl;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 94
    iget-object v5, p0, Lcom/dolphin/browser/tablist/VerticalListView;->a:Lcom/dolphin/browser/tablist/bd;

    if-eqz v5, :cond_6

    .line 95
    iget-object v5, p0, Lcom/dolphin/browser/tablist/VerticalListView;->a:Lcom/dolphin/browser/tablist/bd;

    invoke-virtual {v5, v4}, Lcom/dolphin/browser/tablist/bd;->a(Landroid/view/View;)V

    .line 98
    :cond_6
    new-instance v5, Lcom/dolphin/browser/tablist/cn;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/tablist/cn;-><init>(Lcom/dolphin/browser/tablist/VerticalListView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v4, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 108
    new-instance v5, Lcom/dolphin/browser/tablist/co;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/tablist/co;-><init>(Lcom/dolphin/browser/tablist/VerticalListView;)V

    .line 115
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v2, v4, v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Landroid/view/View;Z)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public e(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public f(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/VerticalListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 339
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->f(Landroid/view/View;)V

    .line 340
    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->g(Landroid/view/View;)V

    .line 346
    return-void
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->a:Lcom/dolphin/browser/tablist/bd;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->a:Lcom/dolphin/browser/tablist/bd;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bd;->b()I

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->a:Lcom/dolphin/browser/tablist/bd;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->a:Lcom/dolphin/browser/tablist/bd;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bd;->a()I

    move-result v0

    .line 211
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public h(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public j(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->j(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public k(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->k(Landroid/view/View;)V

    .line 380
    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->l(Landroid/view/View;)V

    .line 392
    return-void
.end method

.method public m(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 397
    instance-of v0, p1, Lcom/dolphin/browser/tablist/bn;

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->a:Lcom/dolphin/browser/tablist/bd;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->a:Lcom/dolphin/browser/tablist/bd;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->d:Lcom/dolphin/browser/tablist/cu;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/tablist/bd;->a(Lcom/dolphin/browser/tablist/cu;Landroid/widget/LinearLayout;Z)V

    .line 245
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/VerticalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 253
    iget-object v1, p0, Lcom/dolphin/browser/tablist/VerticalListView;->b:Lcom/dolphin/browser/tablist/be;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/be;->a(F)V

    .line 254
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 228
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 229
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/tablist/VerticalListView;->setScrollbarFadingEnabled(Z)V

    .line 230
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080392

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/VerticalListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/AnimListItemParent;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    .line 231
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Lcom/dolphin/browser/tablist/a;)V

    .line 232
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->setOrientation(I)V

    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Lcom/dolphin/browser/tablist/f;)V

    .line 235
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/tablist/VerticalListView;->a(II)V

    .line 236
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->b:Lcom/dolphin/browser/tablist/be;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/be;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 267
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/tablist/VerticalListView;->b:Lcom/dolphin/browser/tablist/be;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/be;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->removeViewInLayout(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/VerticalListView;->getVisibility()I

    move-result v0

    .line 294
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 298
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Lcom/dolphin/browser/tablist/cr;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/cr;-><init>(Lcom/dolphin/browser/tablist/VerticalListView;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/VerticalListView;->post(Ljava/lang/Runnable;)Z

    .line 306
    :cond_0
    return-void
.end method
