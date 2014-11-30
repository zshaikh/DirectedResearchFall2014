.class public Lcom/mgeek/android/ui/ThreeScreenScrollableView;
.super Lcom/dolphin/browser/ui/view/ContentWrapper;
.source "ThreeScreenScrollableView.java"


# static fields
.field public static final b:I

.field public static final c:I

.field private static final d:I

.field private static final e:I


# instance fields
.field private A:I

.field private B:Landroid/graphics/Rect;

.field private C:[I

.field private D:Z

.field private E:Lcom/mgeek/android/ui/bf;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroid/view/GestureDetector$OnGestureListener;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:F

.field private n:Landroid/widget/Scroller;

.field private o:Z

.field private p:Z

.field private q:Landroid/view/GestureDetector;

.field private r:Z

.field private s:Lcom/mgeek/android/ui/bi;

.field private t:Z

.field private u:I

.field private v:I

.field private w:Lcom/mgeek/android/ui/aj;

.field private x:Lcom/mgeek/android/ui/ak;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000

    const/16 v1, 0x10e

    .line 32
    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b:I

    .line 33
    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c:I

    .line 39
    sget v0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->d:I

    .line 40
    sget v0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/ui/view/ContentWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->m:F

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->r:Z

    .line 61
    iput-boolean v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->t:Z

    .line 65
    new-instance v0, Lcom/mgeek/android/ui/aj;

    invoke-direct {v0}, Lcom/mgeek/android/ui/aj;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->w:Lcom/mgeek/android/ui/aj;

    .line 66
    sget-object v0, Lcom/mgeek/android/ui/ak;->a:Lcom/mgeek/android/ui/ak;

    iput-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->x:Lcom/mgeek/android/ui/ak;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->z:I

    .line 69
    iput v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->A:I

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->B:Landroid/graphics/Rect;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->C:[I

    .line 74
    new-instance v0, Lcom/mgeek/android/ui/bf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mgeek/android/ui/bf;-><init>(Lcom/mgeek/android/ui/ThreeScreenScrollableView;Lcom/mgeek/android/ui/be;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->E:Lcom/mgeek/android/ui/bf;

    .line 519
    new-instance v0, Lcom/mgeek/android/ui/be;

    invoke-direct {v0, p0}, Lcom/mgeek/android/ui/be;-><init>(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->G:Landroid/view/GestureDetector$OnGestureListener;

    .line 93
    return-void
.end method

.method private a(ILandroid/view/View;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 504
    invoke-virtual {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->getScrollX()I

    move-result v1

    .line 506
    if-eqz p3, :cond_0

    if-eq p1, v1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->n:Landroid/widget/Scroller;

    sub-int v3, p1, v1

    const/16 v5, 0x1f4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 508
    invoke-direct {p0, v6}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->d(Z)V

    .line 509
    iput-boolean v6, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->o:Z

    .line 510
    iput-object p2, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->l:Landroid/view/View;

    .line 511
    invoke-virtual {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->invalidate()V

    .line 517
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->scrollTo(II)V

    .line 514
    invoke-direct {p0, p2}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->a(Landroid/view/View;)V

    .line 515
    invoke-direct {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->d()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->k:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 495
    iput-object p1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->k:Landroid/view/View;

    .line 496
    instance-of v0, p1, Lcom/mgeek/android/ui/bh;

    if-eqz v0, :cond_0

    .line 497
    const-string v0, "ThreeScreenScrollableView"

    const-string v1, "on page shown"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    check-cast p1, Lcom/mgeek/android/ui/bh;

    invoke-interface {p1}, Lcom/mgeek/android/ui/bh;->a()V

    .line 501
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->A:I

    return v0
.end method

.method static synthetic c(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->z:I

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->F:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/mgeek/android/ui/ThreeScreenScrollableView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->d(Z)V

    .line 148
    const-string v0, "Fps Of LeftBar Show Animation"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    .line 149
    const-string v0, "Fps Of RightBar Show Animation"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    .line 150
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->F:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->F:Ljava/util/List;

    .line 152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 153
    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 155
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 157
    :cond_1
    return-void
.end method

.method private d(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 548
    const-string v1, "ThreeScreenScrollableView"

    const-string v2, "set drawing cache enabled %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 550
    iget-boolean v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->t:Z

    if-ne v1, p1, :cond_1

    .line 560
    :cond_0
    return-void

    .line 554
    :cond_1
    iput-boolean p1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->t:Z

    .line 556
    invoke-virtual {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->getChildCount()I

    move-result v1

    .line 557
    :goto_0
    if-ge v0, v1, :cond_0

    .line 558
    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 429
    iget-boolean v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->r:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->D:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->E:Lcom/mgeek/android/ui/bf;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/bf;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->E:Lcom/mgeek/android/ui/bf;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/bf;->b()I

    move-result v0

    .line 448
    :cond_0
    :goto_0
    return v0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 448
    if-nez v0, :cond_0

    sget v0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b:I

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 483
    invoke-virtual {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->getScrollX()I

    move-result v0

    .line 484
    invoke-direct {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 485
    invoke-virtual {p0, v3}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->a(Z)V

    .line 491
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f()I

    move-result v1

    iget-object v2, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 487
    invoke-virtual {p0, v3}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b(Z)V

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {p0, v3}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    const/4 v0, 0x2

    goto :goto_0

    .line 310
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 411
    const-string v0, "Fps Of LeftBar Show Animation"

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 412
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f:Landroid/view/View;

    invoke-direct {p0, v2, v0, p1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->a(ILandroid/view/View;Z)V

    .line 413
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 436
    const/4 v0, 0x1

    goto :goto_0

    .line 438
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f()I

    move-result v0

    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    invoke-direct {p0, v0, v1, p1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->a(ILandroid/view/View;Z)V

    .line 417
    return-void
.end method

.method public c(Z)V
    .locals 3

    .prologue
    .line 420
    const-string v0, "Fps Of RightBar Show Animation"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 421
    invoke-direct {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f()I

    move-result v0

    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->h:Landroid/view/View;

    invoke-direct {p0, v0, v1, p1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->a(ILandroid/view/View;Z)V

    .line 422
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->scrollTo(II)V

    .line 121
    invoke-virtual {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->invalidate()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->o:Z

    if-eqz v0, :cond_0

    .line 124
    iput-boolean v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->o:Z

    .line 125
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->l:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->a(Landroid/view/View;)V

    .line 126
    invoke-direct {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->d()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/view/ContentWrapper;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 406
    const-string v0, "Fps Of RightBar Show Animation"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->c(Ljava/lang/String;)V

    .line 407
    const-string v0, "Fps Of LeftBar Show Animation"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->c(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 198
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->onAttachedToWindow()V

    .line 103
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->q:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->G:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->q:Landroid/view/GestureDetector;

    .line 106
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 263
    invoke-direct {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->e()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 299
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    move v0, v1

    .line 299
    goto :goto_0

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 270
    invoke-direct {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c()V

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->m:F

    .line 272
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->q:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->u:I

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->v:I

    .line 275
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->w:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v0, p1}, Lcom/mgeek/android/ui/aj;->b(Landroid/view/MotionEvent;)V

    .line 276
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->w:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v0, p1}, Lcom/mgeek/android/ui/aj;->a(Landroid/view/MotionEvent;)V

    .line 277
    sget-object v0, Lcom/mgeek/android/ui/ak;->a:Lcom/mgeek/android/ui/ak;

    iput-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->x:Lcom/mgeek/android/ui/ak;

    .line 278
    invoke-virtual {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->a()I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->z:I

    .line 279
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->k:Landroid/view/View;

    iget-object v3, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    if-eq v0, v3, :cond_1

    .line 280
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    iget-object v3, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 281
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->C:[I

    iget v3, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->u:I

    aput v3, v0, v1

    .line 282
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->C:[I

    iget v3, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->v:I

    aput v3, v0, v2

    .line 283
    invoke-virtual {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->C:[I

    invoke-static {p0, v0, v3}, Lcom/dolphin/browser/util/at;->a(Landroid/view/View;Landroid/view/View;[I)V

    .line 285
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->B:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->C:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->C:[I

    aget v4, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iput-boolean v2, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->y:Z

    move v0, v2

    .line 287
    goto :goto_0

    .line 293
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 296
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 233
    sub-int v0, p4, p2

    .line 234
    sub-int v1, p5, p3

    .line 236
    iget-object v2, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 237
    iget-object v3, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f:Landroid/view/View;

    invoke-virtual {v3, v5, v5, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 238
    iget-object v3, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    add-int v4, v2, v0

    invoke-virtual {v3, v2, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 239
    iget-object v3, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->h:Landroid/view/View;

    add-int v4, v2, v0

    add-int/2addr v0, v2

    sget v2, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c:I

    add-int/2addr v0, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 242
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 243
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 244
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 245
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 246
    iget-object v3, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 247
    iget-object v4, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v0, v4, v0

    .line 248
    iget-object v4, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->i:Landroid/view/View;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 252
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 253
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 254
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 255
    iget-object v3, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 256
    iget-object v4, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v0, v4, v0

    .line 257
    iget-object v4, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->j:Landroid/view/View;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 259
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 203
    sget v0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b:I

    .line 204
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->E:Lcom/mgeek/android/ui/bf;

    invoke-virtual {v1}, Lcom/mgeek/android/ui/bf;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->E:Lcom/mgeek/android/ui/bf;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/bf;->b()I

    move-result v0

    .line 210
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 212
    iget-object v2, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f:Landroid/view/View;

    invoke-virtual {v2, v1, p2}, Landroid/view/View;->measure(II)V

    .line 213
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 214
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->h:Landroid/view/View;

    sget v2, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->e:I

    invoke-virtual {v1, v2, p2}, Landroid/view/View;->measure(II)V

    .line 216
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c:I

    add-int v6, v0, v1

    .line 217
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 219
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_1

    .line 220
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->i:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->j:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_2

    .line 224
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->j:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 227
    :cond_2
    invoke-static {v6, p1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->resolveSize(II)I

    move-result v0

    invoke-static {v7, p2}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->setMeasuredDimension(II)V

    .line 229
    return-void

    .line 206
    :cond_3
    iget-boolean v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->D:Z

    if-eqz v1, :cond_0

    .line 207
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    .prologue
    .line 563
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/ui/view/ContentWrapper;->onScrollChanged(IIII)V

    .line 564
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->s:Lcom/mgeek/android/ui/bi;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->s:Lcom/mgeek/android/ui/bi;

    sget v1, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/mgeek/android/ui/bi;->a(IIII)V

    .line 567
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v0, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 316
    invoke-direct {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->e()Z

    move-result v1

    if-nez v1, :cond_0

    move v7, v8

    .line 388
    :goto_0
    return v7

    .line 320
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    move v7, v8

    .line 388
    goto :goto_0

    .line 322
    :pswitch_0
    iget-boolean v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->y:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 327
    :pswitch_1
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->q:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 328
    iget v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->m:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v9, v1, v2

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->m:F

    .line 330
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->x:Lcom/mgeek/android/ui/ak;

    sget-object v2, Lcom/mgeek/android/ui/ak;->a:Lcom/mgeek/android/ui/ak;

    if-ne v1, v2, :cond_3

    .line 331
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->w:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v1, p1}, Lcom/mgeek/android/ui/aj;->a(Landroid/view/MotionEvent;)V

    .line 332
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->w:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v1}, Lcom/mgeek/android/ui/aj;->a()Lcom/mgeek/android/ui/ak;

    move-result-object v1

    iput-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->x:Lcom/mgeek/android/ui/ak;

    .line 334
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->x:Lcom/mgeek/android/ui/ak;

    sget-object v2, Lcom/mgeek/android/ui/ak;->c:Lcom/mgeek/android/ui/ak;

    if-ne v1, v2, :cond_3

    .line 335
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->w:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v1}, Lcom/mgeek/android/ui/aj;->b()Landroid/view/VelocityTracker;

    move-result-object v6

    .line 336
    const/16 v1, 0x3e8

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 338
    iget v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->u:I

    .line 339
    iget v2, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->v:I

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 342
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v5, v5

    .line 343
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    float-to-int v6, v6

    .line 345
    if-gez v5, :cond_4

    :goto_2
    iput v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->A:I

    .line 347
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->k:Landroid/view/View;

    iget-object v10, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    if-ne v0, v10, :cond_2

    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->s:Lcom/mgeek/android/ui/bi;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->s:Lcom/mgeek/android/ui/bi;

    invoke-interface/range {v0 .. v6}, Lcom/mgeek/android/ui/bi;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 349
    :cond_2
    invoke-direct {p0, v7}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->d(Z)V

    .line 350
    iput-boolean v7, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->p:Z

    .line 351
    iget-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g:Landroid/view/View;

    if-ne v0, v1, :cond_3

    .line 352
    if-lez v5, :cond_5

    const-string v0, "bookmarkbar"

    .line 353
    :goto_3
    const-string v1, "home"

    const-string v2, "swipe"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_3
    :goto_4
    iget-boolean v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->p:Z

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 363
    add-float/2addr v0, v9

    .line 364
    invoke-direct {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->f()I

    move-result v1

    sget v2, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->c:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 365
    float-to-int v0, v0

    invoke-virtual {p0, v0, v8}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->scrollTo(II)V

    goto/16 :goto_0

    :cond_4
    move v0, v7

    .line 345
    goto :goto_2

    .line 352
    :cond_5
    const-string v0, "addonbar"

    goto :goto_3

    .line 356
    :cond_6
    sget-object v0, Lcom/mgeek/android/ui/ak;->a:Lcom/mgeek/android/ui/ak;

    iput-object v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->x:Lcom/mgeek/android/ui/ak;

    goto :goto_4

    .line 371
    :pswitch_2
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->x:Lcom/mgeek/android/ui/ak;

    sget-object v2, Lcom/mgeek/android/ui/ak;->a:Lcom/mgeek/android/ui/ak;

    if-ne v1, v2, :cond_9

    iget-boolean v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->y:Z

    if-eqz v1, :cond_9

    .line 372
    invoke-virtual {p0, v7}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->b(Z)V

    .line 377
    :cond_7
    :goto_5
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->s:Lcom/mgeek/android/ui/bi;

    if-eqz v1, :cond_8

    .line 378
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->s:Lcom/mgeek/android/ui/bi;

    invoke-interface {v1, p1}, Lcom/mgeek/android/ui/bi;->a(Landroid/view/MotionEvent;)Z

    .line 381
    :cond_8
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->w:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v1}, Lcom/mgeek/android/ui/aj;->c()V

    .line 382
    iput-boolean v8, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->p:Z

    .line 383
    iput-boolean v8, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->y:Z

    .line 384
    iput v0, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->z:I

    .line 385
    iput v8, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->A:I

    goto/16 :goto_1

    .line 373
    :cond_9
    iget-object v1, p0, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->q:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 374
    invoke-direct {p0}, Lcom/mgeek/android/ui/ThreeScreenScrollableView;->g()V

    goto :goto_5

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
