.class public Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;
.super Landroid/view/ViewGroup;
.source "RefreshableListViewContainer.java"


# instance fields
.field private a:Landroid/widget/Scroller;

.field private b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

.field private c:I

.field private d:I

.field private e:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 39
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    .line 49
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    .line 50
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    .line 51
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    .line 49
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    .line 50
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    .line 51
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    .line 49
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    .line 50
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    .line 51
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a:Landroid/widget/Scroller;

    .line 71
    sget-object v0, Lcom/facebook/orca/R$styleable;->e:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x420c0000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq p1, v0, :cond_0

    .line 449
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 450
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v0

    .line 451
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->a(I)V

    .line 452
    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne p1, v1, :cond_1

    .line 453
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 458
    :goto_0
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;->a()V

    .line 462
    :cond_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 465
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v2, :cond_1

    .line 466
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 467
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    div-float v0, v2, v0

    const/high16 v2, 0x457a0000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 469
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    float-to-int v2, v0

    .line 470
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a:Landroid/widget/Scroller;

    neg-int v4, v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 471
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->invalidate()V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v2, :cond_0

    .line 473
    if-nez p1, :cond_2

    .line 474
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    float-to-int v2, v0

    .line 476
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    if-nez v0, :cond_3

    .line 477
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    sub-int/2addr v0, v2

    move v4, v0

    .line 481
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a:Landroid/widget/Scroller;

    const/16 v5, 0x1f4

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 483
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->invalidate()V

    goto :goto_0

    .line 479
    :cond_3
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    neg-int v0, v0

    sub-int/2addr v0, v2

    move v4, v0

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    move v0, v3

    .line 280
    :goto_0
    return v0

    .line 266
    :cond_0
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    if-nez v0, :cond_3

    .line 267
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 269
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    sub-float/2addr v0, v1

    .line 270
    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 272
    goto :goto_0

    .line 274
    :cond_3
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    if-ne v0, v3, :cond_6

    .line 275
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 277
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    sub-float/2addr v0, v1

    .line 278
    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    .line 280
    goto :goto_0

    .line 283
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;
    .locals 3

    .prologue
    .line 488
    if-nez p1, :cond_0

    .line 489
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 491
    :goto_0
    return-object v0

    .line 490
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 491
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    goto :goto_0

    .line 493
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 292
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 293
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 294
    float-to-int v3, v1

    .line 295
    float-to-int v4, v2

    .line 296
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 297
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->getHitRect(Landroid/graphics/Rect;)V

    .line 298
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/widget/ListView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 301
    invoke-virtual {v0}, Landroid/widget/ListView;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 302
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 305
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 313
    :goto_0
    return v0

    .line 306
    :catch_0
    move-exception v0

    .line 309
    const-string v1, "orca:RefreshableListViewContainer"

    const-string v2, "Caught and ignoring ArrayIndexOutOfBoundsException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    .line 319
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->invalidate()V

    .line 324
    :cond_0
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 328
    :cond_2
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 329
    if-eqz v0, :cond_1

    .line 333
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 335
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->offsetTopAndBottom(I)V

    .line 336
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->offsetTopAndBottom(I)V

    .line 337
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 338
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->invalidate()V

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 389
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    sub-float/2addr v0, v1

    .line 390
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    if-nez v1, :cond_1

    .line 391
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 392
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    .line 403
    :goto_0
    return-void

    .line 394
    :cond_0
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    goto :goto_0

    .line 397
    :cond_1
    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    .line 398
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    goto :goto_0

    .line 400
    :cond_2
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    goto :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 409
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    sub-float/2addr v0, v1

    .line 411
    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    .line 412
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    .line 414
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    if-nez v0, :cond_1

    .line 415
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_0

    .line 421
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    if-nez v0, :cond_2

    .line 422
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    .line 427
    :cond_0
    :goto_1
    return-void

    .line 417
    :cond_1
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    goto :goto_0

    .line 424
    :cond_2
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    goto :goto_1
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 346
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v0

    .line 347
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move v0, v4

    .line 359
    :goto_0
    return v0

    .line 351
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v1, :cond_1

    move v0, v3

    .line 352
    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_2

    move v0, v3

    .line 356
    goto :goto_0

    :cond_2
    move v0, v4

    .line 359
    goto :goto_0
