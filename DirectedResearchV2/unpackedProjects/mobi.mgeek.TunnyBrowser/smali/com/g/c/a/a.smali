.class public final Lcom/g/c/a/a;
.super Landroid/view/animation/Animation;
.source "AnimatorProxy.java"


# static fields
.field public static final a:Z

.field private static final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/g/c/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/graphics/Camera;

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/RectF;

.field private final r:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/c/a/a;->a:Z

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/g/c/a/a;->b:Ljava/util/WeakHashMap;

    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000

    .line 97
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 79
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/g/c/a/a;->d:Landroid/graphics/Camera;

    .line 82
    iput v1, p0, Lcom/g/c/a/a;->f:F

    .line 88
    iput v1, p0, Lcom/g/c/a/a;->l:F

    .line 89
    iput v1, p0, Lcom/g/c/a/a;->m:F

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/g/c/a/a;->p:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/g/c/a/a;->q:Landroid/graphics/RectF;

    .line 95
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/g/c/a/a;->r:Landroid/graphics/Matrix;

    .line 98
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/g/c/a/a;->setDuration(J)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/g/c/a/a;->setFillAfter(Z)V

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 101
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    .line 102
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/g/c/a/a;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/g/c/a/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/c/a/a;

    .line 39
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 40
    :cond_0
    new-instance v0, Lcom/g/c/a/a;

    invoke-direct {v0, p0}, Lcom/g/c/a/a;-><init>(Landroid/view/View;)V

    .line 41
    sget-object v1, Lcom/g/c/a/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    return-object v0
.end method

