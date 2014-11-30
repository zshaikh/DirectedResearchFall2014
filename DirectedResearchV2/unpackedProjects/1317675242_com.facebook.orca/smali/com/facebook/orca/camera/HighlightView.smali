.class Lcom/facebook/orca/camera/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# instance fields
.field a:Landroid/view/View;

.field b:Z

.field c:Z

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/RectF;

.field f:Landroid/graphics/Matrix;

.field private g:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

.field private h:Landroid/graphics/RectF;

.field private i:Z

.field private j:F

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Paint;

.field private final q:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    sget-object v0, Lcom/facebook/orca/camera/HighlightView$ModifyMode;->None:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->g:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

    .line 400
    iput-boolean v1, p0, Lcom/facebook/orca/camera/HighlightView;->i:Z

    .line 402
    iput-boolean v1, p0, Lcom/facebook/orca/camera/HighlightView;->k:Z

    .line 408
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->o:Landroid/graphics/Paint;

    .line 409
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->p:Landroid/graphics/Paint;

    .line 410
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->q:Landroid/graphics/Paint;

    .line 48
    iput-object p1, p0, Lcom/facebook/orca/camera/HighlightView;->a:Landroid/view/View;

    .line 49
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 55
    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    .line 57
    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    .line 59
    return-void
.end method

.method private e()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 355
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 357
    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 358
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method


# virtual methods
.method public a(FF)I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v5, 0x41a00000

    .line 179
    invoke-direct {p0}, Lcom/facebook/orca/camera/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v0

    .line 183
    iget-boolean v1, p0, Lcom/facebook/orca/camera/HighlightView;->k:Z

    if-eqz v1, :cond_5

    .line 184
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    .line 185
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    .line 186
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 188
    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 189
    sub-int v4, v2, v3

    .line 190
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 191
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 192
    cmpg-float v0, v0, v7

    if-gez v0, :cond_0

    .line 193
    const/16 v0, 0x8

    .line 236
    :goto_0
    return v0

    .line 195
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 198
    :cond_1
    cmpg-float v0, v1, v7

    if-gez v0, :cond_2

    .line 199
    const/4 v0, 0x2

    goto :goto_0

    .line 201
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 204
    :cond_3
    if-ge v2, v3, :cond_4

    move v0, v8

    .line 205
    goto :goto_0

    :cond_4
    move v0, v6

    .line 207
    goto :goto_0

    .line 212
    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, v5

    cmpg-float v1, p2, v1

    if-gez v1, :cond_8

    move v1, v6

    .line 214
    :goto_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v2, v5

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_9

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v5

    cmpg-float v2, p1, v2

    if-gez v2, :cond_9

    move v2, v6

    .line 218
    :goto_2
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_c

    if-eqz v1, :cond_c

    .line 219
    or-int/lit8 v3, v6, 0x2

    .line 221
    :goto_3
    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b

    if-eqz v1, :cond_b

    .line 222
    or-int/lit8 v1, v3, 0x4

    .line 224
    :goto_4
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_6

    if-eqz v2, :cond_6

    .line 225
    or-int/lit8 v1, v1, 0x8

    .line 227
    :cond_6
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_7

    if-eqz v2, :cond_7

    .line 228
    or-int/lit8 v1, v1, 0x10

    .line 232
    :cond_7
    if-ne v1, v6, :cond_a

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v8

    .line 233
    goto :goto_0

    :cond_8
    move v1, v3

    .line 212
    goto :goto_1

    :cond_9
    move v2, v3

    .line 214
    goto :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v1, v3

    goto :goto_4

    :cond_c
    move v3, v6

    goto :goto_3
.end method

