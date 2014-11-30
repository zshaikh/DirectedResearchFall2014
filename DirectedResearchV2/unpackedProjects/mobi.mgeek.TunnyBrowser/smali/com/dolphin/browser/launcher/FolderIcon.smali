.class public Lcom/dolphin/browser/launcher/FolderIcon;
.super Landroid/widget/RelativeLayout;
.source "FolderIcon.java"

# interfaces
.implements Lcom/dolphin/browser/launcher/bg;
.implements Lcom/dolphin/browser/launcher/bh;
.implements Lcom/dolphin/browser/launcher/cm;


# instance fields
.field protected a:Lcom/dolphin/browser/launcher/bk;

.field protected b:Lcom/dolphin/browser/launcher/Folder;

.field protected c:Lcom/dolphin/browser/launcher/be;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field f:Lcom/dolphin/browser/launcher/az;

.field protected final g:Landroid/graphics/Paint;

.field h:Landroid/graphics/Rect;

.field i:Z

.field j:Landroid/graphics/Bitmap;

.field k:Landroid/graphics/Rect;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/dolphin/browser/launcher/cl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->f:Lcom/dolphin/browser/launcher/az;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->g:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->h:Landroid/graphics/Rect;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->i:Z

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->k:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->p:Ljava/util/HashSet;

    .line 85
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->d()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->f:Lcom/dolphin/browser/launcher/az;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->g:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->h:Landroid/graphics/Rect;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->i:Z

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->k:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->p:Ljava/util/HashSet;

    .line 80
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->d()V

    .line 81
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;IILcom/dolphin/browser/launcher/be;Lcom/dolphin/browser/launcher/bk;)Lcom/dolphin/browser/launcher/FolderIcon;
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/FolderIcon;

    .line 101
    invoke-static {}, Lcom/dolphin/browser/launcher/cn;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Lcom/dolphin/browser/launcher/av;

    invoke-direct {v1, p0, p2, v0}, Lcom/dolphin/browser/launcher/av;-><init>(Landroid/view/LayoutInflater;ILcom/dolphin/browser/launcher/FolderIcon;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/Folder;

    .line 120
    :goto_0
    iput-object v1, v0, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    .line 121
    iput-object p4, v0, Lcom/dolphin/browser/launcher/FolderIcon;->a:Lcom/dolphin/browser/launcher/bk;

    .line 122
    new-instance v2, Lcom/dolphin/browser/launcher/az;

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/dolphin/browser/launcher/az;-><init>(Landroid/content/Context;Lcom/dolphin/browser/launcher/FolderIcon;)V

    iput-object v2, v0, Lcom/dolphin/browser/launcher/FolderIcon;->f:Lcom/dolphin/browser/launcher/az;

    .line 123
    invoke-virtual {v1, p4}, Lcom/dolphin/browser/launcher/Folder;->a(Lcom/dolphin/browser/launcher/bk;)V

    .line 124
    invoke-virtual {p4}, Lcom/dolphin/browser/launcher/bk;->q()Lcom/dolphin/browser/launcher/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/launcher/Folder;->a(Lcom/dolphin/browser/launcher/v;)V

    .line 125
    invoke-virtual {v0, p3}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/bi;)V

    .line 127
    return-object v0

    .line 116
    :cond_0
    invoke-static {p0, p2}, Lcom/dolphin/browser/launcher/Folder;->a(Landroid/view/LayoutInflater;I)Lcom/dolphin/browser/launcher/Folder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/Folder;->a(Lcom/dolphin/browser/launcher/FolderIcon;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/FolderIcon;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->p:Ljava/util/HashSet;

    return-object v0
.end method

.method private a(ILandroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 464
    iget v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->l:I

    .line 465
    iget v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->o:I

    iget v2, p0, Lcom/dolphin/browser/launcher/FolderIcon;->m:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/dolphin/browser/launcher/FolderIcon;->n:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    .line 467
    mul-int v2, v0, v0

    if-lt p1, v2, :cond_0

    .line 468
    invoke-virtual {p2, v4, v4, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 469
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 476
    :goto_0
    return-void

    .line 472
    :cond_0
    iget v2, p0, Lcom/dolphin/browser/launcher/FolderIcon;->m:I

    rem-int v3, p1, v0

    iget v4, p0, Lcom/dolphin/browser/launcher/FolderIcon;->n:I

    add-int/2addr v4, v1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/dolphin/browser/launcher/FolderIcon;->n:I

    add-int/2addr v2, v3

    .line 473
    iget v3, p0, Lcom/dolphin/browser/launcher/FolderIcon;->m:I

    div-int v0, p1, v0

    iget v4, p0, Lcom/dolphin/browser/launcher/FolderIcon;->n:I

    add-int/2addr v4, v1

    mul-int/2addr v0, v4

    add-int/2addr v0, v3

    iget v3, p0, Lcom/dolphin/browser/launcher/FolderIcon;->n:I

    add-int/2addr v0, v3

    .line 474
    add-int v3, v2, v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v2, v0, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 308
    iput-object p1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->j:Landroid/graphics/Bitmap;

    .line 310
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 311
    iget v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->l:I

    .line 312
    iget v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->o:I

    iget v2, p0, Lcom/dolphin/browser/launcher/FolderIcon;->m:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/dolphin/browser/launcher/FolderIcon;->n:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int v5, v1, v0

    .line 313
    iget v3, p0, Lcom/dolphin/browser/launcher/FolderIcon;->m:I

    .line 314
    iget v4, p0, Lcom/dolphin/browser/launcher/FolderIcon;->m:I

    .line 316
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/g/a/an;->b([F)Lcom/g/a/an;

    move-result-object v6

    .line 317
    new-instance v0, Lcom/dolphin/browser/launcher/aw;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/launcher/aw;-><init>(Lcom/dolphin/browser/launcher/FolderIcon;Landroid/graphics/Rect;III)V

    invoke-virtual {v6, v0}, Lcom/g/a/an;->a(Lcom/g/a/au;)V

    .line 327
    new-instance v0, Lcom/dolphin/browser/launcher/ax;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/ax;-><init>(Lcom/dolphin/browser/launcher/FolderIcon;)V

    invoke-virtual {v6, v0}, Lcom/g/a/an;->a(Lcom/g/a/b;)V

    .line 339
    const-wide/16 v0, 0x190

    invoke-virtual {v6, v0, v1}, Lcom/g/a/an;->c(J)Lcom/g/a/an;

    .line 340
    invoke-virtual {v6}, Lcom/g/a/an;->a()V

    .line 341
    return-void

    .line 316
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private a(Lcom/dolphin/browser/launcher/be;)V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p1, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 555
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/launcher/cl;->a(Lcom/dolphin/browser/launcher/cm;)V

    goto :goto_0

    .line 557
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/launcher/cl;Lcom/dolphin/browser/launcher/ag;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/dolphin/browser/launcher/aj;)V
    .locals 18

    .prologue
    .line 346
    const/4 v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Lcom/dolphin/browser/launcher/cl;->h:I

    .line 347
    const/4 v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Lcom/dolphin/browser/launcher/cl;->i:I

    .line 349
    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    iget-boolean v3, v0, Lcom/dolphin/browser/launcher/aj;->j:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 353
    :goto_0
    if-eqz p2, :cond_2

    if-nez v3, :cond_2

    .line 354
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/launcher/FolderIcon;->a:Lcom/dolphin/browser/launcher/bk;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v5}, Lcom/dolphin/browser/launcher/bk;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 357
    if-nez p3, :cond_3

    .line 358
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/launcher/FolderIcon;->a:Lcom/dolphin/browser/launcher/bk;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v6}, Lcom/dolphin/browser/launcher/bk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 362
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/launcher/FolderIcon;->h:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/launcher/FolderIcon;->a(ILandroid/graphics/Rect;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/launcher/FolderIcon;->h:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/dolphin/browser/launcher/ag;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/launcher/FolderIcon;->h:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/dolphin/browser/launcher/ag;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v4, v7

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 367
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/launcher/FolderIcon;->l:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dolphin/browser/launcher/FolderIcon;->l:I

    mul-int/2addr v3, v4

    move/from16 v0, p5

    if-ge v0, v3, :cond_1

    const/high16 v7, 0x3f800000

    .line 369
    :goto_2
    new-instance v15, Lcom/dolphin/browser/launcher/ay;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v15, v0, v1, v2}, Lcom/dolphin/browser/launcher/ay;-><init>(Lcom/dolphin/browser/launcher/FolderIcon;Lcom/dolphin/browser/launcher/cl;Ljava/lang/Runnable;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/launcher/FolderIcon;->h:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Lcom/dolphin/browser/launcher/ag;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v10, v3, p4

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/launcher/FolderIcon;->a:Lcom/dolphin/browser/launcher/bk;

    const/high16 v8, 0x3f800000

    const/high16 v9, 0x3f800000

    const/16 v12, 0x190

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000

    invoke-direct {v13, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x40000000

    invoke-direct {v14, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, p2

    move v11, v10

    invoke-virtual/range {v3 .. v17}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/ag;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 383
    invoke-virtual/range {p0 .. p1}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/cl;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/launcher/FolderIcon;->p:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 388
    :goto_3
    return-void

    .line 349
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 367
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 386
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/cl;)V

    goto :goto_3

    :cond_3
    move-object/from16 v6, p3

    goto/16 :goto_1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    if-nez v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->i:Z

    if-eqz v0, :cond_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 414
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->i:Z

    if-eqz v0, :cond_3

    .line 415
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->c(Landroid/graphics/Canvas;)V

    .line 419
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 417
    :cond_3
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->d(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private b(Lcom/dolphin/browser/launcher/bi;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 249
    iget v1, p1, Lcom/dolphin/browser/launcher/bi;->e:I

    .line 250
    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/Folder;->m()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    iget-boolean v1, v1, Lcom/dolphin/browser/launcher/be;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->j:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dolphin/browser/launcher/FolderIcon;->k:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/FolderIcon;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 424
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    sget v1, Lcom/dolphin/browser/launcher/R$dimen;->folder_preview_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->m:I

    .line 91
    sget v1, Lcom/dolphin/browser/launcher/R$dimen;->folder_preview_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->n:I

    .line 92
    sget v1, Lcom/dolphin/browser/launcher/R$integer;->config_folder_preview_grid_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->l:I

    .line 93
    sget v1, Lcom/dolphin/browser/launcher/R$dimen;->icon_display_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->o:I

    .line 94
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000

    const/4 v4, 0x0

    .line 427
    iget v6, p0, Lcom/dolphin/browser/launcher/FolderIcon;->l:I

    .line 428
    iget v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->o:I

    iget v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->m:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->n:I

    add-int/lit8 v2, v6, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int v7, v0, v6

    .line 429
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/launcher/Folder;->b(Z)Ljava/util/ArrayList;

    move-result-object v8

    move v5, v4

    .line 430
    :goto_0
    if-ge v5, v6, :cond_0

    move v3, v4

    .line 431
    :goto_1
    if-ge v3, v6, :cond_4

    .line 432
    mul-int v0, v5, v6

    add-int/2addr v0, v3

    .line 433
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 461
    :cond_0
    return-void

    .line 436
    :cond_1
    iget v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->m:I

    iget v2, p0, Lcom/dolphin/browser/launcher/FolderIcon;->n:I

    add-int/2addr v2, v7

    mul-int/2addr v2, v3

    add-int v9, v1, v2

    .line 437
    iget v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->m:I

    iget v2, p0, Lcom/dolphin/browser/launcher/FolderIcon;->n:I

    add-int/2addr v2, v7

    mul-int/2addr v2, v5

    add-int v10, v1, v2

    .line 438
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 439
    check-cast v1, Lcom/dolphin/browser/launcher/bh;

    .line 440
    invoke-interface {v1}, Lcom/dolphin/browser/launcher/bh;->b()Lcom/dolphin/browser/launcher/bi;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/launcher/cl;

    .line 441
    iget-object v11, p0, Lcom/dolphin/browser/launcher/FolderIcon;->p:Ljava/util/HashSet;

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 444
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_3

    .line 445
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->getWidth()I

    move-result v2

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->getHeight()I

    move-result v11

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v2, v11}, Landroid/view/View;->measure(II)V

    .line 448
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->getHeight()I

    move-result v11

    invoke-virtual {v0, v4, v4, v2, v11}, Landroid/view/View;->layout(IIII)V

    .line 450
    :cond_3
    int-to-float v0, v7

    iget v2, p0, Lcom/dolphin/browser/launcher/FolderIcon;->o:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 451
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 452
    int-to-float v2, v9

    int-to-float v9, v10

    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 453
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 454
    invoke-interface {v1, p1}, Lcom/dolphin/browser/launcher/bh;->a(Landroid/graphics/Canvas;)V

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 430
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 523
    if-nez p1, :cond_0

    .line 524
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    .line 527
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 528
    return-object p1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->f:Lcom/dolphin/browser/launcher/az;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/az;->b()V

    .line 287
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 584
    iput p1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->o:I

    .line 585
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/Folder;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/Folder;->b(I)V

    .line 587
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Folder;->p()V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 591
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 592
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 594
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->postInvalidate()V

    .line 572
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 534
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->d(Landroid/graphics/Canvas;)V

    .line 535
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/aj;)V
    .locals 8

    .prologue
    .line 391
    iget-object v1, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    check-cast v1, Lcom/dolphin/browser/launcher/cl;

    .line 392
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/Folder;->l()V

    .line 393
    iget-object v2, p1, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lcom/dolphin/browser/launcher/aj;->i:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/cl;Lcom/dolphin/browser/launcher/ag;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/dolphin/browser/launcher/aj;)V

    .line 394
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/bi;)V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->b()V

    .line 542
    :cond_0
    check-cast p1, Lcom/dolphin/browser/launcher/be;

    .line 543
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 544
    iput-object p1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    .line 545
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/bg;)V

    .line 546
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/be;)V

    .line 547
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->a:Lcom/dolphin/browser/launcher/bk;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->b:Lcom/dolphin/browser/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/Folder;->a(Lcom/dolphin/browser/launcher/be;)V

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/dolphin/browser/launcher/be;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/cl;)V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/cl;)V

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/launcher/cl;->a(Z)V

    .line 265
    invoke-static {}, Lcom/dolphin/browser/launcher/f;->a()Lcom/dolphin/browser/launcher/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/be;->g()J

    move-result-wide v1

    iget v3, p1, Lcom/dolphin/browser/launcher/cl;->j:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/dolphin/browser/launcher/f;->b(Lcom/dolphin/browser/launcher/bi;JI)V

    .line 266
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/cl;I)V
    .locals 0

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->invalidate()V

    .line 505
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->requestLayout()V

    .line 506
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/launcher/cl;->a(Lcom/dolphin/browser/launcher/cm;)V

    .line 507
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/cl;Lcom/dolphin/browser/launcher/bh;Lcom/dolphin/browser/launcher/cl;Lcom/dolphin/browser/launcher/ag;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 10

    .prologue
    .line 293
    invoke-interface {p2}, Lcom/dolphin/browser/launcher/bh;->b()Lcom/dolphin/browser/launcher/bi;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->a()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 294
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 295
    invoke-interface {p2, v9}, Lcom/dolphin/browser/launcher/bh;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 297
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/cl;)V

    .line 300
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Lcom/dolphin/browser/launcher/cl;Lcom/dolphin/browser/launcher/ag;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/dolphin/browser/launcher/aj;)V

    .line 304
    invoke-direct {p0, v8, v9}, Lcom/dolphin/browser/launcher/FolderIcon;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 305
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    .line 258
    :cond_0
    check-cast p1, Lcom/dolphin/browser/launcher/bi;

    .line 259
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->b(Lcom/dolphin/browser/launcher/bi;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Lcom/dolphin/browser/launcher/bi;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->c:Lcom/dolphin/browser/launcher/be;

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/launcher/cl;)V
    .locals 0

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->invalidate()V

    .line 512
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->requestLayout()V

    .line 513
    invoke-virtual {p1, p0}, Lcom/dolphin/browser/launcher/cl;->b(Lcom/dolphin/browser/launcher/cm;)V

    .line 514
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 269
    check-cast p1, Lcom/dolphin/browser/launcher/bi;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->b(Lcom/dolphin/browser/launcher/bi;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;

    .line 271
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/CellLayout;

    .line 272
    iget-object v2, p0, Lcom/dolphin/browser/launcher/FolderIcon;->f:Lcom/dolphin/browser/launcher/az;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/CellLayout$LayoutParams;->b()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/dolphin/browser/launcher/az;->a(II)V

    .line 273
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->f:Lcom/dolphin/browser/launcher/az;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/az;->a(Lcom/dolphin/browser/launcher/CellLayout;)V

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->f:Lcom/dolphin/browser/launcher/az;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/az;->a()V

    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->f:Lcom/dolphin/browser/launcher/az;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/CellLayout;->a(Lcom/dolphin/browser/launcher/az;)V

    goto :goto_0
.end method

.method public c()Landroid/view/View;
    .locals 0

    .prologue
    .line 566
    return-object p0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->a()V

    .line 283
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 580
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .prologue
    .line 402
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 403
    iget-object v1, p0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    if-ne v1, p2, :cond_0

    .line 404
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/FolderIcon;->b(Landroid/graphics/Canvas;)V

    .line 406
    :cond_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 244
    sget v0, Lcom/dolphin/browser/launcher/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->e:Landroid/widget/TextView;

    .line 245
    sget v0, Lcom/dolphin/browser/launcher/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/launcher/FolderIcon;->d:Landroid/widget/ImageView;

    .line 246
    return-void
.end method

.method public s()V
    .locals 0

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->invalidate()V

    .line 493
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/FolderIcon;->requestLayout()V

    .line 494
    return-void
.end method
