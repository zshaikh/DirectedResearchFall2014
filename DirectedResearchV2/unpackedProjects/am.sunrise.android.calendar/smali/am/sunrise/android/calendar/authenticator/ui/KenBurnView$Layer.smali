.class Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;
.super Ljava/lang/Object;
.source "KenBurnView.java"


# instance fields
.field a:F

.field b:Landroid/graphics/drawable/Drawable;

.field c:F

.field d:F

.field e:F

.field f:F

.field final synthetic g:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->g:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 249
    iget v1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->d:F

    iget v2, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->e:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 250
    iget v1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->a:F

    iget v2, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->a:F

    iget v3, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->c:F

    mul-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 252
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->f:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->c:F

    return v0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->d:F

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->e:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public init(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->reset()V

    .line 259
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->g:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 265
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 267
    iget-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->g:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;

    invoke-static {v2}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->a(Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->g:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;

    invoke-static {v3}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->b(Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;)I

    move-result v3

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_0

    .line 268
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->g:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->a(Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 273
    :goto_0
    iput v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->a:F

    .line 274
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->g:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;

    invoke-static {v1}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->b(Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 277
    const/high16 v0, 0x3f800000

    iput v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->c:F

    .line 278
    iput v1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->e:F

    .line 279
    iput v1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->e:F

    .line 280
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 282
    iput-object v2, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    .line 284
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .prologue
    .line 321
    iput p1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->f:F

    .line 322
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->b:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 323
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->g:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;

    invoke-static {v0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 324
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 295
    iput p1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->c:F

    .line 296
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->g:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;

    invoke-static {v0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 297
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .prologue
    .line 304
    iput p1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->d:F

    .line 305
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .prologue
    .line 312
    iput p1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->e:F

    .line 313
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->g:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;

    invoke-static {v0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 314
    return-void
.end method
