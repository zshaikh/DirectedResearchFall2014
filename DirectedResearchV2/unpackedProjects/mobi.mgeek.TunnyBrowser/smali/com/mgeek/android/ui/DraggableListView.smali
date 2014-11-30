.class public Lcom/mgeek/android/ui/DraggableListView;
.super Landroid/view/CustomMenuListView;
.source "DraggableListView.java"


# instance fields
.field private A:Landroid/view/animation/Transformation;

.field private B:Z

.field private C:Z

.field private D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/mgeek/android/ui/DraggableListView$ChildHeights;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/mgeek/android/ui/p;

.field private i:Lcom/mgeek/android/ui/q;

.field private j:Lcom/mgeek/android/ui/r;

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/mgeek/android/ui/s;

.field private o:Landroid/graphics/Rect;

.field private p:Landroid/graphics/Bitmap;

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/content/Context;

.field private u:I

.field private v:Z

.field private w:Lcom/dolphin/browser/ui/u;

.field private x:Landroid/view/GestureDetector;

.field private y:Lcom/mgeek/android/ui/t;

.field private z:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/view/CustomMenuListView;-><init>(Landroid/content/Context;)V

    .line 75
    sget-object v0, Lcom/mgeek/android/ui/s;->a:Lcom/mgeek/android/ui/s;

    iput-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->n:Lcom/mgeek/android/ui/s;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->o:Landroid/graphics/Rect;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/ui/DraggableListView;->v:Z

    .line 91
    iput-boolean v1, p0, Lcom/mgeek/android/ui/DraggableListView;->B:Z

    .line 92
    iput-boolean v1, p0, Lcom/mgeek/android/ui/DraggableListView;->C:Z

    .line 101
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/DraggableListView;->a(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/CustomMenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    sget-object v0, Lcom/mgeek/android/ui/s;->a:Lcom/mgeek/android/ui/s;

    iput-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->n:Lcom/mgeek/android/ui/s;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->o:Landroid/graphics/Rect;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/ui/DraggableListView;->v:Z

    .line 91
    iput-boolean v1, p0, Lcom/mgeek/android/ui/DraggableListView;->B:Z

    .line 92
    iput-boolean v1, p0, Lcom/mgeek/android/ui/DraggableListView;->C:Z

    .line 96
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/DraggableListView;->a(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 453
    invoke-direct {p0, p1, v0, v0}, Lcom/mgeek/android/ui/DraggableListView;->a(Landroid/view/View;ZZ)I

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;ZZ)I
    .locals 5

    .prologue
    .line 457
    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->D:Ljava/util/HashMap;

    .line 458
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;

    .line 460
    if-eqz p2, :cond_0

    .line 461
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_0
    invoke-virtual {v0, p3}, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;->a(Z)I

    move-result v0

    .line 475
    :goto_0
    return v0

    .line 465
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 467
    new-instance v3, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;-><init>(Lcom/mgeek/android/ui/m;)V

    .line 468
    if-nez v0, :cond_2

    .line 469
    iput v2, v3, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;->x:I

    .line 473
    :goto_1
    iput v2, v3, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;->y:I

    .line 474
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-virtual {v3, p3}, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;->a(Z)I

    move-result v0

    goto :goto_0

    .line 471
    :cond_2
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    iput v0, v3, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;->x:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/mgeek/android/ui/DraggableListView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/mgeek/android/ui/DraggableListView;Lcom/mgeek/android/ui/t;)Lcom/mgeek/android/ui/t;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mgeek/android/ui/DraggableListView;->y:Lcom/mgeek/android/ui/t;

    return-object p1
.end method

