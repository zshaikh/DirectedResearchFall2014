.class public Lcom/dolphin/browser/theme/a/a;
.super Landroid/graphics/drawable/Drawable;
.source "DolphinColorFilterCoverDrawable.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dolphin/browser/theme/a/a;->a:Landroid/graphics/drawable/Drawable;

    .line 24
    iput-object p2, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 26
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 120
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/dolphin/browser/theme/a/a;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 32
    iget-object v1, p0, Lcom/dolphin/browser/theme/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    return-void
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 192
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 105
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 140
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 110
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 41
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 70
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 75
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 80
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 53
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 47
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 90
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 95
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/theme/a/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method