.method a(IFF)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 242
    invoke-direct {p0}, Lcom/facebook/orca/camera/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v0

    .line 243
    if-ne p1, v5, :cond_0

    .line 264
    :goto_0
    return-void

    .line 245
    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    mul-float/2addr v0, p3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/camera/HighlightView;->b(FF)V

    goto :goto_0

    .line 250
    :cond_1
    and-int/lit8 v1, p1, 0x6

    if-nez v1, :cond_5

    move v1, v3

    .line 254
    :goto_1
    and-int/lit8 v2, p1, 0x18

    if-nez v2, :cond_4

    move v2, v3

    .line 259
    :goto_2
    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    .line 260
    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    mul-float/2addr v0, v2

    .line 261
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_2

    move v2, v6

    :goto_3
    int-to-float v2, v2

    mul-float/2addr v1, v2

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    move v2, v6

    :goto_4
    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/camera/HighlightView;->c(FF)V

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_3

    :cond_3
    move v2, v5

    goto :goto_4

    :cond_4
    move v2, p3

    goto :goto_2

    :cond_5
    move v1, p2

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/high16 v6, 0x40000000

    .line 77
    iget-boolean v0, p0, Lcom/facebook/orca/camera/HighlightView;->c:Z

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/facebook/orca/camera/HighlightView;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->q:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 86
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 87
    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 88
    iget-boolean v2, p0, Lcom/facebook/orca/camera/HighlightView;->k:Z

    if-eqz v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 90
    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 91
    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v5, v2, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    div-float/2addr v2, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v3, v2, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 95
    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->q:Landroid/graphics/Paint;

    const v3, -0x10fb2a

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    :goto_1
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 101
    invoke-virtual {p0}, Lcom/facebook/orca/camera/HighlightView;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->o:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 105
    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->g:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

    sget-object v1, Lcom/facebook/orca/camera/HighlightView$ModifyMode;->Grow:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

    if-ne v0, v1, :cond_0

    .line 108
    iget-boolean v0, p0, Lcom/facebook/orca/camera/HighlightView;->k:Z

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 112
    const-wide v2, 0x3fe921fb54442d18L

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 114
    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    .line 116
    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    .line 118
    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 97
    :cond_3
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 98
    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->q:Landroid/graphics/Paint;

    const/16 v3, -0x7600

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 101
    :cond_4
    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->p:Landroid/graphics/Paint;

    goto/16 :goto_2

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    .line 124
    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    .line 125
    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x4

    .line 126
    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x3

    .line 128
    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 130
    iget-object v5, p0, Lcom/facebook/orca/camera/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 132
    iget-object v6, p0, Lcom/facebook/orca/camera/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 134
    iget-object v7, p0, Lcom/facebook/orca/camera/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 137
    iget-object v8, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 139
    iget-object v9, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 142
    iget-object v10, p0, Lcom/facebook/orca/camera/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    sub-int v11, v0, v4

    sub-int v12, v9, v5

    add-int/2addr v0, v4

    add-int v13, v9, v5

    invoke-virtual {v10, v11, v12, v0, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    sub-int v10, v1, v4

    sub-int v11, v9, v5

    add-int/2addr v1, v4

    add-int v4, v9, v5

    invoke-virtual {v0, v10, v11, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v4, v2, v6

    add-int v5, v8, v7

    add-int/2addr v2, v6

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v2, v3, v6

    add-int v4, v8, v7

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 5

    .prologue
    const/16 v4, 0x7d

    const/4 v3, 0x1

    const/16 v2, 0x32

    .line 368
    if-eqz p4, :cond_0

    move v0, v3

    .line 371
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->f:Landroid/graphics/Matrix;

    .line 373
    iput-object p3, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    .line 374
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    .line 375
    iput-boolean v0, p0, Lcom/facebook/orca/camera/HighlightView;->i:Z

    .line 376
    iput-boolean p4, p0, Lcom/facebook/orca/camera/HighlightView;->k:Z

    .line 378
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/camera/HighlightView;->j:F

    .line 379
    invoke-direct {p0}, Lcom/facebook/orca/camera/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    .line 381
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 382
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 383
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->q:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 384
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 385
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 387
    sget-object v0, Lcom/facebook/orca/camera/HighlightView$ModifyMode;->None:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->g:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

    .line 388
    invoke-direct {p0}, Lcom/facebook/orca/camera/HighlightView;->d()V

    .line 389
    return-void

    :cond_0
    move v0, p5

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/camera/HighlightView$ModifyMode;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->g:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 172
    iput-object p1, p0, Lcom/facebook/orca/camera/HighlightView;->g:Lcom/facebook/orca/camera/HighlightView$ModifyMode;

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 175
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/facebook/orca/camera/HighlightView;->b:Z

    .line 70
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/facebook/orca/camera/HighlightView;->b:Z

    return v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 349
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method b(FF)V
    .locals 7

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 268
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 270
    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 273
    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 277
    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 281
    invoke-direct {p0}, Lcom/facebook/orca/camera/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    .line 282
    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 283
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 284
    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 285
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/facebook/orca/camera/HighlightView;->c:Z

    .line 74
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/facebook/orca/camera/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    .line 364
    return-void
.end method

.method c(FF)V
    .locals 8

    .prologue
    const/high16 v7, 0x41c80000

    const/high16 v6, 0x40000000

    const/4 v5, 0x0

    .line 289
    iget-boolean v0, p0, Lcom/facebook/orca/camera/HighlightView;->i:Z

    if-eqz v0, :cond_a

    .line 290
    cmpl-float v0, p1, v5

    if-eqz v0, :cond_6

    .line 291
    iget v0, p0, Lcom/facebook/orca/camera/HighlightView;->j:F

    div-float v0, p1, v0

    move v1, p1

    .line 300
    :goto_0
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 301
    cmpl-float v3, v1, v5

    if-lez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v4, v6, v1

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 302
    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    .line 304
    iget-boolean v3, p0, Lcom/facebook/orca/camera/HighlightView;->i:Z

    if-eqz v3, :cond_0

    .line 305
    iget v0, p0, Lcom/facebook/orca/camera/HighlightView;->j:F

    div-float v0, v1, v0

    .line 308
    :cond_0
    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v4, v6, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    .line 311
    iget-boolean v3, p0, Lcom/facebook/orca/camera/HighlightView;->i:Z

    if-eqz v3, :cond_1

    .line 312
    iget v1, p0, Lcom/facebook/orca/camera/HighlightView;->j:F

    mul-float/2addr v1, v0

    .line 316
    :cond_1
    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 320
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_2

    .line 321
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v0, v7, v0

    neg-float v0, v0

    div-float/2addr v0, v6

    invoke-virtual {v2, v0, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 323
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/orca/camera/HighlightView;->i:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/facebook/orca/camera/HighlightView;->j:F

    div-float v0, v7, v0

    .line 326
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    .line 327
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v6

    invoke-virtual {v2, v5, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 331
    :cond_3
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 332
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v0, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 336
    :cond_4
    :goto_2
    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 337
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v5, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 342
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 343
    invoke-direct {p0}, Lcom/facebook/orca/camera/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->d:Landroid/graphics/Rect;

    .line 344
    iget-object v0, p0, Lcom/facebook/orca/camera/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 345
    return-void

    .line 292
    :cond_6
    cmpl-float v0, p2, v5

    if-eqz v0, :cond_a

    .line 293
    iget v0, p0, Lcom/facebook/orca/camera/HighlightView;->j:F

    mul-float/2addr v0, p2

    move v1, v0

    move v0, p2

    goto/16 :goto_0

    :cond_7
    move v0, v7

    .line 323
    goto :goto_1

    .line 333
    :cond_8
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 334
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v2, v0, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_2

    .line 338
    :cond_9
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 339
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/facebook/orca/camera/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v2, v5, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_3

    :cond_a
    move v0, p2

    move v1, p1

    goto/16 :goto_0
.end method
