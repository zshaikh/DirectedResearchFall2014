.class Lcom/facebook/orca/camera/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:F

.field b:Landroid/graphics/Matrix;

.field c:[Landroid/media/FaceDetector$Face;

.field d:I

.field final synthetic e:Lcom/facebook/orca/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/facebook/orca/camera/CropImage;)V
    .locals 1

    .prologue
    .line 414
    iput-object p1, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/facebook/orca/camera/CropImage$6;->a:F

    .line 418
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->c:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 468
    new-instance v0, Lcom/facebook/orca/camera/HighlightView;

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 470
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 471
    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 473
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v9, v9, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 476
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x5

    .line 479
    iget-object v5, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v5}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v5}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 480
    iget-object v5, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v5}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v5

    iget-object v6, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v6}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v6

    if-le v5, v6, :cond_0

    .line 481
    iget-object v5, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v5}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v5

    mul-int/2addr v5, v4

    iget-object v6, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v6}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v6

    div-int/2addr v5, v6

    move v10, v5

    move v5, v4

    move v4, v10

    .line 487
    :goto_0
    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    .line 488
    sub-int/2addr v3, v4

    div-int/lit8 v6, v3, 0x2

    .line 490
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v6

    add-int/2addr v1, v5

    int-to-float v1, v1

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-direct {v3, v7, v8, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 491
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->b:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v4}, Lcom/facebook/orca/camera/CropImage;->f(Lcom/facebook/orca/camera/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v5}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v5}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/camera/HighlightView;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 493
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/camera/CropImageView;->a(Lcom/facebook/orca/camera/HighlightView;)V

    .line 494
    return-void

    .line 483
    :cond_0
    iget-object v5, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v5}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v5

    mul-int/2addr v5, v4

    iget-object v6, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v6}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v6

    div-int/2addr v5, v6

    goto :goto_0

    :cond_1
    move v5, v9

    .line 491
    goto :goto_1

    :cond_2
    move v5, v4

    goto :goto_0
.end method

.method private a(Landroid/media/FaceDetector$Face;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 423
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 425
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v2, p0, Lcom/facebook/orca/camera/CropImage$6;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 426
    invoke-virtual {p1, v0}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 427
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/facebook/orca/camera/CropImage$6;->a:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 428
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/facebook/orca/camera/CropImage$6;->a:F

    mul-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 430
    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v4, v2

    .line 431
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v5, v0

    .line 433
    new-instance v0, Lcom/facebook/orca/camera/HighlightView;

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/orca/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 435
    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 436
    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 438
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 440
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v6, v4

    int-to-float v7, v5

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 441
    neg-int v4, v1

    int-to-float v4, v4

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 442
    iget v1, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_0

    .line 443
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 446
    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_1

    .line 447
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 450
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 451
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 455
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 456
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 460
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->b:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v4}, Lcom/facebook/orca/camera/CropImage;->f(Lcom/facebook/orca/camera/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v5}, Lcom/facebook/orca/camera/CropImage;->g(Lcom/facebook/orca/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v5}, Lcom/facebook/orca/camera/CropImage;->h(Lcom/facebook/orca/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/camera/HighlightView;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 463
    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/camera/CropImageView;->a(Lcom/facebook/orca/camera/HighlightView;)V

    .line 464
    return-void

    :cond_4
    move v5, v8

    .line 460
    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/camera/CropImage$6;)V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/facebook/orca/camera/CropImage$6;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/camera/CropImage$6;Landroid/media/FaceDetector$Face;)V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/facebook/orca/camera/CropImage$6;->a(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 499
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    .line 504
    const/high16 v0, 0x43800000

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/facebook/orca/camera/CropImage$6;->a:F

    .line 506
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 507
    iget v0, p0, Lcom/facebook/orca/camera/CropImage$6;->a:F

    iget v2, p0, Lcom/facebook/orca/camera/CropImage$6;->a:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 508
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v2}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 514
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->b:Landroid/graphics/Matrix;

    .line 515
    invoke-direct {p0}, Lcom/facebook/orca/camera/CropImage$6;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 517
    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/facebook/orca/camera/CropImage$6;->a:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/facebook/orca/camera/CropImage$6;->a:F

    .line 518
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->i(Lcom/facebook/orca/camera/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    new-instance v1, Landroid/media/FaceDetector;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage$6;->c:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v1, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 521
    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage$6;->c:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v1, v0, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/camera/CropImage$6;->d:I

    .line 524
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 525
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6;->e:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->e(Lcom/facebook/orca/camera/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/camera/CropImage$6$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/camera/CropImage$6$1;-><init>(Lcom/facebook/orca/camera/CropImage$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 552
    return-void
.end method
