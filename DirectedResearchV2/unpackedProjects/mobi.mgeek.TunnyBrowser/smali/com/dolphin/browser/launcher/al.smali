.class public Lcom/dolphin/browser/launcher/al;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:I

.field private final e:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/al;->e:Landroid/graphics/Paint;

    .line 34
    const/16 v0, 0xff

    iput v0, p0, Lcom/dolphin/browser/launcher/al;->b:I

    .line 35
    iput-object p1, p0, Lcom/dolphin/browser/launcher/al;->a:Landroid/graphics/Bitmap;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/launcher/al;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/al;->c:I

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/launcher/al;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/al;->d:I

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/launcher/al;->d:I

    iput v0, p0, Lcom/dolphin/browser/launcher/al;->c:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/al;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/dolphin/browser/launcher/al;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/launcher/al;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/dolphin/browser/launcher/al;->b:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/dolphin/browser/launcher/al;->d:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/dolphin/browser/launcher/al;->c:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/dolphin/browser/launcher/al;->d:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/dolphin/browser/launcher/al;->c:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/dolphin/browser/launcher/al;->b:I

    if-eq p1, v0, :cond_0

    .line 64
    iput p1, p0, Lcom/dolphin/browser/launcher/al;->b:I

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/launcher/al;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/al;->invalidateSelf()V

    .line 68
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/launcher/al;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 54
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/launcher/al;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 72
    return-void
.end method
