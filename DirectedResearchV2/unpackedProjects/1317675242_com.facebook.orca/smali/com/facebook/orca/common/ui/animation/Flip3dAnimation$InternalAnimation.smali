.class Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;
.super Landroid/view/animation/Animation;
.source "Flip3dAnimation.java"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:Z

.field private f:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFZ)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 89
    iput p1, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->a:F

    .line 90
    iput p2, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->b:F

    .line 91
    iput p3, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->c:F

    .line 92
    iput p4, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->d:F

    .line 93
    iput-boolean p5, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->e:Z

    .line 94
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 104
    iget v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->a:F

    .line 105
    iget v1, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 107
    iget v1, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->c:F

    .line 108
    iget v2, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->d:F

    .line 109
    float-to-double v3, v0

    const-wide v5, 0x400921fb54442d18L

    mul-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 110
    iget-object v4, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->f:Landroid/graphics/Camera;

    .line 113
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 115
    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 116
    iget-boolean v6, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->e:Z

    if-nez v6, :cond_0

    .line 117
    invoke-virtual {v4, v7, v7, v3}, Landroid/graphics/Camera;->translate(FFF)V

    .line 121
    :goto_0
    invoke-virtual {v4, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 122
    invoke-virtual {v4, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 123
    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 125
    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 126
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 127
    return-void

    .line 119
    :cond_0
    invoke-virtual {v4, v7, v7, v3}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 99
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/animation/Flip3dAnimation$InternalAnimation;->f:Landroid/graphics/Camera;

    .line 100
    return-void
.end method
