.class public Lcom/e/a/t;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private a:Lcom/e/a/u;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:Landroid/graphics/ColorFilter;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    const/16 v0, 0xff

    iput v0, p0, Lcom/e/a/t;->c:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/e/a/t;->e:I

    .line 256
    return-void
.end method


# virtual methods
.method protected a(Lcom/e/a/u;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    .line 533
    return-void
.end method

.method public a(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 198
    iget v2, p0, Lcom/e/a/t;->e:I

    if-ne p1, v2, :cond_0

    .line 225
    :goto_0
    return v0

    .line 201
    :cond_0
    if-ltz p1, :cond_3

    iget-object v2, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    iget v2, v2, Lcom/e/a/u;->e:I

    if-ge p1, v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    iget-object v2, v2, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    .line 203
    iget-object v3, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 206
    :cond_1
    iput-object v2, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    .line 207
    iput p1, p0, Lcom/e/a/t;->e:I

    .line 208
    if-eqz v2, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/e/a/t;->isVisible()Z

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 210
    iget v0, p0, Lcom/e/a/t;->c:I

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 211
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    iget-boolean v0, v0, Lcom/e/a/u;->u:Z

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 212
    iget-object v0, p0, Lcom/e/a/t;->d:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 213
    invoke-virtual {p0}, Lcom/e/a/t;->getState()[I

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 214
    invoke-virtual {p0}, Lcom/e/a/t;->getLevel()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 215
    invoke-virtual {p0}, Lcom/e/a/t;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 224
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/e/a/t;->invalidateSelf()V

    move v0, v1

    .line 225
    goto :goto_0

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 219
    iget-object v2, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 221
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/e/a/t;->e:I

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    :cond_0
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    iget v1, v1, Lcom/e/a/u;->b:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    iget v1, v1, Lcom/e/a/u;->c:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/e/a/u;->b:I

    .line 237
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->f()I

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->e()I

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->h()I

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->g()I

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->i()I

    move-result v0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->c()Landroid/graphics/Rect;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 65
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 70
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 166
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 168
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->j()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/e/a/t;->f:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->a()I

    move-result v1

    .line 246
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    invoke-virtual {v0}, Lcom/e/a/u;->b()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 247
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 248
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 249
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 247
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/t;->f:Z

    .line 253
    :cond_2
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 109
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 172
    invoke-super {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 174
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/e/a/t;->c:I

    if-eq v0, p1, :cond_0

    .line 77
    iput p1, p0, Lcom/e/a/t;->c:I

    .line 78
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/e/a/t;->d:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 97
    iput-object p1, p0, Lcom/e/a/t;->d:Landroid/graphics/ColorFilter;

    .line 98
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    iget-boolean v0, v0, Lcom/e/a/u;->u:Z

    if-eq v0, p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    iput-boolean p1, v0, Lcom/e/a/u;->u:Z

    .line 88
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/e/a/t;->a:Lcom/e/a/u;

    iget-boolean v1, v1, Lcom/e/a/u;->u:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 188
    :cond_0
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/e/a/t;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 178
    invoke-super {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 180
    :cond_0
    return-void
.end method
