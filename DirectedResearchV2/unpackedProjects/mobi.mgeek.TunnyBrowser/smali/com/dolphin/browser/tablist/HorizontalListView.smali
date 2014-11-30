.class public Lcom/dolphin/browser/tablist/HorizontalListView;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalListView.java"

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

.field private g:Lcom/dolphin/browser/tablist/ar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v4, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->f:Z

    .line 46
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 47
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 48
    new-instance v2, Lcom/dolphin/browser/tablist/be;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/dolphin/browser/tablist/be;-><init>(ILcom/dolphin/browser/tablist/bj;FF)V

    iput-object v2, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->b:Lcom/dolphin/browser/tablist/be;

    .line 50
    invoke-static {p1, p2, p0, v4}, Lcom/dolphin/browser/tablist/bd;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/dolphin/browser/tablist/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->a:Lcom/dolphin/browser/tablist/bd;

    .line 52
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/tablist/HorizontalListView;->setHorizontalScrollBarEnabled(Z)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/HorizontalListView;)Lcom/dolphin/browser/tablist/cu;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->d:Lcom/dolphin/browser/tablist/cu;

    return-object v0
.end method

.method private a(II)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/HorizontalListView;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/HorizontalListView;->e()V

    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/tablist/HorizontalListView;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/HorizontalListView;->d()V

    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v3, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    .line 67
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->f:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->removeAllViews()V

    .line 69
    iput-boolean v2, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->f:Z

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->e:Lcom/dolphin/browser/tablist/bl;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bl;->getCount()I

    move-result v4

    .line 72
    invoke-virtual {v3}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildCount()I

    move-result v0

    .line 73
    if-le v0, v4, :cond_3

    .line 74
    :goto_0
    if-ge v2, v4, :cond_1

    .line 76
    iget-object v1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->e:Lcom/dolphin/browser/tablist/bl;

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3}, Lcom/dolphin/browser/tablist/bl;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_1
    sub-int/2addr v0, v4

    invoke-virtual {v3, v4, v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->removeViews(II)V

    .line 111
    :cond_2
    new-instance v0, Lcom/dolphin/browser/tablist/ao;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/ao;-><init>(Lcom/dolphin/browser/tablist/HorizontalListView;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void

    :cond_3
    move v1, v2

    .line 80
    :goto_1
    if-ge v1, v0, :cond_4

    .line 81
    iget-object v5, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->e:Lcom/dolphin/browser/tablist/bl;

    invoke-virtual {v3, v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v1, v6, v3}, Lcom/dolphin/browser/tablist/bl;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_4
    :goto_2
    if-ge v0, v4, :cond_2

    .line 84
    iget-object v1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->e:Lcom/dolphin/browser/tablist/bl;

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v3}, Lcom/dolphin/browser/tablist/bl;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 85
    iget-object v5, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->a:Lcom/dolphin/browser/tablist/bd;

    if-eqz v5, :cond_5

    .line 86
    iget-object v5, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->a:Lcom/dolphin/browser/tablist/bd;

    invoke-virtual {v5, v1}, Lcom/dolphin/browser/tablist/bd;->a(Landroid/view/View;)V

    .line 89
    :cond_5
    new-instance v5, Lcom/dolphin/browser/tablist/am;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/tablist/am;-><init>(Lcom/dolphin/browser/tablist/HorizontalListView;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 99
    new-instance v5, Lcom/dolphin/browser/tablist/an;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/tablist/an;-><init>(Lcom/dolphin/browser/tablist/HorizontalListView;)V

    .line 106
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v3, v1, v2}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Landroid/view/View;Z)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private e()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->e:Lcom/dolphin/browser/tablist/bl;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bl;->b()I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 127
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/HorizontalListView;->getScrollX()I

    move-result v2

    .line 128
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/HorizontalListView;->getWidth()I

    move-result v3

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    .line 130
    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/tablist/HorizontalListView;->smoothScrollBy(II)V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->b:Lcom/dolphin/browser/tablist/be;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/be;->a(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 5

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/HorizontalListView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float v2, v0, v1

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/HorizontalListView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v0, v1

    .line 319
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 321
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

    .line 326
    :goto_1
    return-object v0

    .line 319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->d:Lcom/dolphin/browser/tablist/cu;

    invoke-interface {v0}, Lcom/dolphin/browser/tablist/cu;->a()V

    .line 446
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Landroid/view/View;F)V

    .line 374
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/animation/Animation;Z)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Landroid/view/View;Landroid/view/animation/Animation;Z)V

    .line 398
    return-void
.end method