.method private a(Landroid/graphics/Matrix;Landroid/view/View;)V
    .locals 10

    .prologue
    const/high16 v5, 0x40000000

    const/high16 v9, 0x3f800000

    const/4 v8, 0x0

    .line 329
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    .line 330
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 331
    iget-boolean v4, p0, Lcom/g/c/a/a;->e:Z

    .line 332
    if-eqz v4, :cond_4

    iget v0, p0, Lcom/g/c/a/a;->g:F

    move v1, v0

    .line 333
    :goto_0
    if-eqz v4, :cond_5

    iget v0, p0, Lcom/g/c/a/a;->h:F

    .line 335
    :goto_1
    iget v4, p0, Lcom/g/c/a/a;->i:F

    .line 336
    iget v5, p0, Lcom/g/c/a/a;->j:F

    .line 337
    iget v6, p0, Lcom/g/c/a/a;->k:F

    .line 338
    cmpl-float v7, v4, v8

    if-nez v7, :cond_0

    cmpl-float v7, v5, v8

    if-nez v7, :cond_0

    cmpl-float v7, v6, v8

    if-eqz v7, :cond_1

    .line 339
    :cond_0
    iget-object v7, p0, Lcom/g/c/a/a;->d:Landroid/graphics/Camera;

    .line 340
    invoke-virtual {v7}, Landroid/graphics/Camera;->save()V

    .line 341
    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 342
    invoke-virtual {v7, v5}, Landroid/graphics/Camera;->rotateY(F)V

    .line 343
    neg-float v4, v6

    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 344
    invoke-virtual {v7, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 345
    invoke-virtual {v7}, Landroid/graphics/Camera;->restore()V

    .line 346
    neg-float v4, v1

    neg-float v5, v0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 347
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 350
    :cond_1
    iget v4, p0, Lcom/g/c/a/a;->l:F

    .line 351
    iget v5, p0, Lcom/g/c/a/a;->m:F

    .line 352
    cmpl-float v6, v4, v9

    if-nez v6, :cond_2

    cmpl-float v6, v5, v9

    if-eqz v6, :cond_3

    .line 353
    :cond_2
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 354
    div-float/2addr v1, v2

    neg-float v1, v1

    mul-float/2addr v4, v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    .line 355
    div-float/2addr v0, v3

    neg-float v0, v0

    mul-float v2, v5, v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    .line 356
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 359
    :cond_3
    iget v0, p0, Lcom/g/c/a/a;->n:F

    iget v1, p0, Lcom/g/c/a/a;->o:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 360
    return-void

    .line 332
    :cond_4
    div-float v0, v2, v5

    move v1, v0

    goto :goto_0

    .line 333
    :cond_5
    div-float v0, v3, v5

    goto :goto_1
.end method

.method private a(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 303
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 306
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 308
    iget-object v0, p0, Lcom/g/c/a/a;->r:Landroid/graphics/Matrix;

    .line 309
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 310
    invoke-direct {p0, v0, p2}, Lcom/g/c/a/a;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 311
    iget-object v0, p0, Lcom/g/c/a/a;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 313
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 316
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 317
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 318
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 319
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 321
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 322
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 323
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 324
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 326
    :cond_1
    return-void
.end method

.method public static b(Landroid/view/View;)Lcom/g/c/a/a;
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    instance-of v1, v1, Lcom/g/c/a/a;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/g/c/a/a;

    .line 61
    :cond_0
    if-nez v0, :cond_1

    .line 62
    new-instance v0, Lcom/g/c/a/a;

    invoke-direct {v0, p0}, Lcom/g/c/a/a;-><init>(Landroid/view/View;)V

    .line 63
    invoke-virtual {v0}, Lcom/g/c/a/a;->a()V

    .line 65
    :cond_1
    return-object v0
.end method

.method public static c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/g/c/a/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcom/g/c/a/a;

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 76
    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 279
    if-eqz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/g/c/a/a;->p:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/g/c/a/a;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 282
    :cond_0
    return-void
.end method

.method private r()V
    .locals 7

    .prologue
    .line 284
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 285
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/g/c/a/a;->q:Landroid/graphics/RectF;

    .line 290
    invoke-direct {p0, v1, v0}, Lcom/g/c/a/a;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 291
    iget-object v2, p0, Lcom/g/c/a/a;->p:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 116
    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/g/c/a/a;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 123
    iput p1, p0, Lcom/g/c/a/a;->f:F

    .line 124
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 129
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 215
    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 382
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v2, :cond_1

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "location must be an array of two integers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 387
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    .line 389
    :cond_2
    aput v4, p1, v5

    aput v4, p1, v4

    .line 424
    :goto_0
    return-void

    .line 393
    :cond_3
    new-array v1, v2, [F

    .line 394
    const/4 v2, 0x0

    aput v2, v1, v5

    aput v2, v1, v4

    .line 396
    invoke-virtual {p0}, Lcom/g/c/a/a;->p()Landroid/graphics/Matrix;

    move-result-object v2

    .line 397
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_4

    .line 398
    invoke-virtual {p0}, Lcom/g/c/a/a;->p()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 401
    :cond_4
    aget v2, v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v4

    .line 402
    aget v2, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v5

    .line 404
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 405
    :goto_1
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_6

    .line 406
    check-cast v0, Landroid/view/View;

    .line 408
    aget v2, v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aput v2, v1, v4

    .line 409
    aget v2, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aput v2, v1, v5

    .line 411
    invoke-static {v0}, Lcom/g/c/a;->f(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_5

    .line 413
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 416
    :cond_5
    aget v2, v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v4

    .line 417
    aget v2, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v5

    .line 419
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 422
    :cond_6
    aget v0, v1, v4

    add-float/2addr v0, v6

    float-to-int v0, v0

    aput v0, p1, v4

    .line 423
    aget v0, v1, v5

    add-float/2addr v0, v6

    float-to-int v0, v0

    aput v0, p1, v5

    goto :goto_0
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 365
    if-eqz v0, :cond_0

    .line 366
    iget v1, p0, Lcom/g/c/a/a;->f:F

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 367
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/g/c/a/a;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 369
    :cond_0
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/g/c/a/a;->f:F

    return v0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/g/c/a/a;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/g/c/a/a;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/g/c/a/a;->q()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/g/c/a/a;->e:Z

    .line 137
    iput p1, p0, Lcom/g/c/a/a;->g:F

    .line 138
    invoke-direct {p0}, Lcom/g/c/a/a;->r()V

    .line 140
    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 228
    :cond_0
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/g/c/a/a;->g:F

    return v0
.end method

.method public c(F)V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/g/c/a/a;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/g/c/a/a;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/g/c/a/a;->q()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/g/c/a/a;->e:Z

    .line 148
    iput p1, p0, Lcom/g/c/a/a;->h:F

    .line 149
    invoke-direct {p0}, Lcom/g/c/a/a;->r()V

    .line 151
    :cond_1
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/g/c/a/a;->h:F

    return v0
.end method

.method public d(F)V
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/g/c/a/a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/g/c/a/a;->q()V

    .line 158
    iput p1, p0, Lcom/g/c/a/a;->k:F

    .line 159
    invoke-direct {p0}, Lcom/g/c/a/a;->r()V

    .line 161
    :cond_0
    return-void
.end method

.method public e()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/g/c/a/a;->k:F

    return v0
.end method

.method public e(F)V
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/g/c/a/a;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/g/c/a/a;->q()V

    .line 168
    iput p1, p0, Lcom/g/c/a/a;->i:F

    .line 169
    invoke-direct {p0}, Lcom/g/c/a/a;->r()V

    .line 171
    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/g/c/a/a;->i:F

    return v0
.end method

.method public f(F)V
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/g/c/a/a;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/g/c/a/a;->q()V

    .line 179
    iput p1, p0, Lcom/g/c/a/a;->j:F

    .line 180
    invoke-direct {p0}, Lcom/g/c/a/a;->r()V

    .line 182
    :cond_0
    return-void
.end method

.method public g()F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/g/c/a/a;->j:F

    return v0
.end method

.method public g(F)V
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/g/c/a/a;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/g/c/a/a;->q()V

    .line 189
    iput p1, p0, Lcom/g/c/a/a;->l:F

    .line 190
    invoke-direct {p0}, Lcom/g/c/a/a;->r()V

    .line 192
    :cond_0
    return-void
.end method

.method public h()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/g/c/a/a;->l:F

    return v0
.end method

.method public h(F)V
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/g/c/a/a;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/g/c/a/a;->q()V

    .line 199
    iput p1, p0, Lcom/g/c/a/a;->m:F

    .line 200
    invoke-direct {p0}, Lcom/g/c/a/a;->r()V

    .line 202
    :cond_0
    return-void
.end method

.method public i()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/g/c/a/a;->m:F

    return v0
.end method

.method public i(F)V
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/g/c/a/a;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/g/c/a/a;->q()V

    .line 236
    iput p1, p0, Lcom/g/c/a/a;->n:F

    .line 237
    invoke-direct {p0}, Lcom/g/c/a/a;->r()V

    .line 239
    :cond_0
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 205
    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    goto :goto_0
.end method

.method public j(F)V
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/g/c/a/a;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/g/c/a/a;->q()V

    .line 246
    iput p1, p0, Lcom/g/c/a/a;->o:F

    .line 247
    invoke-direct {p0}, Lcom/g/c/a/a;->r()V

    .line 249
    :cond_0
    return-void
.end method

.method public k()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 218
    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method public k(F)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 259
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/g/c/a/a;->i(F)V

    .line 262
    :cond_0
    return-void
.end method

.method public l()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/g/c/a/a;->n:F

    return v0
.end method

.method public l(F)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/g/c/a/a;->j(F)V

    .line 275
    :cond_0
    return-void
.end method

.method public m()F
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/g/c/a/a;->o:F

    return v0
.end method

.method public n()F
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 252
    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/g/c/a/a;->n:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public o()F
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 265
    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/g/c/a/a;->o:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public p()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 372
    iget-object v1, p0, Lcom/g/c/a/a;->r:Landroid/graphics/Matrix;

    .line 373
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 374
    iget-object v0, p0, Lcom/g/c/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0, v1, v0}, Lcom/g/c/a/a;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 378
    :cond_0
    return-object v1
.end method
