.class public Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;
.super Ljava/lang/Object;
.source "CropRegionGraphicOp.java"

# interfaces
.implements Lcom/facebook/orca/photos/sizing/GraphicOp;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(FFFLcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v2

    if-gtz v0, :cond_0

    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 38
    cmpl-float v0, p3, v1

    if-ltz v0, :cond_1

    cmpg-float v0, p3, v2

    if-gtz v0, :cond_1

    move v0, v4

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 39
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iput p1, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a:F

    .line 41
    iput p2, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->b:F

    .line 42
    iput p3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->c:F

    .line 43
    iput-object p4, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    .line 44
    iput p5, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->e:I

    .line 45
    iput p6, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->f:I

    .line 46
    return-void

    :cond_0
    move v0, v3

    .line 37
    goto :goto_0

    :cond_1
    move v0, v3

    .line 38
    goto :goto_1
.end method

.method private a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 80
    :goto_0
    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->b(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    move-result-object v3

    .line 84
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 85
    return-object v0

    .line 78
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private b(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 92
    if-le v0, p2, :cond_2

    .line 93
    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    sget-object v2, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    if-ne v1, v2, :cond_0

    .line 94
    sub-int/2addr v0, p2

    .line 95
    div-int/lit8 v0, v0, 0x2

    .line 96
    add-int v1, v0, p2

    move v6, v1

    move v1, v0

    move v0, v6

    .line 108
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 111
    if-le v2, p3, :cond_5

    .line 112
    iget-object v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    sget-object v4, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    if-ne v3, v4, :cond_3

    .line 113
    sub-int/2addr v2, p3

    .line 114
    div-int/lit8 v2, v2, 0x2

    .line 115
    add-int v3, v2, p3

    move v6, v3

    move v3, v2

    move v2, v6

    .line 127
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    sget-object v2, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->TOP_OR_LEFT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    if-ne v1, v2, :cond_1

    move v0, p2

    move v1, v5

    .line 99
    goto :goto_0

    .line 101
    :cond_1
    sub-int v1, v0, p2

    .line 102
    goto :goto_0

    :cond_2
    move v1, v5

    .line 106
    goto :goto_0

    .line 116
    :cond_3
    iget-object v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->d:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    sget-object v4, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->TOP_OR_LEFT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    if-ne v3, v4, :cond_4

    move v2, p3

    move v3, v5

    .line 118
    goto :goto_1

    .line 120
    :cond_4
    sub-int v3, v2, p3

    .line 121
    goto :goto_1

    :cond_5
    move v3, v5

    .line 125
    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 53
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 54
    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 56
    iget v2, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->e:I

    if-gt v0, v2, :cond_0

    move-object v0, p1

    .line 73
    :goto_0
    return-object v0

    .line 60
    :cond_0
    int-to-float v2, v1

    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 61
    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->b:F

    sub-float v3, v4, v3

    float-to-int v3, v3

    mul-int/2addr v0, v3

    .line 62
    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->e:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 63
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    iget v2, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->f:I

    if-ge v1, v2, :cond_2

    move-object v0, p1

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    int-to-float v2, v0

    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 71
    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->c:F

    sub-float v3, v4, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 72
    iget v3, p0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->f:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 73
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
