.class Lcom/dolphin/browser/launcher/z;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Lcom/g/a/au;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/ag;

.field final synthetic b:Landroid/view/animation/Interpolator;

.field final synthetic c:Landroid/view/animation/Interpolator;

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:F

.field final synthetic h:F

.field final synthetic i:F

.field final synthetic j:F

.field final synthetic k:Landroid/graphics/Rect;

.field final synthetic l:Landroid/graphics/Rect;

.field final synthetic m:Lcom/dolphin/browser/launcher/DragLayer;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/DragLayer;Lcom/dolphin/browser/launcher/ag;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/dolphin/browser/launcher/z;->m:Lcom/dolphin/browser/launcher/DragLayer;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/z;->a:Lcom/dolphin/browser/launcher/ag;

    iput-object p3, p0, Lcom/dolphin/browser/launcher/z;->b:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/dolphin/browser/launcher/z;->c:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/dolphin/browser/launcher/z;->d:F

    iput p6, p0, Lcom/dolphin/browser/launcher/z;->e:F

    iput p7, p0, Lcom/dolphin/browser/launcher/z;->f:F

    iput p8, p0, Lcom/dolphin/browser/launcher/z;->g:F

    iput p9, p0, Lcom/dolphin/browser/launcher/z;->h:F

    iput p10, p0, Lcom/dolphin/browser/launcher/z;->i:F

    iput p11, p0, Lcom/dolphin/browser/launcher/z;->j:F

    iput-object p12, p0, Lcom/dolphin/browser/launcher/z;->k:Landroid/graphics/Rect;

    iput-object p13, p0, Lcom/dolphin/browser/launcher/z;->l:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/an;)V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000

    const/high16 v10, 0x3f800000

    .line 369
    invoke-virtual {p1}, Lcom/g/a/an;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/launcher/z;->a:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ag;->getMeasuredWidth()I

    move-result v3

    .line 371
    iget-object v0, p0, Lcom/dolphin/browser/launcher/z;->a:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/ag;->getMeasuredHeight()I

    move-result v4

    .line 373
    iget-object v0, p0, Lcom/dolphin/browser/launcher/z;->b:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    move v0, v1

    .line 375
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/launcher/z;->c:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_1

    move v2, v1

    .line 378
    :goto_1
    iget v5, p0, Lcom/dolphin/browser/launcher/z;->d:F

    iget v6, p0, Lcom/dolphin/browser/launcher/z;->e:F

    mul-float/2addr v5, v6

    .line 379
    iget v6, p0, Lcom/dolphin/browser/launcher/z;->f:F

    iget v7, p0, Lcom/dolphin/browser/launcher/z;->e:F

    mul-float/2addr v6, v7

    .line 380
    iget v7, p0, Lcom/dolphin/browser/launcher/z;->g:F

    mul-float/2addr v7, v1

    sub-float v8, v10, v1

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    .line 381
    iget v8, p0, Lcom/dolphin/browser/launcher/z;->h:F

    mul-float/2addr v8, v1

    sub-float v1, v10, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v8

    .line 382
    iget v8, p0, Lcom/dolphin/browser/launcher/z;->i:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/dolphin/browser/launcher/z;->j:F

    sub-float v0, v10, v0

    mul-float/2addr v0, v9

    add-float/2addr v8, v0

    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/launcher/z;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v5, v10

    int-to-float v3, v3

    mul-float/2addr v3, v5

    div-float/2addr v3, v11

    add-float/2addr v0, v3

    .line 385
    iget-object v3, p0, Lcom/dolphin/browser/launcher/z;->k:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v5, v6, v10

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    .line 387
    iget-object v4, p0, Lcom/dolphin/browser/launcher/z;->l:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 388
    iget-object v4, p0, Lcom/dolphin/browser/launcher/z;->l:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 390
    iget-object v3, p0, Lcom/dolphin/browser/launcher/z;->m:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v3}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/DragLayer;)Lcom/dolphin/browser/launcher/ag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/ag;->getScrollX()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v0, p0, Lcom/dolphin/browser/launcher/z;->m:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/DragLayer;->b(Lcom/dolphin/browser/launcher/DragLayer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/launcher/z;->m:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/DragLayer;->c(Lcom/dolphin/browser/launcher/DragLayer;)I

    move-result v0

    iget-object v4, p0, Lcom/dolphin/browser/launcher/z;->m:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v4}, Lcom/dolphin/browser/launcher/DragLayer;->b(Lcom/dolphin/browser/launcher/DragLayer;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v0, v4

    :goto_2
    add-int/2addr v0, v3

    .line 392
    iget-object v3, p0, Lcom/dolphin/browser/launcher/z;->m:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v3}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/DragLayer;)Lcom/dolphin/browser/launcher/ag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/ag;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    .line 394
    iget-object v3, p0, Lcom/dolphin/browser/launcher/z;->m:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v3}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/DragLayer;)Lcom/dolphin/browser/launcher/ag;

    move-result-object v3

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/g/c/a;->g(Landroid/view/View;F)V

    .line 395
    iget-object v0, p0, Lcom/dolphin/browser/launcher/z;->m:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/DragLayer;)Lcom/dolphin/browser/launcher/ag;

    move-result-object v0

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/g/c/a;->h(Landroid/view/View;F)V

    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/launcher/z;->m:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/DragLayer;)Lcom/dolphin/browser/launcher/ag;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/g/c/a;->e(Landroid/view/View;F)V

    .line 397
    iget-object v0, p0, Lcom/dolphin/browser/launcher/z;->m:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/DragLayer;)Lcom/dolphin/browser/launcher/ag;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/g/c/a;->f(Landroid/view/View;F)V

    .line 398
    iget-object v0, p0, Lcom/dolphin/browser/launcher/z;->m:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/DragLayer;)Lcom/dolphin/browser/launcher/ag;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/launcher/ag;->a(F)V

    .line 399
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/z;->b:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto/16 :goto_0

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/launcher/z;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto/16 :goto_1

    .line 390
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
