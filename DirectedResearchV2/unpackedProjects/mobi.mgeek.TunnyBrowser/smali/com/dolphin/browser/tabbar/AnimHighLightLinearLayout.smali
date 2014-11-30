.class public Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;
.super Lcom/dolphin/browser/tabbar/HighLightLinearLayout;
.source "AnimHighLightLinearLayout.java"


# instance fields
.field private a:Lcom/dolphin/browser/tabbar/c;

.field private b:Landroid/view/animation/Transformation;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Bitmap;

.field private l:F

.field private m:I

.field private n:Landroid/view/animation/Animation$AnimationListener;

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->c:I

    .line 32
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->d:I

    .line 33
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->e:I

    .line 34
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->f:I

    .line 35
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->g:I

    .line 36
    iput-boolean v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->h:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->i:I

    .line 39
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->j:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->k:Landroid/graphics/Bitmap;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->l:F

    .line 60
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->m:I

    .line 280
    new-instance v0, Lcom/dolphin/browser/tabbar/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tabbar/a;-><init>(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->n:Landroid/view/animation/Animation$AnimationListener;

    .line 299
    new-instance v0, Lcom/dolphin/browser/tabbar/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tabbar/b;-><init>(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->o:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->b:Landroid/view/animation/Transformation;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->c:I

    .line 32
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->d:I

    .line 33
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->e:I

    .line 34
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->f:I

    .line 35
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->g:I

    .line 36
    iput-boolean v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->h:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->i:I

    .line 39
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->j:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->k:Landroid/graphics/Bitmap;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->l:F

    .line 60
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->m:I

    .line 280
    new-instance v0, Lcom/dolphin/browser/tabbar/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tabbar/a;-><init>(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->n:Landroid/view/animation/Animation$AnimationListener;

    .line 299
    new-instance v0, Lcom/dolphin/browser/tabbar/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tabbar/b;-><init>(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->o:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->b:Landroid/view/animation/Transformation;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;Lcom/dolphin/browser/tabbar/c;)Lcom/dolphin/browser/tabbar/c;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->b:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->k:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->l:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->m:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 139
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;JIFI)Z
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    .line 258
    if-ge p5, p7, :cond_0

    .line 259
    iget v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->e:I

    int-to-float v0, v0

    sub-float/2addr v1, p6

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 265
    :goto_0
    return v0

    .line 262
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->f:I

    int-to-float v0, v0

    sub-float/2addr v1, p6

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;)Lcom/dolphin/browser/tabbar/c;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    return-object v0
.end method

.method private b(Lcom/dolphin/browser/tabbar/c;)Z
    .locals 1

    .prologue
    .line 143
    invoke-static {p1}, Lcom/dolphin/browser/tabbar/c;->a(Lcom/dolphin/browser/tabbar/c;)I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->c(Lcom/dolphin/browser/tabbar/c;)Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->d(Lcom/dolphin/browser/tabbar/c;)Z

    move-result v0

    goto :goto_0
.end method

.method private c(Lcom/dolphin/browser/tabbar/c;)Z
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->c()I

    move-result v0

    .line 156
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    .line 159
    :cond_0
    iget v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->c:I

    invoke-static {p1}, Lcom/dolphin/browser/tabbar/c;->b(Lcom/dolphin/browser/tabbar/c;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 160
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->g:I

    .line 161
    neg-int v1, v1

    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->e:I

    .line 162
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->c:I

    sub-int/2addr v1, v2

    .line 163
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 164
    iget v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->f:I

    .line 165
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->d:I

    .line 191
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->c:I

    .line 192
    return-void
.end method

.method private d(Lcom/dolphin/browser/tabbar/c;)Z
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->c()I

    move-result v0

    .line 175
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getChildCount()I

    move-result v1

    .line 176
    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    .line 179
    :cond_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->j:I

    add-int/2addr v0, v1

    .line 180
    iget v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->c:I

    invoke-static {p1}, Lcom/dolphin/browser/tabbar/c;->b(Lcom/dolphin/browser/tabbar/c;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 181
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->g:I

    .line 182
    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->e:I

    .line 183
    add-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->f:I

    .line 184
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getChildCount()I

    move-result v2

    move v0, v1

    .line 197
    :goto_0
    if-ge v0, v2, :cond_1

    .line 198
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    :goto_1
    return v0

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 202
    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->j:I

    .line 44
    return-void
.end method

.method public a(Lcom/dolphin/browser/tabbar/c;)V
    .locals 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/c;->d(Lcom/dolphin/browser/tabbar/c;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->n:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 272
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/tabbar/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->addView(Landroid/view/View;)V

    .line 278
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 68
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    :cond_2
    iput-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->k:Landroid/graphics/Bitmap;

    .line 73
    :cond_3
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->k:Landroid/graphics/Bitmap;

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->l:F

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->m:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 98
    .line 99
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/dolphin/browser/tabbar/j;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    iget-boolean v2, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->h:Z

    if-nez v2, :cond_4

    .line 102
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->d()V

    .line 103
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->b(Lcom/dolphin/browser/tabbar/c;)Z

    move-result v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    iput-boolean v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->h:Z

    move v0, v1

    .line 111
    :goto_0
    iget-boolean v2, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->h:Z

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    invoke-virtual {v2}, Lcom/dolphin/browser/tabbar/c;->b()V

    .line 113
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getDrawingTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->b:Landroid/view/animation/Transformation;

    invoke-virtual {v2, v3, v4, v5}, Lcom/dolphin/browser/tabbar/c;->a(JLandroid/view/animation/Transformation;)Landroid/view/animation/Transformation;

    .line 115
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    invoke-static {v2}, Lcom/dolphin/browser/tabbar/c;->a(Lcom/dolphin/browser/tabbar/c;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a(Landroid/graphics/Canvas;)V

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->e()I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->i:I

    .line 121
    :cond_1
    invoke-super {p0, p1}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 122
    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->invalidate()V

    .line 125
    :cond_2
    return-void

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a:Lcom/dolphin/browser/tabbar/c;

    .line 210
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/dolphin/browser/tabbar/j;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 211
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_3

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 213
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 214
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->b:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    .line 215
    invoke-static {v1}, Lcom/dolphin/browser/tabbar/c;->c(Lcom/dolphin/browser/tabbar/c;)I

    move-result v7

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 217
    invoke-virtual {v1}, Lcom/dolphin/browser/tabbar/c;->a()I

    move-result v0

    if-nez v0, :cond_2

    .line 221
    iget v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->i:I

    if-ge v5, v0, :cond_0

    .line 222
    iget v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->g:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 223
    iget v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->e:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 229
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 235
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 242
    :goto_2
    return v0

    .line 224
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->i:I

    if-ne v5, v0, :cond_1

    .line 225
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000

    sub-float/2addr v1, v6

    mul-float/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 227
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->g:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 232
    invoke-direct/range {v0 .. v7}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->a(Landroid/graphics/Canvas;Landroid/view/View;JIFI)Z

    move-result v0

    goto :goto_1

    .line 237
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_2

    .line 240
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->onMeasure(II)V

    .line 89
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 90
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getMeasuredWidth()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/tabbar/AnimHighLightLinearLayout;->setMeasuredDimension(II)V

    .line 93
    :cond_0
    return-void
.end method