.method private a()V
    .locals 7

    .prologue
    .line 432
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->D:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->D:Ljava/util/HashMap;

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/mgeek/android/ui/DraggableListView;->D:Ljava/util/HashMap;

    .line 436
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getChildCount()I

    move-result v3

    .line 437
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 438
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 439
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 440
    new-instance v5, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;-><init>(Lcom/mgeek/android/ui/m;)V

    .line 441
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 442
    if-nez v0, :cond_1

    .line 443
    iput v6, v5, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;->x:I

    .line 447
    :goto_1
    iput v6, v5, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;->y:I

    .line 448
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 445
    :cond_1
    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    iput v0, v5, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;->x:I

    goto :goto_1

    .line 450
    :cond_2
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-boolean v0, p0, Lcom/mgeek/android/ui/DraggableListView;->C:Z

    if-eqz v0, :cond_1

    .line 248
    iput-boolean v3, p0, Lcom/mgeek/android/ui/DraggableListView;->C:Z

    .line 249
    iput-boolean v3, p0, Lcom/mgeek/android/ui/DraggableListView;->B:Z

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/mgeek/android/ui/DraggableListView;->a()V

    .line 264
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 265
    invoke-direct {p0, v1, p1}, Lcom/mgeek/android/ui/DraggableListView;->a(Landroid/graphics/Bitmap;I)V

    .line 266
    iput p2, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    .line 267
    iget v1, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    iput v1, p0, Lcom/mgeek/android/ui/DraggableListView;->e:I

    .line 268
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/mgeek/android/ui/DraggableListView;->m:I

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/DraggableListView;->r:I

    .line 270
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->r:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mgeek/android/ui/DraggableListView;->s:I

    .line 271
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->q:I

    .line 272
    sub-int v1, p1, v0

    iget v2, p0, Lcom/mgeek/android/ui/DraggableListView;->m:I

    div-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/mgeek/android/ui/DraggableListView;->k:I

    .line 273
    add-int/2addr v0, p1

    iget v1, p0, Lcom/mgeek/android/ui/DraggableListView;->m:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/DraggableListView;->l:I

    .line 276
    :cond_2
    iput-boolean v3, p0, Lcom/mgeek/android/ui/DraggableListView;->B:Z

    .line 281
    iget-boolean v0, p0, Lcom/mgeek/android/ui/DraggableListView;->C:Z

    if-eqz v0, :cond_0

    .line 282
    iput-boolean v3, p0, Lcom/mgeek/android/ui/DraggableListView;->C:Z

    .line 283
    invoke-direct {p0}, Lcom/mgeek/android/ui/DraggableListView;->b()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iput-object p1, p0, Lcom/mgeek/android/ui/DraggableListView;->t:Landroid/content/Context;

    .line 114
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/DraggableListView;->q:I

    .line 115
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/DraggableListView;->setCacheColorHint(I)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/DraggableListView;->setBackgroundColor(I)V

    .line 117
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/DraggableListView;->setScrollContainer(Z)V

    .line 118
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 628
    invoke-direct {p0}, Lcom/mgeek/android/ui/DraggableListView;->b()V

    .line 629
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 630
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    .line 631
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 632
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 633
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/mgeek/android/ui/DraggableListView;->f:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/mgeek/android/ui/DraggableListView;->g:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 635
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 636
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 637
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x198

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 641
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 642
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 644
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->t:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 645
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c1

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 646
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 647
    iput-object p1, p0, Lcom/mgeek/android/ui/DraggableListView;->p:Landroid/graphics/Bitmap;

    .line 648
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->b:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->t:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->b:Landroid/view/WindowManager;

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/mgeek/android/ui/DraggableListView;->b:Landroid/view/WindowManager;

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    .line 652
    iput-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->a:Landroid/widget/ImageView;

    .line 653
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/DraggableListView;II)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/DraggableListView;->a(II)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 330
    move v0, v2

    .line 331
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 332
    if-nez v1, :cond_3

    .line 333
    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getFirstVisiblePosition()I

    move-result v1

    .line 336
    invoke-virtual {p0, v2}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 337
    if-nez v3, :cond_1

    .line 361
    :cond_0
    iget-object v3, p0, Lcom/mgeek/android/ui/DraggableListView;->D:Ljava/util/HashMap;

    .line 362
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 363
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 365
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 366
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 367
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;

    iget v0, v0, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;->x:I

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 368
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 341
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 342
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mgeek/android/ui/DraggableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 343
    invoke-virtual {p0, v1, v3}, Lcom/mgeek/android/ui/DraggableListView;->setSelectionFromTop(II)V

    .line 346
    :cond_2
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->layoutChildren()V

    .line 347
    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 348
    if-eqz v1, :cond_0

    .line 352
    :cond_3
    iget-object v3, p0, Lcom/mgeek/android/ui/DraggableListView;->w:Lcom/dolphin/browser/ui/u;

    if-eqz v3, :cond_4

    .line 353
    iget-object v3, p0, Lcom/mgeek/android/ui/DraggableListView;->w:Lcom/dolphin/browser/ui/u;

    invoke-interface {v3, v1}, Lcom/dolphin/browser/ui/u;->a(Landroid/view/View;)V

    .line 359
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 356
    invoke-direct {p0, v1, v5, v5}, Lcom/mgeek/android/ui/DraggableListView;->a(Landroid/view/View;ZZ)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 357
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 371
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 373
    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/DraggableListView;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mgeek/android/ui/DraggableListView;->C:Z

    return p1
