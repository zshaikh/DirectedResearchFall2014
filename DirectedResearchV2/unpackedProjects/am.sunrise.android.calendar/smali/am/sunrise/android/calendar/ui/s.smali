.class public Lam/sunrise/android/calendar/ui/s;
.super Landroid/graphics/drawable/Drawable;
.source "PageDividerDrawable.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/s;->a:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/s;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/s;->b:I

    .line 38
    const v1, 0x7f0a0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/s;->c:I

    .line 39
    const v1, 0x7f0c0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/s;->d:I

    .line 40
    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/s;->e:I

    .line 42
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/s;->f:I

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 47
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/s;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 49
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/s;->a:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/s;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/s;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/s;->a:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/s;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/s;->b:I

    add-int/2addr v0, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/s;->d:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/s;->b:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/s;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 56
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/s;->a:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/s;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/s;->b:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/s;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 59
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