.method public a(Lcom/dolphin/browser/tablist/ar;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->g:Lcom/dolphin/browser/tablist/ar;

    .line 467
    return-void
.end method

.method public a(Lcom/dolphin/browser/tablist/bl;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->e:Lcom/dolphin/browser/tablist/bl;

    if-ne p1, v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/tablist/bl;->a(Lcom/dolphin/browser/tablist/bo;)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->f:Z

    .line 141
    iput-object p1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->e:Lcom/dolphin/browser/tablist/bl;

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->e:Lcom/dolphin/browser/tablist/bl;

    new-instance v1, Lcom/dolphin/browser/tablist/ap;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/tablist/ap;-><init>(Lcom/dolphin/browser/tablist/HorizontalListView;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/bl;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/tablist/cu;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->d:Lcom/dolphin/browser/tablist/cu;

    .line 294
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->b:Lcom/dolphin/browser/tablist/be;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    const/high16 v2, -0x3e900000

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/tablist/be;->a(Landroid/view/ViewGroup;F)V

    .line 62
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/bp;

    .line 427
    iget-object v1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->e:Lcom/dolphin/browser/tablist/bl;

    iget-object v0, v0, Lcom/dolphin/browser/tablist/bp;->a:Lcom/dolphin/browser/tablist/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bk;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/bl;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 428
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->d:Lcom/dolphin/browser/tablist/cu;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/tablist/cu;->a(I)V

    .line 429
    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/tablist/AnimListItemParent;->b(Landroid/view/View;F)V

    .line 386
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 451
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->setVisibility(I)V

    .line 452
    new-instance v0, Lcom/dolphin/browser/c/f;

    invoke-direct {v0}, Lcom/dolphin/browser/c/f;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/f;->a()Z

    .line 453
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 434
    iget-object v1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    .line 435
    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildCount()I

    move-result v2

    .line 436
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 437
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 438
    iget-object v4, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->e:Lcom/dolphin/browser/tablist/bl;

    invoke-virtual {v4, v3}, Lcom/dolphin/browser/tablist/bl;->a(Landroid/view/View;)V

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 332
    return-object p1
.end method

.method public e(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public f(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->g:Lcom/dolphin/browser/tablist/ar;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->g:Lcom/dolphin/browser/tablist/ar;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/ar;->a(Landroid/view/View;)V

    .line 347
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->f(Landroid/view/View;)V

    .line 349
    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->g(Landroid/view/View;)V

    .line 355
    return-void
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->a:Lcom/dolphin/browser/tablist/bd;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->a:Lcom/dolphin/browser/tablist/bd;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bd;->b()I

    move-result v0

    .line 227
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->a:Lcom/dolphin/browser/tablist/bd;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->a:Lcom/dolphin/browser/tablist/bd;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bd;->a()I

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public h(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->g:Lcom/dolphin/browser/tablist/ar;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->g:Lcom/dolphin/browser/tablist/ar;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/tablist/ar;->b(Landroid/view/View;)V

    .line 368
    :cond_0
    return-void
.end method

.method public j(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->j(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public k(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->k(Landroid/view/View;)V

    .line 392
    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->l(Landroid/view/View;)V

    .line 404
    return-void
.end method

.method public m(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->a:Lcom/dolphin/browser/tablist/bd;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->a:Lcom/dolphin/browser/tablist/bd;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->d:Lcom/dolphin/browser/tablist/cu;

    iget-object v2, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/tablist/bd;->a(Lcom/dolphin/browser/tablist/cu;Landroid/widget/LinearLayout;Z)V

    .line 252
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 259
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 260
    iget-object v1, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->b:Lcom/dolphin/browser/tablist/be;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/be;->a(F)V

    .line 261
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->setScrollbarFadingEnabled(Z)V

    .line 236
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080390

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/AnimListItemParent;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Lcom/dolphin/browser/tablist/a;)V

    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/AnimListItemParent;->setOrientation(I)V

    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->c:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Lcom/dolphin/browser/tablist/f;)V

    .line 242
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/tablist/HorizontalListView;->a(II)V

    .line 243
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->b:Lcom/dolphin/browser/tablist/be;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/be;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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
    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 274
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/tablist/HorizontalListView;->b:Lcom/dolphin/browser/tablist/be;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/be;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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
    .line 159
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->removeViewInLayout(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/HorizontalListView;->getVisibility()I

    move-result v0

    .line 300
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 304
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Lcom/dolphin/browser/tablist/aq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/aq;-><init>(Lcom/dolphin/browser/tablist/HorizontalListView;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 312
    :cond_0
    return-void
.end method
