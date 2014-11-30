.class public Lcom/dolphin/browser/titlebar/HorizontalProgressBar;
.super Landroid/view/View;
.source "HorizontalProgressBar.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/RectF;

.field private k:I

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Lcom/dolphin/browser/titlebar/f;

.field private o:Landroid/os/Handler;

.field private p:J

.field private q:Landroid/view/animation/Interpolator;

.field private r:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    iput v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a:I

    .line 43
    iput v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->b:I

    .line 137
    new-instance v0, Lcom/dolphin/browser/titlebar/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/titlebar/c;-><init>(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->o:Landroid/os/Handler;

    .line 285
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->p:J

    .line 288
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->q:Landroid/view/animation/Interpolator;

    .line 289
    new-instance v0, Lcom/dolphin/browser/titlebar/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/titlebar/d;-><init>(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->r:Landroid/view/animation/Interpolator;

    .line 64
    invoke-direct {p0, p1}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a:I

    .line 43
    iput v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->b:I

    .line 137
    new-instance v0, Lcom/dolphin/browser/titlebar/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/titlebar/c;-><init>(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->o:Landroid/os/Handler;

    .line 285
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->p:J

    .line 288
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->q:Landroid/view/animation/Interpolator;

    .line 289
    new-instance v0, Lcom/dolphin/browser/titlebar/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/titlebar/d;-><init>(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->r:Landroid/view/animation/Interpolator;

    .line 70
    invoke-direct {p0, p1}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a:I

    .line 43
    iput v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->b:I

    .line 137
    new-instance v0, Lcom/dolphin/browser/titlebar/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/titlebar/c;-><init>(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->o:Landroid/os/Handler;

    .line 285
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->p:J

    .line 288
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->q:Landroid/view/animation/Interpolator;

    .line 289
    new-instance v0, Lcom/dolphin/browser/titlebar/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/titlebar/d;-><init>(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->r:Landroid/view/animation/Interpolator;

    .line 76
    invoke-direct {p0, p1}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private a(FFFF)V
    .locals 9

    .prologue
    .line 280
    iget-object v8, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x2

    new-array v5, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->e:I

    aput v2, v5, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->f:I

    aput v2, v5, v1

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 283
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->d:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->i:Landroid/graphics/Path;

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->j:Landroid/graphics/RectF;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->h:I

    .line 94
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->n_()V

    .line 95
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->setSoftwareRendering(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method private a(Landroid/graphics/Canvas;F)V
    .locals 8

    .prologue
    const v1, 0x443b8000

    .line 300
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 301
    iget-wide v4, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->p:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 302
    iput-wide v2, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->p:J

    .line 304
    :cond_0
    iget-wide v4, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->p:J

    .line 305
    sub-long v4, v2, v4

    long-to-float v0, v4

    .line 306
    cmpl-float v4, v0, v1

    if-lez v4, :cond_2

    .line 308
    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->p:J

    move v0, v1

    .line 312
    :cond_1
    iget v2, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->k:I

    .line 313
    iget-object v3, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->m:Landroid/graphics/drawable/Drawable;

    .line 314
    iget-object v4, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->q:Landroid/view/animation/Interpolator;

    div-float v5, v0, v1

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 316
    iget-object v4, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->r:Landroid/view/animation/Interpolator;

    div-float/2addr v0, v1

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x437f0000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 319
    add-float v0, v2, p2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x9

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 321
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 323
    :goto_0
    return-void

    .line 309
    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 8

    .prologue
    const v2, 0x3fcccccd

    const/4 v1, 0x0

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 229
    iget-object v6, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->i:Landroid/graphics/Path;

    .line 230
    int-to-float v0, p3

    invoke-direct {p0, v6, p2, v0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a(Landroid/graphics/Path;IF)V

    .line 233
    iget v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->k:I

    sub-int v7, p2, v0

    .line 234
    int-to-float v0, v7

    int-to-float v3, p2

    invoke-direct {p0, v0, v1, v3, v1}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a(FFFF)V

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 240
    if-lez v7, :cond_0

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    iget v3, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->e:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    int-to-float v3, v7

    int-to-float v0, p3

    sub-float v4, v0, v2

    iget-object v5, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 250
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 253
    int-to-float v0, v7

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a(Landroid/graphics/Canvas;F)V

    .line 254
    return-void
.end method

.method private a(Landroid/graphics/Path;IF)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000

    const/high16 v7, 0x3f800000

    .line 258
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->j:Landroid/graphics/RectF;

    .line 259
    iget v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->k:I

    .line 260
    iget v2, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->l:I

    .line 262
    sub-int v0, p2, v0

    .line 263
    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 265
    :cond_0
    int-to-float v3, p2

    const/high16 v4, 0x40000000

    div-float v4, p3, v4

    sub-float/2addr v3, v4

    .line 266
    int-to-float v4, p2

    sub-float/2addr v4, p3

    int-to-float v5, p2

    sub-float v6, p3, v8

    invoke-virtual {v1, v4, v8, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 269
    int-to-float v4, v0

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 270
    sub-int v4, p2, v2

    int-to-float v4, v4

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 271
    invoke-virtual {p1, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    const/high16 v3, -0x3d4c0000

    const/high16 v4, 0x43340000

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 273
    sub-int v1, p2, v2

    int-to-float v1, v1

    sub-float v2, p3, v7

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 274
    int-to-float v1, v0

    sub-float v2, p3, v7

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 275
    int-to-float v0, v0

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 276
    return-void
.end method

.method private a(Lcom/dolphin/browser/core/ITab;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 162
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Lcom/dolphin/browser/core/ITab;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->isLoadingReceivedError()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->isOpeningInNewTab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->n:Lcom/dolphin/browser/titlebar/f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->n:Lcom/dolphin/browser/titlebar/f;

    invoke-interface {v1, p1}, Lcom/dolphin/browser/titlebar/f;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a:I

    return v0
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 178
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v2

    .line 179
    if-nez v2, :cond_0

    .line 190
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-virtual {v2}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    .line 184
    invoke-direct {p0, v2}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a(Lcom/dolphin/browser/core/ITab;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 185
    iput v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a:I

    move v0, v1

    .line 186
    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->n:Lcom/dolphin/browser/titlebar/f;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/titlebar/f;->a(Ljava/lang/Object;)F

    move-result v0

    const/high16 v2, 0x42c80000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a:I

    move v0, v1

    .line 190
    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->b:I

    .line 123
    return-void
.end method

.method public a(Lcom/dolphin/browser/titlebar/f;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->n:Lcom/dolphin/browser/titlebar/f;

    .line 113
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 135
    :cond_0
    return-void
.end method

.method public n_()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->e:I

    .line 102
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->f:I

    .line 103
    iget v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->e:I

    iput v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->g:I

    .line 104
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020240

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    iput-object v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->m:Landroid/graphics/drawable/Drawable;

    .line 108
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->b()Z

    .line 214
    iget v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_2

    .line 215
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->setVisibility(I)V

    .line 217
    :cond_2
    iget v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a:I

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x2710

    .line 219
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->getHeight()I

    move-result v1

    .line 220
    invoke-direct {p0, p1, v0, v1}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a(Landroid/graphics/Canvas;II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->resolveSize(II)I

    move-result v0

    .line 204
    iget v1, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->setMeasuredDimension(II)V

    .line 205
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 196
    div-int/lit8 v0, p1, 0x4

    iput v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->k:I

    .line 197
    iget v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->k:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->l:I

    .line 198
    return-void
.end method
