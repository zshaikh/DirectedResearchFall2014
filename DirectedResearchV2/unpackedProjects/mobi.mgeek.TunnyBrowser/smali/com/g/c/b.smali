.class final Lcom/g/c/b;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# direct methods
.method static a(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method static a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 223
    return-void
.end method

.method static b(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method static b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 231
    return-void
.end method

.method static c(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method static c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 239
    return-void
.end method

.method static d(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method static d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 247
    return-void
.end method

.method static e(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method static e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 271
    return-void
.end method

.method static f(Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 279
    return-void
.end method

.method static g(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 303
    return-void
.end method

.method static h(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 311
    return-void
.end method