.end method

.method private b(II)I
    .locals 3

    .prologue
    .line 292
    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->o:Landroid/graphics/Rect;

    .line 293
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getChildCount()I

    move-result v0

    .line 294
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 295
    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 296
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 297
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :goto_1
    return v0

    .line 294
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 301
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/mgeek/android/ui/DraggableListView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->o:Landroid/graphics/Rect;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 673
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->t:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 675
    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->a:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 676
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 677
    iput-object v2, p0, Lcom/mgeek/android/ui/DraggableListView;->a:Landroid/widget/ImageView;

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 681
    iput-object v2, p0, Lcom/mgeek/android/ui/DraggableListView;->p:Landroid/graphics/Bitmap;

    .line 683
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/mgeek/android/ui/DraggableListView;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/DraggableListView;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 9

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 388
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 389
    iget v1, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    iget v3, p0, Lcom/mgeek/android/ui/DraggableListView;->e:I

    if-le v1, v3, :cond_0

    .line 390
    add-int/lit8 v0, v0, 0x1

    .line 393
    :cond_0
    iget v1, p0, Lcom/mgeek/android/ui/DraggableListView;->e:I

    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move v1, v2

    .line 396
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 397
    if-nez v7, :cond_1

    .line 425
    return-void

    .line 401
    :cond_1
    invoke-direct {p0, v7}, Lcom/mgeek/android/ui/DraggableListView;->a(Landroid/view/View;)I

    move-result v3

    .line 403
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 405
    iget v5, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    iget v8, p0, Lcom/mgeek/android/ui/DraggableListView;->e:I

    if-ne v5, v8, :cond_2

    move v5, v3

    move v3, v4

    .line 420
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 421
    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 422
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_2
    const/4 v3, 0x1

    move v5, v3

    move v3, v4

    .line 412
    goto :goto_1

    .line 414
    :cond_3
    if-ne v1, v0, :cond_5

    .line 415
    iget v5, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_5

    .line 417
    if-eqz p1, :cond_4

    iget v5, p0, Lcom/mgeek/android/ui/DraggableListView;->r:I

    add-int/2addr v3, v5

    :cond_4
    move v5, v3

    move v3, v2

    goto :goto_1

    :cond_5
    move v5, v3

    move v3, v2

    goto :goto_1
.end method

