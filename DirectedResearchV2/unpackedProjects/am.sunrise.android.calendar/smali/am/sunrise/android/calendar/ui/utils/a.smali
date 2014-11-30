.class public Lam/sunrise/android/calendar/ui/utils/a;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/utils/a;->a:Landroid/graphics/Bitmap;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->c:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->b:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 33
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/utils/a;->a:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/utils/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 39
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, -0x3

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 52
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 53
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 44
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/utils/a;->invalidateSelf()V

    .line 47
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 58
    return-void
.end method
