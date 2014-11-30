.class public Lcom/dolphin/browser/gesture/GestureView;
.super Landroid/view/View;
.source "GestureView.java"


# instance fields
.field protected a:Lcom/dolphin/browser/gesture/Gesture;

.field protected b:Landroid/graphics/Path;

.field protected final c:Landroid/graphics/Paint;

.field protected d:J

.field protected e:Z

.field private f:Landroid/graphics/Matrix;

.field private g:Landroid/graphics/RectF;

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private n:I

.field private o:I

.field private p:Lcom/dolphin/browser/gesture/y;

.field private q:I

.field private r:F

.field private s:Landroid/graphics/PointF;

.field private t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 190
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->b:Landroid/graphics/Path;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->f:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->c:Landroid/graphics/Paint;

    .line 30
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureView;->d:J

    .line 33
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureView;->k:Z

    .line 34
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureView;->l:Z

    .line 35
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureView;->m:J

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureView;->n:I

    .line 37
    iput v2, p0, Lcom/dolphin/browser/gesture/GestureView;->o:I

    .line 38
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureView;->e:Z

    .line 40
    const/16 v0, -0x100

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureView;->q:I

    .line 41
    const/high16 v0, 0x40400000

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureView;->r:F

    .line 398
    new-instance v0, Lcom/dolphin/browser/gesture/x;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/x;-><init>(Lcom/dolphin/browser/gesture/GestureView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->t:Ljava/lang/Runnable;

    .line 191
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureView;->b()V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->b:Landroid/graphics/Path;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->f:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->c:Landroid/graphics/Paint;

    .line 30
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureView;->d:J

    .line 33
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureView;->k:Z

    .line 34
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureView;->l:Z

    .line 35
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureView;->m:J

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureView;->n:I

    .line 37
    iput v2, p0, Lcom/dolphin/browser/gesture/GestureView;->o:I

    .line 38
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureView;->e:Z

    .line 40
    const/16 v0, -0x100

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureView;->q:I

    .line 41
    const/high16 v0, 0x40400000

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureView;->r:F

    .line 398
    new-instance v0, Lcom/dolphin/browser/gesture/x;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/x;-><init>(Lcom/dolphin/browser/gesture/GestureView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->t:Ljava/lang/Runnable;

    .line 200
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureView;->b()V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 209
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->b:Landroid/graphics/Path;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->f:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->c:Landroid/graphics/Paint;

    .line 30
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureView;->d:J

    .line 33
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureView;->k:Z

    .line 34
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureView;->l:Z

    .line 35
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureView;->m:J

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureView;->n:I

    .line 37
    iput v2, p0, Lcom/dolphin/browser/gesture/GestureView;->o:I

    .line 38
    iput-boolean v2, p0, Lcom/dolphin/browser/gesture/GestureView;->e:Z

    .line 40
    const/16 v0, -0x100

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureView;->q:I

    .line 41
    const/high16 v0, 0x40400000

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureView;->r:F

    .line 398
    new-instance v0, Lcom/dolphin/browser/gesture/x;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/x;-><init>(Lcom/dolphin/browser/gesture/GestureView;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->t:Ljava/lang/Runnable;

    .line 210
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureView;->b()V

    .line 211
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/GestureView;->setWillNotDraw(Z)V

    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->c:Landroid/graphics/Paint;

    .line 217
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 219
    iget v1, p0, Lcom/dolphin/browser/gesture/GestureView;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 222
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 223
    iget v1, p0, Lcom/dolphin/browser/gesture/GestureView;->r:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 224
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->setSoftwareRendering(Landroid/view/View;)V

    .line 226
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->s:Landroid/graphics/PointF;

    .line 227
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->i:Z

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_1

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 288
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/dolphin/browser/gesture/GestureView;->h:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 289
    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureView;->h:J

    .line 291
    :cond_0
    iget-wide v2, p0, Lcom/dolphin/browser/gesture/GestureView;->h:J

    sub-long/2addr v0, v2

    .line 292
    iget-wide v2, p0, Lcom/dolphin/browser/gesture/GestureView;->d:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 293
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/gesture/GestureView;->a(J)V

    .line 297
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureView;->b:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 301
    :cond_1
    return-void

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->onAnimationEnd()V

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->i()V

    .line 312
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureView;->b:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/dolphin/browser/gesture/GestureView;->s:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v3}, Lcom/dolphin/browser/gesture/Gesture;->g()I

    move-result v3

    iget-boolean v4, p0, Lcom/dolphin/browser/gesture/GestureView;->e:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/Gesture;->a(Landroid/graphics/Path;Landroid/graphics/PointF;IZ)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->b:Landroid/graphics/Path;

    .line 315
    :cond_0
    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->k:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget v1, p0, Lcom/dolphin/browser/gesture/GestureView;->n:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dolphin/browser/gesture/GestureView;->o:I

    iget v1, p0, Lcom/dolphin/browser/gesture/GestureView;->n:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->j:Z

    .line 395
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->t:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/dolphin/browser/gesture/GestureView;->m:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/gesture/GestureView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 257
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->i:Z

    if-nez v0, :cond_1

    .line 258
    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureView;->i:Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->j:Z

    .line 260
    iput v1, p0, Lcom/dolphin/browser/gesture/GestureView;->o:I

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureView;->h:J

    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->p:Lcom/dolphin/browser/gesture/y;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->p:Lcom/dolphin/browser/gesture/y;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/gesture/y;->a(Lcom/dolphin/browser/gesture/GestureView;)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->invalidate()V

    .line 267
    :cond_1
    return-void
.end method

.method protected a(F)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method protected a(J)V
    .locals 5

    .prologue
    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/Gesture;->g()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lcom/dolphin/browser/gesture/GestureView;->d:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 306
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->i()V

    .line 307
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    iget-object v2, p0, Lcom/dolphin/browser/gesture/GestureView;->b:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/dolphin/browser/gesture/GestureView;->s:Landroid/graphics/PointF;

    iget-boolean v4, p0, Lcom/dolphin/browser/gesture/GestureView;->e:Z

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/dolphin/browser/gesture/Gesture;->a(Landroid/graphics/Path;Landroid/graphics/PointF;IZ)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->b:Landroid/graphics/Path;

    .line 308
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public a(Lcom/dolphin/browser/gesture/Gesture;)V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/gesture/GestureView;->a(Lcom/dolphin/browser/gesture/Gesture;Z)V

    .line 231
    return-void
.end method

.method public a(Lcom/dolphin/browser/gesture/Gesture;Z)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    if-eq v0, p1, :cond_0

    .line 235
    iput-object p1, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    .line 236
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->e()V

    .line 237
    if-eqz p2, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->a()V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureView;->d()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/gesture/y;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/dolphin/browser/gesture/GestureView;->p:Lcom/dolphin/browser/gesture/y;

    .line 84
    return-void
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 157
    iput p1, p0, Lcom/dolphin/browser/gesture/GestureView;->r:F

    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->invalidate()V

    .line 160
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 137
    iput p1, p0, Lcom/dolphin/browser/gesture/GestureView;->q:I

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->invalidate()V

    .line 140
    return-void
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/dolphin/browser/gesture/GestureView;->m:J

    .line 61
    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 78
    iput p1, p0, Lcom/dolphin/browser/gesture/GestureView;->n:I

    .line 79
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->k:Z

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/Gesture;->g()I

    move-result v0

    mul-int/lit8 v0, v0, 0x19

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureView;->d:J

    .line 249
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->l:Z

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->i:Z

    if-eqz v0, :cond_1

    .line 271
    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureView;->i:Z

    .line 272
    iput-boolean v1, p0, Lcom/dolphin/browser/gesture/GestureView;->j:Z

    .line 273
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->p:Lcom/dolphin/browser/gesture/y;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->p:Lcom/dolphin/browser/gesture/y;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/gesture/y;->b(Lcom/dolphin/browser/gesture/GestureView;)V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->invalidate()V

    .line 278
    :cond_1
    return-void
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 319
    return-void
.end method

.method protected j()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->s:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->j:Z

    .line 409
    iget v0, p0, Lcom/dolphin/browser/gesture/GestureView;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/gesture/GestureView;->o:I

    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->p:Lcom/dolphin/browser/gesture/y;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->p:Lcom/dolphin/browser/gesture/y;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/gesture/y;->c(Lcom/dolphin/browser/gesture/GestureView;)V

    .line 413
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/GestureView;->h:J

    .line 414
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureView;->d()V

    .line 382
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureView;->l()V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->h()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 331
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->l:Z

    if-eqz v0, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureView;->c()V

    .line 337
    :goto_0
    new-instance v2, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->b:Landroid/graphics/Path;

    invoke-direct {v2, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 338
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 339
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->a:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/Gesture;->d()Landroid/graphics/RectF;

    move-result-object v3

    .line 340
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getPaddingLeft()I

    move-result v0

    .line 341
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getPaddingTop()I

    move-result v1

    .line 342
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getWidth()I

    move-result v4

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 343
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getHeight()I

    move-result v4

    sub-int v1, v4, v1

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getPaddingBottom()I

    move-result v4

    sub-int v4, v1, v4

    .line 344
    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v0, v1

    .line 345
    int-to-float v0, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v0, v4

    .line 346
    cmpl-float v4, v1, v0

    if-lez v4, :cond_2

    .line 347
    :goto_1
    iget v1, p0, Lcom/dolphin/browser/gesture/GestureView;->r:F

    div-float v0, v1, v0

    .line 348
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 349
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/GestureView;->a(F)V

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->f:Landroid/graphics/Matrix;

    .line 352
    iget-object v1, p0, Lcom/dolphin/browser/gesture/GestureView;->g:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, v1, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 353
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 354
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/GestureView;->a(Landroid/graphics/Canvas;)V

    .line 355
    iget-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/GestureView;->b(Landroid/graphics/Canvas;)V

    .line 357
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 359
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->i:Z

    if-eqz v0, :cond_0

    .line 360
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/GestureView;->j:Z

    if-nez v0, :cond_0

    .line 361
    const-wide/16 v0, 0x19

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/gesture/GestureView;->postInvalidateDelayed(J)V

    .line 365
    :cond_0
    return-void

    .line 334
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/GestureView;->d()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 346
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 323
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 324
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/GestureView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/GestureView;->g:Landroid/graphics/RectF;

    .line 326
    return-void
.end method
