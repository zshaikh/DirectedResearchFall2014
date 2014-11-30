.class public Lcom/dolphin/browser/bookmark/b/e;
.super Landroid/graphics/drawable/Drawable;
.source "CircleProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/dolphin/browser/bookmark/b/g;

.field private b:Z

.field private c:F

.field private d:F

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/e/a/z;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmark/b/e;-><init>(Lcom/e/a/z;Landroid/content/res/Resources;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lcom/e/a/z;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Lcom/dolphin/browser/bookmark/b/g;

    invoke-direct {v0, p1, v1, v1}, Lcom/dolphin/browser/bookmark/b/g;-><init>(Lcom/e/a/z;FF)V

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    .line 36
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/b/e;->a()V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/e/a/z;Landroid/content/res/Resources;Lcom/dolphin/browser/bookmark/b/f;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/bookmark/b/e;-><init>(Lcom/e/a/z;Landroid/content/res/Resources;)V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    .line 41
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/bookmark/b/e;->a(I)V

    .line 42
    const/16 v1, 0x96

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/bookmark/b/e;->b(I)V

    .line 44
    const/high16 v1, 0x43b40000

    iget v2, v0, Lcom/dolphin/browser/bookmark/b/g;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/dolphin/browser/bookmark/b/e;->d:F

    .line 45
    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 48
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 52
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/bookmark/b/e;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget v2, v2, Lcom/dolphin/browser/bookmark/b/g;->g:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/dolphin/browser/bookmark/b/e;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 94
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iput p1, v0, Lcom/dolphin/browser/bookmark/b/g;->h:I

    .line 188
    const/high16 v0, 0x43b40000

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget v1, v1, Lcom/dolphin/browser/bookmark/b/g;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/e;->d:F

    .line 189
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iput p1, v0, Lcom/dolphin/browser/bookmark/b/g;->g:I

    .line 193
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 58
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    .line 59
    iget-object v3, v1, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    .line 60
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 62
    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v5

    .line 63
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 65
    iget-boolean v6, v1, Lcom/dolphin/browser/bookmark/b/g;->c:Z

    if-eqz v6, :cond_0

    int-to-float v0, v0

    iget v6, v1, Lcom/dolphin/browser/bookmark/b/g;->d:F

    mul-float/2addr v0, v6

    .line 66
    :goto_0
    iget-boolean v6, v1, Lcom/dolphin/browser/bookmark/b/g;->e:Z

    if-eqz v6, :cond_1

    int-to-float v5, v5

    iget v1, v1, Lcom/dolphin/browser/bookmark/b/g;->f:F

    mul-float/2addr v1, v5

    .line 68
    :goto_1
    iget v5, p0, Lcom/dolphin/browser/bookmark/b/e;->c:F

    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {p1, v5, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 70
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 73
    return-void

    .line 65
    :cond_0
    iget v0, v1, Lcom/dolphin/browser/bookmark/b/g;->d:F

    goto :goto_0

    .line 66
    :cond_1
    iget v1, v1, Lcom/dolphin/browser/bookmark/b/g;->f:F

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget v1, v1, Lcom/dolphin/browser/bookmark/b/g;->b:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget-object v1, v1, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-virtual {v1}, Lcom/e/a/z;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/b/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/b/e;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/bookmark/b/g;->b:I

    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-virtual {v0}, Lcom/e/a/z;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-virtual {v0}, Lcom/e/a/z;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-virtual {v0}, Lcom/e/a/z;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-virtual {v0, p1}, Lcom/e/a/z;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/b/e;->e:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-virtual {v0}, Lcom/e/a/z;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/b/e;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-virtual {v0}, Lcom/e/a/z;->mutate()Landroid/graphics/drawable/Drawable;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/bookmark/b/e;->b:Z

    .line 201
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/e/a/z;->setBounds(IIII)V

    .line 165
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 99
    iget v0, p0, Lcom/dolphin/browser/bookmark/b/e;->c:F

    iget v1, p0, Lcom/dolphin/browser/bookmark/b/e;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/e;->c:F

    .line 100
    iget v0, p0, Lcom/dolphin/browser/bookmark/b/e;->c:F

    const/high16 v1, 0x43b40000

    iget v2, p0, Lcom/dolphin/browser/bookmark/b/e;->d:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/e;->c:F

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/b/e;->invalidateSelf()V

    .line 104
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/b/e;->b()V

    .line 105
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-virtual {v0, p1}, Lcom/e/a/z;->setAlpha(I)V

    .line 139
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-virtual {v0, p1}, Lcom/e/a/z;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 144
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/e;->a:Lcom/dolphin/browser/bookmark/b/g;

    iget-object v0, v0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-virtual {v0, p1, p2}, Lcom/e/a/z;->setVisible(ZZ)Z

    .line 110
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 111
    if-eqz p1, :cond_2

    .line 112
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 113
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/dolphin/browser/bookmark/b/e;->c:F

    .line 114
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/b/e;->b()V

    .line 119
    :cond_1
    :goto_0
    return v0

    .line 117
    :cond_2
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/bookmark/b/e;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/b/e;->e:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/bookmark/b/e;->e:Z

    .line 78
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/b/e;->b()V

    .line 80
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/bookmark/b/e;->e:Z

    .line 84
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/bookmark/b/e;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method
