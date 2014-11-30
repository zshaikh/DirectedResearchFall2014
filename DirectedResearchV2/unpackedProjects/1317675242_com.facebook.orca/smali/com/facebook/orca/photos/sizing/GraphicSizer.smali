.class public Lcom/facebook/orca/photos/sizing/GraphicSizer;
.super Ljava/lang/Object;
.source "GraphicSizer.java"

# interfaces
.implements Lcom/facebook/orca/photos/sizing/GraphicOp;


# instance fields
.field private final a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

.field private final b:I

.field private final c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/photos/sizing/GraphicOp;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;II)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    .line 29
    iput p2, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->b:I

    .line 30
    iput p3, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->c:I

    .line 31
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a(II)V

    .line 32
    return-void
.end method

.method private a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/photos/sizing/GraphicOp;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->b()Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->a()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;->b()F

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;-><init>(Landroid/graphics/RectF;F)V

    .line 84
    invoke-virtual {v1, p2}, Lcom/facebook/orca/photos/sizing/CropRectGraphicOp;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v0

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->a()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v4

    .line 90
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 91
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 92
    if-le v0, v1, :cond_1

    .line 93
    new-instance v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a()F

    move-result v1

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b()F

    move-result v2

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c()F

    move-result v3

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v5}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v6}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;-><init>(FFFLcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;II)V

    .line 102
    invoke-virtual {v0, v7}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 103
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 118
    :goto_2
    return-object v0

    .line 93
    :cond_0
    sget-object v4, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    goto :goto_1

    .line 105
    :cond_1
    new-instance v0, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->a()F

    move-result v1

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->b()F

    move-result v2

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->c()F

    move-result v3

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraints;->d()Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    move-result-object v4

    :goto_3
    iget-object v5, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v5}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->c()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v6}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->d()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;-><init>(FFFLcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;II)V

    .line 114
    invoke-virtual {v0, v7}, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 105
    :cond_2
    sget-object v4, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->TOP_OR_LEFT:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    goto :goto_3

    :cond_3
    move-object v0, v7

    goto :goto_2

    :cond_4
    move-object v7, p2

    goto/16 :goto_0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->d:Ljava/util/List;

    .line 67
    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->d:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->d:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/photos/sizing/GraphicSizer;->b(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->e:I

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->f:I

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    return-void
.end method

.method private b(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/photos/sizing/GraphicOp;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 124
    new-instance v0, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;

    iget-object v1, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->e()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    invoke-virtual {v2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;->f()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;-><init>(II)V

    .line 127
    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/ScaleGraphicOp;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 130
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/photos/sizing/GraphicSizer;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/photos/sizing/GraphicOp;

    .line 37
    invoke-interface {p0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOp;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_0
    return-object v1
.end method