.method private b(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 157
    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->w:Lcom/dolphin/browser/ui/u;

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->w:Lcom/dolphin/browser/ui/u;

    invoke-interface {v1}, Lcom/dolphin/browser/ui/u;->c()Landroid/graphics/Point;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-ge p1, v2, :cond_2

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ge p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 305
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->f:I

    sub-int v0, p1, v0

    iget v2, p0, Lcom/mgeek/android/ui/DraggableListView;->r:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    .line 306
    invoke-direct {p0, v1, v2}, Lcom/mgeek/android/ui/DraggableListView;->b(II)I

    move-result v0

    .line 307
    if-ltz v0, :cond_1

    .line 308
    iget v1, p0, Lcom/mgeek/android/ui/DraggableListView;->e:I

    if-gt v0, v1, :cond_0

    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    if-gez v2, :cond_0

    move v0, v1

    .line 312
    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 802
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->z:Landroid/view/animation/Animation;

    .line 803
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->z:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 804
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->z:Landroid/view/animation/Animation;

    new-instance v1, Lcom/mgeek/android/ui/o;

    invoke-direct {v1, p0}, Lcom/mgeek/android/ui/o;-><init>(Lcom/mgeek/android/ui/DraggableListView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 819
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->A:Landroid/view/animation/Transformation;

    .line 820
    return-void
.end method

.method private c(II)V
    .locals 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->n:Lcom/mgeek/android/ui/s;

    sget-object v1, Lcom/mgeek/android/ui/s;->b:Lcom/mgeek/android/ui/s;

    if-ne v0, v1, :cond_1

    .line 661
    const/high16 v0, 0x3f800000

    .line 662
    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 663
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 664
    sub-int v0, v1, p1

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/mgeek/android/ui/DraggableListView;->f:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/mgeek/android/ui/DraggableListView;->g:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 669
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mgeek/android/ui/DraggableListView;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    return-void
.end method

.method static synthetic c(Lcom/mgeek/android/ui/DraggableListView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mgeek/android/ui/DraggableListView;->B:Z

    return v0
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->m:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 319
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->m:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/mgeek/android/ui/DraggableListView;->k:I

    .line 321
    :cond_0
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->m:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 322
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->m:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/mgeek/android/ui/DraggableListView;->l:I

    .line 324
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/mgeek/android/ui/DraggableListView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mgeek/android/ui/DraggableListView;->b()V

    return-void
.end method

.method private e(I)I
    .locals 3

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 866
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getChildCount()I

    move-result v1

    .line 867
    if-lt p1, v0, :cond_0

    add-int v2, v0, v1

    if-ge p1, v2, :cond_0

    .line 868
    sub-int v0, p1, v0

    .line 872
    :goto_0
    return v0

    .line 869
    :cond_0
    add-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    .line 870
    sub-int v0, p1, v0

    goto :goto_0

    .line 872
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/mgeek/android/ui/DraggableListView;)Lcom/mgeek/android/ui/r;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->j:Lcom/mgeek/android/ui/r;

    return-object v0
.end method

.method static synthetic f(Lcom/mgeek/android/ui/DraggableListView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->e:I

    return v0
.end method

.method static synthetic g(Lcom/mgeek/android/ui/DraggableListView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->t:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 728
    iput p1, p0, Lcom/mgeek/android/ui/DraggableListView;->u:I

    .line 729
    return-void
.end method

.method public a(Landroid/view/WindowManager;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/mgeek/android/ui/DraggableListView;->b:Landroid/view/WindowManager;

    .line 657
    return-void
.end method

.method public a(Lcom/mgeek/android/ui/p;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/mgeek/android/ui/DraggableListView;->h:Lcom/mgeek/android/ui/p;

    .line 687
    return-void
.end method

.method public a(Lcom/mgeek/android/ui/q;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/mgeek/android/ui/DraggableListView;->i:Lcom/mgeek/android/ui/q;

    .line 691
    return-void
.end method

.method public a(Lcom/mgeek/android/ui/s;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/mgeek/android/ui/DraggableListView;->n:Lcom/mgeek/android/ui/s;

    .line 711
    return-void
.end method

.method a(IIILandroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->w:Lcom/dolphin/browser/ui/u;

    if-nez v0, :cond_1

    move v1, v2

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getFirstVisiblePosition()I

    move-result v0

    if-ne p3, v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v0, p3

    .line 229
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 232
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8000000000000L

    mul-double/2addr v3, v5

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    .line 235
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/mgeek/android/ui/DraggableListView;->pointToPosition(II)I

    move-result v0

    .line 236
    if-ne v0, p3, :cond_0

    :cond_2
    move v1, v2

    .line 240
    goto :goto_0

    .line 228
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 779
    const/4 v1, 0x0

    .line 780
    iget-object v2, p0, Lcom/mgeek/android/ui/DraggableListView;->y:Lcom/mgeek/android/ui/t;

    if-eqz v2, :cond_2

    .line 782
    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->y:Lcom/mgeek/android/ui/t;

    iget-boolean v1, v1, Lcom/mgeek/android/ui/t;->d:Z

    if-nez v1, :cond_0

    .line 783
    invoke-direct {p0}, Lcom/mgeek/android/ui/DraggableListView;->c()V

    .line 784
    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->z:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 785
    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->y:Lcom/mgeek/android/ui/t;

    iput-boolean v0, v1, Lcom/mgeek/android/ui/t;->d:Z

    .line 788
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/CustomMenuListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 789
    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->invalidate()V

    .line 792
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 824
    .line 825
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->y:Lcom/mgeek/android/ui/t;

    if-eqz v0, :cond_4

    .line 826
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 827
    const/4 v0, 0x1

    .line 861
    :goto_0
    return v0

    .line 829
    :cond_0
    iget-object v1, p0, Lcom/mgeek/android/ui/DraggableListView;->y:Lcom/mgeek/android/ui/t;

    .line 830
    invoke-virtual {p0, p2}, Lcom/mgeek/android/ui/DraggableListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 831
    iget-object v2, p0, Lcom/mgeek/android/ui/DraggableListView;->z:Landroid/view/animation/Animation;

    if-nez v2, :cond_1

    .line 832
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/CustomMenuListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0

    .line 834
    :cond_1
    iget-object v2, p0, Lcom/mgeek/android/ui/DraggableListView;->z:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/mgeek/android/ui/DraggableListView;->A:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p3, p4, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 835
    iget-object v2, p0, Lcom/mgeek/android/ui/DraggableListView;->A:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    .line 836
    iget v3, v1, Lcom/mgeek/android/ui/t;->a:I

    if-lt v0, v3, :cond_2

    .line 837
    iget v0, v1, Lcom/mgeek/android/ui/t;->b:I

    iget v1, v1, Lcom/mgeek/android/ui/t;->a:I

    invoke-direct {p0, v1}, Lcom/mgeek/android/ui/DraggableListView;->e(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 840
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 841
    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 842
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/CustomMenuListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 843
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 845
    :cond_2
    iget v0, v1, Lcom/mgeek/android/ui/t;->a:I

    invoke-direct {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->e(I)I

    move-result v0

    .line 847
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getChildCount()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 848
    iget v0, v1, Lcom/mgeek/android/ui/t;->c:I

    .line 852
    :goto_1
    iget v1, v1, Lcom/mgeek/android/ui/t;->c:I

    sub-int v0, v1, v0

    .line 853
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 854
    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 855
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/CustomMenuListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 856
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 850
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_1

    .line 859
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/CustomMenuListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 124
    invoke-super {p0}, Landroid/view/CustomMenuListView;->onAttachedToWindow()V

    .line 125
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->x:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/mgeek/android/ui/m;

    invoke-direct {v2, p0}, Lcom/mgeek/android/ui/m;-><init>(Lcom/mgeek/android/ui/DraggableListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->x:Landroid/view/GestureDetector;

    .line 154
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-boolean v0, p0, Lcom/mgeek/android/ui/DraggableListView;->v:Z

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->h:Lcom/mgeek/android/ui/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->i:Lcom/mgeek/android/ui/q;

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/CustomMenuListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 169
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 171
    invoke-virtual {p0, v2, v3}, Lcom/mgeek/android/ui/DraggableListView;->pointToPosition(II)I

    move-result v4

    .line 172
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getHeaderViewsCount()I

    move-result v0

    if-lt v4, v0, :cond_1

    .line 175
    invoke-direct {p0, v4}, Lcom/mgeek/android/ui/DraggableListView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/mgeek/android/ui/DraggableListView;->a(IIILandroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 183
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    sub-int v5, v3, v5

    iput v5, p0, Lcom/mgeek/android/ui/DraggableListView;->f:I

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/mgeek/android/ui/DraggableListView;->g:I

    .line 185
    iget v5, p0, Lcom/mgeek/android/ui/DraggableListView;->u:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 187
    iget-object v5, p0, Lcom/mgeek/android/ui/DraggableListView;->o:Landroid/graphics/Rect;

    .line 188
    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 189
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 192
    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    if-ge v2, v6, :cond_3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v0, v5, v0

    if-le v2, v0, :cond_3

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/ui/DraggableListView;->B:Z

    .line 195
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->w:Lcom/dolphin/browser/ui/u;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->w:Lcom/dolphin/browser/ui/u;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/u;->d()V

    .line 199
    new-instance v0, Lcom/mgeek/android/ui/n;

    invoke-direct {v0, p0, v3, v4}, Lcom/mgeek/android/ui/n;-><init>(Lcom/mgeek/android/ui/DraggableListView;II)V

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 205
    goto :goto_1

    .line 207
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/mgeek/android/ui/DraggableListView;->a(II)V

    move v0, v1

    .line 208
    goto :goto_1

    .line 212
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->a:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 518
    iget-boolean v0, p0, Lcom/mgeek/android/ui/DraggableListView;->v:Z

    if-eqz v0, :cond_f

    .line 519
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->x:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 520
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->h:Lcom/mgeek/android/ui/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->i:Lcom/mgeek/android/ui/q;

    if-eqz v0, :cond_e

    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 522
    packed-switch v2, :pswitch_data_0

    .line 624
    :cond_1
    :goto_0
    return v1

    .line 525
    :pswitch_0
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->o:Landroid/graphics/Rect;

    .line 526
    iget-object v2, p0, Lcom/mgeek/android/ui/DraggableListView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 527
    iget-boolean v2, p0, Lcom/mgeek/android/ui/DraggableListView;->B:Z

    if-eqz v2, :cond_3

    .line 528
    iput-boolean v1, p0, Lcom/mgeek/android/ui/DraggableListView;->C:Z

    .line 532
    :goto_1
    iget-object v2, p0, Lcom/mgeek/android/ui/DraggableListView;->n:Lcom/mgeek/android/ui/s;

    sget-object v4, Lcom/mgeek/android/ui/s;->b:Lcom/mgeek/android/ui/s;

    if-ne v2, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    const/high16 v4, 0x40800000

    div-float/2addr v0, v4

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 533
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->j:Lcom/mgeek/android/ui/r;

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->j:Lcom/mgeek/android/ui/r;

    iget v2, p0, Lcom/mgeek/android/ui/DraggableListView;->e:I

    invoke-interface {v0, v2}, Lcom/mgeek/android/ui/r;->a(I)V

    .line 536
    :cond_2
    invoke-direct {p0, v1}, Lcom/mgeek/android/ui/DraggableListView;->a(Z)V

    goto :goto_0

    .line 530
    :cond_3
    invoke-direct {p0}, Lcom/mgeek/android/ui/DraggableListView;->b()V

    goto :goto_1

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->i:Lcom/mgeek/android/ui/q;

    if-eqz v0, :cond_5

    .line 539
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->i:Lcom/mgeek/android/ui/q;

    iget v2, p0, Lcom/mgeek/android/ui/DraggableListView;->e:I

    iget v4, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    invoke-interface {v0, v2, v4}, Lcom/mgeek/android/ui/q;->b(II)V

    .line 541
    :cond_5
    invoke-direct {p0, v3}, Lcom/mgeek/android/ui/DraggableListView;->a(Z)V

    goto :goto_0

    .line 547
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 550
    invoke-direct {p0, v0, v4}, Lcom/mgeek/android/ui/DraggableListView;->c(II)V

    .line 551
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->h:Lcom/mgeek/android/ui/p;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->h:Lcom/mgeek/android/ui/p;

    invoke-interface {v0}, Lcom/mgeek/android/ui/p;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 552
    :goto_2
    if-eqz v0, :cond_7

    if-gez v4, :cond_7

    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_7

    .line 554
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->h:Lcom/mgeek/android/ui/p;

    if-eqz v0, :cond_12

    .line 555
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->h:Lcom/mgeek/android/ui/p;

    iget v2, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    invoke-interface {v0, v2, v6}, Lcom/mgeek/android/ui/p;->a(II)Z

    move-result v0

    .line 559
    :goto_3
    iput v6, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    .line 560
    invoke-direct {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->b(Z)V

    goto :goto_0

    :cond_6
    move v0, v3

    .line 551
    goto :goto_2

    .line 563
    :cond_7
    invoke-direct {p0, v4}, Lcom/mgeek/android/ui/DraggableListView;->c(I)I

    move-result v5

    .line 564
    if-ltz v5, :cond_1

    .line 566
    if-eqz v2, :cond_8

    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    if-eq v5, v0, :cond_9

    .line 567
    :cond_8
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->h:Lcom/mgeek/android/ui/p;

    if-eqz v0, :cond_11

    .line 568
    iget-object v0, p0, Lcom/mgeek/android/ui/DraggableListView;->h:Lcom/mgeek/android/ui/p;

    iget v2, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    invoke-interface {v0, v2, v5}, Lcom/mgeek/android/ui/p;->a(II)Z

    move-result v0

    .line 573
    :goto_4
    iput v5, p0, Lcom/mgeek/android/ui/DraggableListView;->d:I

    .line 574
    invoke-direct {p0, v0}, Lcom/mgeek/android/ui/DraggableListView;->b(Z)V

    .line 575
    if-eqz v0, :cond_1

    .line 580
    :cond_9
    invoke-direct {p0, v4}, Lcom/mgeek/android/ui/DraggableListView;->d(I)V

    .line 581
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->l:I

    if-le v4, v0, :cond_c

    .line 583
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->m:I

    iget v2, p0, Lcom/mgeek/android/ui/DraggableListView;->l:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    if-le v4, v0, :cond_b

    const/16 v0, 0x10

    :goto_5
    move v2, v0

    .line 588
    :goto_6
    if-eqz v2, :cond_1

    .line 589
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->m:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/mgeek/android/ui/DraggableListView;->pointToPosition(II)I

    move-result v0

    .line 590
    if-ne v0, v6, :cond_a

    .line 592
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->m:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getDividerHeight()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/mgeek/android/ui/DraggableListView;->r:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v3, v0}, Lcom/mgeek/android/ui/DraggableListView;->pointToPosition(II)I

    move-result v0

    .line 594
    :cond_a
    invoke-virtual {p0}, Lcom/mgeek/android/ui/DraggableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/mgeek/android/ui/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 595
    if-eqz v3, :cond_1

    .line 596
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 597
    sub-int v2, v3, v2

    invoke-virtual {p0, v0, v2}, Lcom/mgeek/android/ui/DraggableListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 583
    :cond_b
    const/4 v0, 0x4

    goto :goto_5

    .line 584
    :cond_c
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->k:I

    if-ge v4, v0, :cond_10

    .line 586
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView;->k:I

    div-int/lit8 v0, v0, 0x2

    if-ge v4, v0, :cond_d

    const/16 v0, -0x10

    :goto_7
    move v2, v0

    goto :goto_6

    :cond_d
    const/4 v0, -0x4

    goto :goto_7

    .line 607
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 624
    :cond_f
    :goto_8
    :pswitch_2
    invoke-super {p0, p1}, Landroid/view/CustomMenuListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 614
    :pswitch_3
    iget-boolean v0, p0, Lcom/mgeek/android/ui/DraggableListView;->B:Z

    if-eqz v0, :cond_f

    .line 615
    iput-boolean v1, p0, Lcom/mgeek/android/ui/DraggableListView;->C:Z

    goto :goto_8

    :cond_10
    move v2, v3

    goto :goto_6

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_12
    move v0, v1

    goto/16 :goto_3

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 607
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/DraggableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/view/CustomMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    instance-of v0, p1, Lcom/dolphin/browser/ui/u;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lcom/dolphin/browser/ui/u;

    iput-object p1, p0, Lcom/mgeek/android/ui/DraggableListView;->w:Lcom/dolphin/browser/ui/u;

    .line 110
    :cond_0
    return-void
.end method
