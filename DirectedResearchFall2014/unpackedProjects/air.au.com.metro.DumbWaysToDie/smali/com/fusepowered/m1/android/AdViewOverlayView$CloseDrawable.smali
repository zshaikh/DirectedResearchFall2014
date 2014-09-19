.class Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseDrawable"
.end annotation


# instance fields
.field protected enabled:Z

.field protected final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    .line 468
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 464
    iput-boolean v1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;->enabled:Z

    .line 469
    iput-boolean p1, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;->enabled:Z

    .line 470
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    .line 471
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 472
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 473
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/16 v2, 0xff

    const/high16 v11, 0x4000

    .line 478
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 479
    .local v6, bounds:Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v1, v6, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v1

    .line 480
    .local v10, width:I
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    iget v1, v6, Landroid/graphics/Rect;->top:I

    sub-int v8, v0, v1

    .line 481
    .local v8, height:I
    int-to-float v0, v10

    const/high16 v1, 0x40c0

    div-float v9, v0, v1

    .line 482
    .local v9, strokeWidth:F
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 483
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;->enabled:Z

    if-eqz v0, :cond_0

    move v7, v2

    .line 484
    .local v7, grayScale:I
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 485
    div-float v1, v9, v11

    div-float v2, v9, v11

    int-to-float v0, v10

    div-float v3, v9, v11

    sub-float v3, v0, v3

    int-to-float v0, v8

    div-float v4, v9, v11

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 486
    int-to-float v0, v10

    div-float v1, v9, v11

    sub-float v1, v0, v1

    div-float v2, v9, v11

    div-float v3, v9, v11

    int-to-float v0, v8

    div-float v4, v9, v11

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/fusepowered/m1/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 487
    return-void

    .line 483
    .end local v7           #grayScale:I
    :cond_0
    const/16 v0, 0x50

    move v7, v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 492
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 498
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 503
    return-void
.end method
