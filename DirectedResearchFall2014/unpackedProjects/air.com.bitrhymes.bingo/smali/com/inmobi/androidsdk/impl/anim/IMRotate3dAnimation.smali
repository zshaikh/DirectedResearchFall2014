.class public Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "IMRotate3dAnimation.java"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Z

.field private g:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 24
    iput p1, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->a:F

    .line 25
    iput p2, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->b:F

    .line 26
    iput p3, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->c:F

    .line 27
    iput p4, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->d:F

    .line 28
    iput p5, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->e:F

    .line 29
    iput-boolean p6, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->f:Z

    .line 30
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 45
    iget v0, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->a:F

    .line 47
    iget v1, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    .line 46
    add-float/2addr v0, v1

    .line 49
    iget v1, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->c:F

    .line 50
    iget v2, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->d:F

    .line 51
    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->g:Landroid/graphics/Camera;

    .line 53
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 55
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 56
    iget-boolean v5, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->f:Z

    if-eqz v5, :cond_0

    .line 57
    iget v5, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->e:F

    mul-float/2addr v5, p1

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 61
    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateX(F)V

    .line 62
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 63
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 65
    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 66
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 68
    return-void

    .line 59
    :cond_0
    iget v5, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->e:F

    const/high16 v6, 0x3f80

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 36
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->g:Landroid/graphics/Camera;

    .line 37
    return-void
.end method
