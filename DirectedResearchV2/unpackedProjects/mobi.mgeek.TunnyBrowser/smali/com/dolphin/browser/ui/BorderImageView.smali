.class public Lcom/dolphin/browser/ui/BorderImageView;
.super Landroid/widget/ImageView;
.source "BorderImageView.java"


# instance fields
.field private a:Landroid/content/res/ColorStateList;

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/content/res/ColorStateList;

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/content/res/ColorStateList;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->h:I

    .line 39
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/BorderImageView;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->h:I

    .line 44
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/BorderImageView;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/dolphin/browser/ui/BorderImageView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/BorderImageView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 76
    iget v2, p0, Lcom/dolphin/browser/ui/BorderImageView;->e:I

    if-eq v1, v2, :cond_0

    .line 77
    iput v1, p0, Lcom/dolphin/browser/ui/BorderImageView;->e:I

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dolphin/browser/ui/BorderImageView;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    const/4 v0, 0x1

    .line 81
    :cond_0
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/BorderImageView;->invalidate()V

    .line 84
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->c:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->f:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dolphin/browser/ui/BorderImageView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 105
    .line 106
    iget-object v1, p0, Lcom/dolphin/browser/ui/BorderImageView;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/BorderImageView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 107
    iget v2, p0, Lcom/dolphin/browser/ui/BorderImageView;->h:I

    if-eq v1, v2, :cond_0

    .line 108
    iput v1, p0, Lcom/dolphin/browser/ui/BorderImageView;->h:I

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dolphin/browser/ui/BorderImageView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    const/4 v0, 0x1

    .line 112
    :cond_0
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/BorderImageView;->invalidate()V

    .line 115
    :cond_1
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    .line 119
    iget-object v1, p0, Lcom/dolphin/browser/ui/BorderImageView;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/BorderImageView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 120
    iget v2, p0, Lcom/dolphin/browser/ui/BorderImageView;->b:I

    if-eq v1, v2, :cond_0

    .line 121
    iput v1, p0, Lcom/dolphin/browser/ui/BorderImageView;->b:I

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dolphin/browser/ui/BorderImageView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    const/4 v0, 0x1

    .line 125
    :cond_0
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/BorderImageView;->invalidate()V

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/BorderImageView;->getWidth()I

    move-result v6

    .line 148
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/BorderImageView;->getHeight()I

    move-result v7

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 150
    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/dolphin/browser/ui/BorderImageView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 154
    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/dolphin/browser/ui/BorderImageView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/dolphin/browser/ui/BorderImageView;->a()V

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/dolphin/browser/ui/BorderImageView;->c()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/BorderImageView;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/dolphin/browser/ui/BorderImageView;->b()V

    .line 142
    :cond_1
    return-void
.end method