.end method

.method private e()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 363
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v0

    .line 364
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move v0, v4

    .line 383
    :goto_0
    return v0

    .line 368
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-eq v1, v2, :cond_1

    move v0, v5

    .line 369
    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 372
    if-nez v1, :cond_2

    move v0, v5

    .line 373
    goto :goto_0

    .line 375
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 376
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 377
    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 378
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 379
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    move v0, v5

    .line 380
    goto :goto_0

    :cond_3
    move v0, v4

    .line 383
    goto :goto_0
.end method

.method private f()Landroid/view/View;
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    return-object p0
.end method

.method private h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v0, v1, :cond_0

    .line 435
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 436
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    .line 438
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 342
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f:I

    .line 343
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_0

    .line 442
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 443
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    .line 445
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 184
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c()V

    .line 185
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 95
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    if-nez v0, :cond_1

    .line 145
    sub-int v0, p5, p3

    .line 146
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v1

    sub-int v2, p4, p2

    invoke-virtual {v1, v4, v4, v2, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->layout(IIII)V

    .line 150
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    sub-int v0, v4, v0

    .line 151
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v1

    sub-int v2, p4, p2

    invoke-virtual {v1, v4, v0, v2, v4}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->layout(IIII)V

    .line 155
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    sub-int v1, v0, v1

    .line 156
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f()Landroid/view/View;

    move-result-object v2

    sub-int v3, p4, p2

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 177
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 178
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c()V

    goto :goto_0

    .line 157
    :cond_1
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 161
    sub-int v0, p5, p3

    .line 162
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v1

    sub-int v2, p4, p2

    invoke-virtual {v1, v4, v4, v2, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->layout(IIII)V

    .line 166
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    add-int/2addr v1, v0

    .line 167
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v2

    sub-int v3, p4, p2

    invoke-virtual {v2, v4, v0, v3, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->layout(IIII)V

    .line 171
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    add-int/2addr v0, v1

    .line 172
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f()Landroid/view/View;

    move-result-object v2

    sub-int v3, p4, p2

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 174
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildCount()I

    move-result v0

    move v2, v1

    move v3, v1

    .line 120
    :goto_0
    if-ge v1, v0, :cond_0

    .line 121
    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 122
    invoke-virtual {p0, v4, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->measureChild(Landroid/view/View;II)V

    .line 123
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 124
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 131
    invoke-static {v1, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setMeasuredDimension(II)V

    .line 132
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    .line 133
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    .line 134
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f:I

    if-ne v1, v5, :cond_0

    .line 198
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 204
    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    move v0, v5

    .line 253
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    .line 256
    if-eqz v0, :cond_d

    .line 257
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 259
    :goto_1
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c()V

    .line 260
    return v0

    :pswitch_0
    move v0, v5

    .line 206
    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_4

    .line 211
    :cond_2
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 212
    invoke-direct {p0, v3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    .line 217
    :cond_3
    :goto_2
    iput v4, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    move v0, v5

    .line 218
    goto :goto_0

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_3

    .line 214
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 215
    invoke-direct {p0, v3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    goto :goto_2

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_7

    .line 221
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c(Landroid/view/MotionEvent;)V

    .line 222
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 223
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    :cond_5
    :goto_3
    move v0, v3

    .line 227
    goto :goto_0

    .line 224
    :cond_6
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_5

    .line 225
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_3

    .line 228
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_c

    .line 231
    :cond_8
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d(Landroid/view/MotionEvent;)V

    .line 232
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_9

    .line 233
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    move v0, v5

    goto/16 :goto_0

    .line 235
    :cond_9
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b

    .line 236
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    :cond_a
    :goto_4
    move v0, v3

    .line 240
    goto/16 :goto_0

    .line 237
    :cond_b
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 238
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_4

    .line 242
    :cond_c
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_1

    .line 243
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d(Landroid/view/MotionEvent;)V

    move v0, v3

    .line 245
    goto/16 :goto_0

    :cond_d
    move v0, v5

    goto/16 :goto_1

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDirection(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:I

    .line 91
    return-void
.end method

.method public setLastLoadedTime(J)V
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->a(J)V

    .line 431
    return-void
.end method

.method public setOnRefreshListener(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

    .line 83
    return-void
.end method
