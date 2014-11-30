.class public Lcom/dolphin/browser/ui/view/LabelView;
.super Landroid/view/View;
.source "LabelView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/content/res/ColorStateList;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->g:Landroid/graphics/Rect;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->j:I

    .line 65
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/LabelView;->a()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->g:Landroid/graphics/Rect;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->j:I

    .line 77
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/LabelView;->a()V

    .line 79
    sget-object v0, Lcom/dolphin/browser/core/R$styleable;->LabelView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/view/LabelView;->a(Ljava/lang/String;)V

    .line 90
    :cond_0
    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/view/LabelView;->b(I)V

    .line 92
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 93
    if-lez v1, :cond_1

    .line 94
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/view/LabelView;->a(I)V

    .line 97
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 98
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/view/LabelView;->a(Z)V

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return-void
.end method

.method private final a()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    sget v2, Lcom/dolphin/browser/core/R$dimen;->tab_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->e:Z

    .line 111
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 214
    iget v1, p0, Lcom/dolphin/browser/ui/view/LabelView;->i:I

    if-eq v1, v0, :cond_0

    .line 215
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/LabelView;->d(I)V

    .line 217
    :cond_0
    return-void
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/LabelView;->b:Ljava/lang/String;

    .line 224
    if-nez v1, :cond_1

    .line 225
    const-string v1, ""

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    .line 228
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 229
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v8, v4

    .line 230
    iget-boolean v4, p0, Lcom/dolphin/browser/ui/view/LabelView;->e:Z

    if-eqz v4, :cond_4

    .line 231
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingRight()I

    move-result v5

    sub-int v7, v4, v5

    .line 232
    if-gt v3, v7, :cond_2

    .line 233
    iput-object v1, p0, Lcom/dolphin/browser/ui/view/LabelView;->c:Ljava/lang/String;

    move v2, v3

    .line 247
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 249
    iget v1, p0, Lcom/dolphin/browser/ui/view/LabelView;->f:I

    iget-object v3, p0, Lcom/dolphin/browser/ui/view/LabelView;->g:Landroid/graphics/Rect;

    invoke-static {v1, v2, v8, v0, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v3, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    const-string v4, "\u2026"

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 236
    int-to-float v3, v7

    cmpl-float v3, v5, v3

    if-lez v3, :cond_3

    .line 237
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->c:Ljava/lang/String;

    goto :goto_1

    .line 240
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    int-to-float v6, v7

    sub-float v5, v6, v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v0

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->c:Ljava/lang/String;

    move v2, v7

    .line 243
    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 150
    iput p1, p0, Lcom/dolphin/browser/ui/view/LabelView;->i:I

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->invalidate()V

    .line 153
    return-void
.end method

.method private e(I)I
    .locals 4

    .prologue
    .line 258
    .line 259
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 260
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 262
    const/high16 v0, 0x40000000

    if-ne v2, v0, :cond_1

    move v0, v1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->b:Ljava/lang/String;

    .line 268
    if-nez v0, :cond_2

    .line 269
    const-string v0, ""

    .line 271
    :cond_2
    iget-object v3, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    .line 273
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private f(I)I
    .locals 4

    .prologue
    .line 288
    .line 289
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 290
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 292
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/dolphin/browser/ui/view/LabelView;->d:I

    .line 293
    iget v1, p0, Lcom/dolphin/browser/ui/view/LabelView;->j:I

    if-lez v1, :cond_1

    .line 294
    iget v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->j:I

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    const/high16 v1, 0x40000000

    if-eq v2, v1, :cond_0

    .line 300
    iget v1, p0, Lcom/dolphin/browser/ui/view/LabelView;->d:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    .line 302
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2

    .line 304
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->requestLayout()V

    .line 135
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->invalidate()V

    .line 136
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/LabelView;->h:Landroid/content/res/ColorStateList;

    .line 165
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/LabelView;->b()V

    .line 166
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/LabelView;->b:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/LabelView;->c:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->c:Ljava/lang/String;

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->requestLayout()V

    .line 124
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->invalidate()V

    .line 125
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/view/LabelView;->e:Z

    .line 174
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/LabelView;->c()V

    .line 175
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->invalidate()V

    .line 176
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->h:Landroid/content/res/ColorStateList;

    .line 144
    iget v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->i:I

    if-eq v0, p1, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/LabelView;->d(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 184
    iput p1, p0, Lcom/dolphin/browser/ui/view/LabelView;->f:I

    .line 185
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/LabelView;->c()V

    .line 186
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->invalidate()V

    .line 187
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->h:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/LabelView;->b()V

    .line 210
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/LabelView;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/LabelView;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/LabelView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/ui/view/LabelView;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/dolphin/browser/ui/view/LabelView;->d:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dolphin/browser/ui/view/LabelView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 321
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 200
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 201
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/LabelView;->c()V

    .line 202
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/LabelView;->e(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/dolphin/browser/ui/view/LabelView;->f(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/view/LabelView;->setMeasuredDimension(II)V

    .line 196
    return-void
.end method
