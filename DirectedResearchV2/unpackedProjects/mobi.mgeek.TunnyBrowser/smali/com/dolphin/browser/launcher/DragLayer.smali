.class public Lcom/dolphin/browser/launcher/DragLayer;
.super Landroid/widget/RelativeLayout;
.source "DragLayer.java"


# instance fields
.field private a:Lcom/g/a/an;

.field protected b:Lcom/dolphin/browser/launcher/v;

.field c:[I

.field d:Landroid/graphics/Rect;

.field private e:Lcom/g/a/an;

.field private f:Landroid/view/animation/Interpolator;

.field private g:Lcom/dolphin/browser/launcher/ag;

.field private h:I

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->c:[I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->d:Landroid/graphics/Rect;

    .line 46
    iput-object v2, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    .line 47
    iput-object v2, p0, Lcom/dolphin/browser/launcher/DragLayer;->e:Lcom/g/a/an;

    .line 48
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->f:Landroid/view/animation/Interpolator;

    .line 49
    iput-object v2, p0, Lcom/dolphin/browser/launcher/DragLayer;->g:Lcom/dolphin/browser/launcher/ag;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->h:I

    .line 51
    iput-object v2, p0, Lcom/dolphin/browser/launcher/DragLayer;->i:Landroid/view/View;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->c:[I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->d:Landroid/graphics/Rect;

    .line 46
    iput-object v2, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    .line 47
    iput-object v2, p0, Lcom/dolphin/browser/launcher/DragLayer;->e:Lcom/g/a/an;

    .line 48
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->f:Landroid/view/animation/Interpolator;

    .line 49
    iput-object v2, p0, Lcom/dolphin/browser/launcher/DragLayer;->g:Lcom/dolphin/browser/launcher/ag;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->h:I

    .line 51
    iput-object v2, p0, Lcom/dolphin/browser/launcher/DragLayer;->i:Landroid/view/View;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/DragLayer;)Lcom/dolphin/browser/launcher/ag;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->g:Lcom/dolphin/browser/launcher/ag;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/DragLayer;Lcom/dolphin/browser/launcher/ag;)Lcom/dolphin/browser/launcher/ag;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dolphin/browser/launcher/DragLayer;->g:Lcom/dolphin/browser/launcher/ag;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 465
    new-instance v0, Lcom/g/a/an;

    invoke-direct {v0}, Lcom/g/a/an;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->e:Lcom/g/a/an;

    .line 466
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->e:Lcom/g/a/an;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/g/a/an;->c(J)Lcom/g/a/an;

    .line 467
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->e:Lcom/g/a/an;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/g/a/an;->a([F)V

    .line 468
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->e:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->l()V

    .line 469
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->e:Lcom/g/a/an;

    new-instance v1, Lcom/dolphin/browser/launcher/ab;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/launcher/ab;-><init>(Lcom/dolphin/browser/launcher/DragLayer;)V

    invoke-virtual {v0, v1}, Lcom/g/a/an;->a(Lcom/g/a/au;)V

    .line 477
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->e:Lcom/g/a/an;

    new-instance v1, Lcom/dolphin/browser/launcher/ac;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/launcher/ac;-><init>(Lcom/dolphin/browser/launcher/DragLayer;)V

    invoke-virtual {v0, v1}, Lcom/g/a/an;->a(Lcom/g/a/b;)V

    .line 486
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->e:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->a()V

    .line 487
    return-void

    .line 467
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/DragLayer;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/launcher/DragLayer;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->h:I

    return v0
.end method

.method static synthetic d(Lcom/dolphin/browser/launcher/DragLayer;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/DragLayer;->a()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->c:[I

    aput v3, v0, v3

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->c:[I

    aput v3, v0, v4

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->c:[I

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/launcher/DragLayer;->b(Landroid/view/View;[I)V

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->c:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/dolphin/browser/launcher/DragLayer;->c:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/dolphin/browser/launcher/DragLayer;->c:[I

    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/dolphin/browser/launcher/DragLayer;->c:[I

    aget v3, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 133
    return-void
.end method

.method public a(Landroid/view/View;[I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    aput v1, p2, v1

    .line 137
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/launcher/DragLayer;->b(Landroid/view/View;[I)V

    .line 139
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/ag;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 17

    .prologue
    .line 311
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/dolphin/browser/launcher/ag;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/dolphin/browser/launcher/ag;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 313
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/dolphin/browser/launcher/ag;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual/range {p1 .. p1}, Lcom/dolphin/browser/launcher/ag;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 314
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p13

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p14

    invoke-virtual/range {v2 .. v16}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/ag;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 316
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/ag;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 16

    .prologue
    .line 343
    move-object/from16 v0, p3

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v2, v1

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 346
    sget v1, Lcom/dolphin/browser/launcher/R$integer;->config_dropAnimMaxDist:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v4, v1

    .line 349
    if-gez p9, :cond_1

    .line 350
    sget v1, Lcom/dolphin/browser/launcher/R$integer;->config_dropAnimMaxDuration:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 351
    cmpg-float v5, v2, v4

    if-gez v5, :cond_0

    .line 352
    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/launcher/DragLayer;->f:Landroid/view/animation/Interpolator;

    div-float/2addr v2, v4

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 354
    :cond_0
    sget v2, Lcom/dolphin/browser/launcher/R$integer;->config_dropAnimMinDuration:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p9

    .line 358
    :cond_1
    const/4 v1, 0x0

    .line 359
    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    .line 360
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/launcher/DragLayer;->f:Landroid/view/animation/Interpolator;

    move-object v15, v1

    .line 364
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/g/c/a;->a(Landroid/view/View;)F

    move-result v12

    .line 365
    invoke-static/range {p1 .. p1}, Lcom/g/c/a;->b(Landroid/view/View;)F

    move-result v7

    .line 366
    new-instance v1, Lcom/dolphin/browser/launcher/z;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p11

    move-object/from16 v5, p10

    move/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p4

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v1 .. v14}, Lcom/dolphin/browser/launcher/z;-><init>(Lcom/dolphin/browser/launcher/DragLayer;Lcom/dolphin/browser/launcher/ag;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v1

    move/from16 v5, p9

    move-object v6, v15

    move-object/from16 v7, p12

    move/from16 v8, p13

    move-object/from16 v9, p14

    .line 401
    invoke-virtual/range {v2 .. v9}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/ag;Lcom/g/a/au;ILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 403
    return-void

    :cond_3
    move-object v15, v1

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/launcher/ag;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 18

    .prologue
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/dolphin/browser/launcher/CellLayout;

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 270
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/launcher/CellLayout;->a(Landroid/view/View;)V

    .line 272
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/dolphin/browser/launcher/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 275
    const/4 v3, 0x2

    new-array v5, v3, [I

    .line 276
    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->c()I

    move-result v7

    aput v7, v5, v3

    .line 277
    const/4 v3, 0x1

    invoke-virtual {v4}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->d()I

    move-result v4

    aput v4, v5, v3

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/dolphin/browser/launcher/DragLayer;->b(Landroid/view/View;[I)V

    .line 282
    const/4 v3, 0x0

    aget v3, v5, v3

    .line 283
    const/4 v4, 0x1

    aget v8, v5, v4

    .line 284
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/dolphin/browser/launcher/bh;

    if-eqz v4, :cond_0

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/dolphin/browser/launcher/ag;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v7, v3, v4

    .line 292
    :goto_0
    iget v5, v6, Landroid/graphics/Rect;->left:I

    .line 293
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 294
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    new-instance v14, Lcom/dolphin/browser/launcher/y;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/dolphin/browser/launcher/y;-><init>(Lcom/dolphin/browser/launcher/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 303
    const/high16 v9, 0x3f800000

    const/high16 v10, 0x3f800000

    const/high16 v11, 0x3f800000

    const/high16 v12, 0x3f800000

    const/high16 v13, 0x3f800000

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v16, p3

    move-object/from16 v17, p5

    invoke-virtual/range {v3 .. v17}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/ag;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 305
    return-void

    .line 288
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/dolphin/browser/launcher/ag;->getHeight()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v8, v4

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/dolphin/browser/launcher/ag;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v7, v3, v4

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/launcher/ag;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 263
    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/ag;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 264
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/ag;Lcom/g/a/au;ILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->b()V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->e:Lcom/g/a/an;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->e:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->b()V

    .line 413
    :cond_1
    iput-object p1, p0, Lcom/dolphin/browser/launcher/DragLayer;->g:Lcom/dolphin/browser/launcher/ag;

    .line 414
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->g:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ag;->c()V

    .line 415
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->g:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ag;->d()V

    .line 418
    if-eqz p7, :cond_2

    .line 419
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->h:I

    .line 421
    :cond_2
    iput-object p7, p0, Lcom/dolphin/browser/launcher/DragLayer;->i:Landroid/view/View;

    .line 424
    new-instance v0, Lcom/g/a/an;

    invoke-direct {v0}, Lcom/g/a/an;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    .line 425
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    invoke-virtual {v0, p4}, Lcom/g/a/an;->a(Landroid/view/animation/Interpolator;)V

    .line 426
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/g/a/an;->c(J)Lcom/g/a/an;

    .line 427
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/g/a/an;->a([F)V

    .line 428
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    invoke-virtual {v0, p2}, Lcom/g/a/an;->a(Lcom/g/a/au;)V

    .line 429
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    new-instance v1, Lcom/dolphin/browser/launcher/aa;

    invoke-direct {v1, p0, p5, p6}, Lcom/dolphin/browser/launcher/aa;-><init>(Lcom/dolphin/browser/launcher/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Lcom/g/a/an;->a(Lcom/g/a/b;)V

    .line 446
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->a()V

    .line 447
    return-void

    .line 427
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method protected a(Landroid/view/MotionEvent;Z)Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 166
    invoke-static {p0, v0}, Lcom/g/c/a;->a(Landroid/view/View;[I)V

    .line 167
    aget v1, v0, v3

    .line 168
    aget v2, v0, v4

    .line 170
    invoke-static {p1, v0}, Lcom/g/c/a;->a(Landroid/view/View;[I)V

    .line 171
    aget v3, v0, v3

    .line 172
    aget v0, v0, v4

    .line 174
    sub-int v1, v3, v1

    .line 175
    sub-int/2addr v0, v2

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    return-void
.end method

.method public b(Landroid/view/View;[I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 150
    const/4 v0, 0x2

    new-array v1, v0, [F

    aget v0, p2, v5

    int-to-float v0, v0

    aput v0, v1, v5

    aget v0, p2, v6

    int-to-float v0, v0

    aput v0, v1, v6

    .line 151
    aget v0, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    aput v0, v1, v5

    .line 152
    aget v0, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    aput v0, v1, v6

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 154
    :goto_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    if-eq v0, p0, :cond_0

    .line 155
    check-cast v0, Landroid/view/View;

    .line 156
    aget v2, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v5

    .line 157
    aget v2, v1, v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v6

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_0
    aget v0, v1, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v5

    .line 161
    aget v0, v1, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v6

    .line 162
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->b:Lcom/dolphin/browser/launcher/v;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/v;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->b:Lcom/dolphin/browser/launcher/v;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/launcher/v;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->a:Lcom/g/a/an;

    invoke-virtual {v0}, Lcom/g/a/an;->b()V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->g:Lcom/dolphin/browser/launcher/ag;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->b:Lcom/dolphin/browser/launcher/v;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/DragLayer;->g:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/v;->a(Lcom/dolphin/browser/launcher/ag;)V

    .line 456
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->g:Lcom/dolphin/browser/launcher/ag;

    .line 457
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/DragLayer;->invalidate()V

    .line 458
    return-void
.end method

.method i()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 78
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/launcher/DragLayer;->a(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->b:Lcom/dolphin/browser/launcher/v;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/v;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    .line 231
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 232
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/DragLayer;->getChildCount()I

    move-result v2

    .line 233
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 234
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/launcher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 236
    instance-of v4, v0, Lcom/dolphin/browser/launcher/ad;

    if-eqz v4, :cond_0

    .line 237
    check-cast v0, Lcom/dolphin/browser/launcher/ad;

    .line 238
    iget-boolean v4, v0, Lcom/dolphin/browser/launcher/ad;->c:Z

    if-eqz v4, :cond_0

    .line 239
    iget v4, v0, Lcom/dolphin/browser/launcher/ad;->a:I

    iget v5, v0, Lcom/dolphin/browser/launcher/ad;->b:I

    iget v6, v0, Lcom/dolphin/browser/launcher/ad;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/dolphin/browser/launcher/ad;->a:I

    iget v7, v0, Lcom/dolphin/browser/launcher/ad;->width:I

    add-int/2addr v6, v7

    iget v7, v0, Lcom/dolphin/browser/launcher/ad;->b:I

    iget v8, v0, Lcom/dolphin/browser/launcher/ad;->height:I

    add-int/2addr v7, v8

    iget v0, v0, Lcom/dolphin/browser/launcher/ad;->topMargin:I

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 233
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 243
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 110
    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/dolphin/browser/launcher/DragLayer;->a(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->b:Lcom/dolphin/browser/launcher/v;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/v;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 497
    invoke-static {p1}, Lcom/g/c/a;->g(Landroid/view/View;)V

    .line 498
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 499
    instance-of v0, p1, Lcom/dolphin/browser/launcher/ai;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/dolphin/browser/launcher/DragLayer;->b:Lcom/dolphin/browser/launcher/v;

    check-cast p1, Lcom/dolphin/browser/launcher/ai;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/v;->b(Lcom/dolphin/browser/launcher/ai;)V

    .line 502
    :cond_0
    return-void
.end method
