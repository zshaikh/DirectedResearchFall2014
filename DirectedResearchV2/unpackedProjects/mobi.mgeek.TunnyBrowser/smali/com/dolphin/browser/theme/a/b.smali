.class public Lcom/dolphin/browser/theme/a/b;
.super Landroid/graphics/drawable/Drawable;
.source "DolphinNoColorFilterDrawable.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 25
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 117
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/a/b;->b:Z

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/a/b;->clearColorFilter()V

    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/a/b;->b:Z

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    return-void
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 188
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 102
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 137
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 107
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 40
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 72
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 77
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 50
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 45
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 87
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 92
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method
