.class Ldolphin/webkit/g;
.super Ljava/lang/Object;
.source "BackForwardAnimationController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private a:Ldolphin/webkit/WebViewClassic;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/Timer;

.field private d:Landroid/view/animation/Animation$AnimationListener;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z

.field private l:J

.field private m:J

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:[Landroid/view/animation/Animation;

.field private s:J


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v1, p0, Ldolphin/webkit/g;->e:Z

    .line 48
    iput-boolean v1, p0, Ldolphin/webkit/g;->f:Z

    .line 49
    iput-boolean v1, p0, Ldolphin/webkit/g;->g:Z

    .line 50
    iput-boolean v1, p0, Ldolphin/webkit/g;->h:Z

    .line 52
    iput-boolean v1, p0, Ldolphin/webkit/g;->i:Z

    .line 54
    iput v1, p0, Ldolphin/webkit/g;->j:I

    .line 55
    iput-boolean v1, p0, Ldolphin/webkit/g;->k:Z

    .line 57
    iput-wide v3, p0, Ldolphin/webkit/g;->l:J

    .line 59
    iput-wide v3, p0, Ldolphin/webkit/g;->m:J

    .line 61
    iput-boolean v5, p0, Ldolphin/webkit/g;->n:Z

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/webkit/g;->o:I

    .line 63
    iput v1, p0, Ldolphin/webkit/g;->p:I

    .line 64
    iput v1, p0, Ldolphin/webkit/g;->q:I

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/animation/Animation;

    aput-object v2, v0, v1

    aput-object v2, v0, v5

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    iput-object v0, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    .line 75
    iput-wide v3, p0, Ldolphin/webkit/g;->s:J

    .line 78
    iput-object p1, p0, Ldolphin/webkit/g;->a:Ldolphin/webkit/WebViewClassic;

    .line 79
    invoke-direct {p0}, Ldolphin/webkit/g;->h()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/g;->b:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method private a(Landroid/view/animation/Animation;)Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 240
    :goto_0
    return-object v0

    .line 235
    :cond_0
    iget-boolean v0, p0, Ldolphin/webkit/g;->k:Z

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iget v2, p0, Ldolphin/webkit/g;->j:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    .line 240
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Ldolphin/webkit/g;->a(Landroid/view/animation/Animation;J)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_1
    invoke-direct {p0}, Ldolphin/webkit/g;->k()J

    move-result-wide v0

    goto :goto_1
.end method

.method private a(Landroid/view/animation/Animation;J)Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    .line 248
    :cond_0
    iget-wide v0, p0, Ldolphin/webkit/g;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 252
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Ldolphin/webkit/g;->m:J

    mul-long/2addr v0, v2

    sub-long p2, v0, p2

    .line 255
    iget-wide v0, p0, Ldolphin/webkit/g;->l:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/g;->h:Z

    .line 260
    :cond_1
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    .line 261
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 262
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0
.end method

.method private a(ZZ)Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    invoke-direct {p0, p1, p2}, Ldolphin/webkit/g;->b(ZZ)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic a(Ldolphin/webkit/g;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ldolphin/webkit/g;->a:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method private a(Ldolphin/webkit/WebHistoryItem;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 441
    if-nez p1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v0

    .line 445
    :cond_1
    :try_start_0
    iget-object v1, p0, Ldolphin/webkit/g;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-virtual {p1}, Ldolphin/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 447
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 448
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 451
    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 452
    const-string v3, ""

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    const/4 v0, 0x1

    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    .line 456
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    iget-boolean v0, p0, Ldolphin/webkit/g;->n:Z

    if-ne v0, p1, :cond_1

    iget v0, p0, Ldolphin/webkit/g;->p:I

    if-lez v0, :cond_1

    iget v0, p0, Ldolphin/webkit/g;->q:I

    if-lez v0, :cond_1

    move v1, v2

    .line 332
    :cond_0
    :goto_0
    return v1

    .line 326
    :cond_1
    iput-boolean p1, p0, Ldolphin/webkit/g;->n:Z

    .line 328
    iget-boolean v0, p0, Ldolphin/webkit/g;->n:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 329
    :goto_1
    invoke-direct {p0, v0}, Ldolphin/webkit/g;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 330
    goto :goto_0

    :cond_2
    move v0, v1

    .line 328
    goto :goto_1
.end method

.method private b(ZZ)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 434
    if-eqz p1, :cond_0

    move v2, v1

    .line 435
    :goto_0
    if-eqz p2, :cond_1

    .line 436
    :goto_1
    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    .line 437
    return v0

    :cond_0
    move v2, v0

    .line 434
    goto :goto_0

    :cond_1
    move v0, v1

    .line 435
    goto :goto_1
.end method

.method private b(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Ldolphin/webkit/g;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->j()I

    move-result v0

    .line 424
    iget-object v1, p0, Ldolphin/webkit/g;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->k()I

    move-result v1

    .line 425
    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 427
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 428
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 429
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 431
    :cond_0
    return-void
.end method

.method private b(ZZLandroid/view/animation/Animation;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 405
    if-nez p3, :cond_0

    .line 420
    :goto_0
    return-void

    .line 407
    :cond_0
    const-wide/16 v1, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 408
    invoke-direct {p0, p3}, Ldolphin/webkit/g;->b(Landroid/view/animation/Animation;)V

    .line 409
    iget-object v1, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    invoke-direct {p0, p1, p2}, Ldolphin/webkit/g;->b(ZZ)I

    move-result v2

    aput-object p3, v1, v2

    .line 411
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ldolphin/webkit/g;->s:J

    move v1, v0

    .line 413
    :goto_1
    iget-object v2, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 414
    iget-object v2, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 415
    iget-wide v2, p0, Ldolphin/webkit/g;->s:J

    iget-object v4, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Ldolphin/webkit/g;->s:J

    .line 416
    add-int/lit8 v1, v1, 0x1

    .line 413
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 419
    :cond_2
    iget-wide v2, p0, Ldolphin/webkit/g;->s:J

    int-to-long v0, v1

    div-long v0, v2, v0

    iput-wide v0, p0, Ldolphin/webkit/g;->s:J

    goto :goto_0
.end method

.method static synthetic b(Ldolphin/webkit/g;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Ldolphin/webkit/g;->h:Z

    return v0
.end method

.method static synthetic c(Ldolphin/webkit/g;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Ldolphin/webkit/g;->f:Z

    return v0
.end method

.method private d(I)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 305
    iget-boolean v0, p0, Ldolphin/webkit/g;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldolphin/webkit/g;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/g;->i:Z

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/g;->m()V

    .line 307
    iget-object v0, p0, Ldolphin/webkit/g;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->postInvalidate()V

    .line 318
    :goto_0
    return-void

    .line 311
    :cond_1
    if-lez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Ldolphin/webkit/g;->a(Z)Z

    .line 312
    if-gez p1, :cond_4

    .line 313
    neg-int v0, p1

    .line 314
    :goto_2
    if-le v0, v1, :cond_2

    move v0, v1

    .line 316
    :cond_2
    iput v0, p0, Ldolphin/webkit/g;->j:I

    .line 317
    iget-object v0, p0, Ldolphin/webkit/g;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->postInvalidate()V

    goto :goto_0

    .line 311
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v0, p1

    goto :goto_2
.end method

.method static synthetic d(Ldolphin/webkit/g;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Ldolphin/webkit/g;->i:Z

    return v0
.end method

.method static synthetic e(Ldolphin/webkit/g;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ldolphin/webkit/g;->m()V

    return-void
.end method

.method private e(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 337
    iget-object v2, p0, Ldolphin/webkit/g;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->D()Ldolphin/webkit/WebBackForwardList;

    move-result-object v3

    .line 338
    monitor-enter v3

    .line 339
    :try_start_0
    invoke-virtual {v3}, Ldolphin/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    add-int v4, v2, p1

    .line 340
    invoke-virtual {v3}, Ldolphin/webkit/WebBackForwardList;->getCurrentItem()Ldolphin/webkit/WebHistoryItem;

    move-result-object v2

    .line 341
    invoke-virtual {v3, v4}, Ldolphin/webkit/WebBackForwardList;->getItemAtIndex(I)Ldolphin/webkit/WebHistoryItem;

    move-result-object v5

    .line 342
    if-nez v2, :cond_0

    if-nez v5, :cond_0

    .line 343
    monitor-exit v3

    .line 368
    :goto_0
    return v0

    .line 346
    :cond_0
    invoke-direct {p0, v5}, Ldolphin/webkit/g;->a(Ldolphin/webkit/WebHistoryItem;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 349
    iget-boolean v5, p0, Ldolphin/webkit/g;->k:Z

    if-nez v5, :cond_1

    .line 350
    monitor-exit v3

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 355
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Ldolphin/webkit/g;->i:Z

    .line 356
    if-nez v2, :cond_2

    :goto_1
    iput v0, p0, Ldolphin/webkit/g;->p:I

    iput v0, p0, Ldolphin/webkit/g;->q:I

    .line 365
    :goto_2
    iput v4, p0, Ldolphin/webkit/g;->o:I

    .line 366
    monitor-exit v3

    move v0, v1

    .line 368
    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {v2}, Ldolphin/webkit/WebHistoryItem;->getNativeBridge()I

    move-result v0

    goto :goto_1

    .line 360
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Ldolphin/webkit/g;->i:Z

    .line 361
    if-nez v2, :cond_4

    move v2, v0

    :goto_3
    iput v2, p0, Ldolphin/webkit/g;->p:I

    .line 362
    if-nez v5, :cond_5

    :goto_4
    iput v0, p0, Ldolphin/webkit/g;->q:I

    goto :goto_2

    .line 361
    :cond_4
    invoke-virtual {v2}, Ldolphin/webkit/WebHistoryItem;->getNativeBridge()I

    move-result v2

    goto :goto_3

    .line 362
    :cond_5
    invoke-virtual {v5}, Ldolphin/webkit/WebHistoryItem;->getNativeBridge()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_4
.end method

.method static synthetic f(Ldolphin/webkit/g;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ldolphin/webkit/g;->d:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method private h()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ldolphin/webkit/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/i;-><init>(Ldolphin/webkit/g;Landroid/os/Looper;)V

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 288
    iput-boolean v3, p0, Ldolphin/webkit/g;->e:Z

    .line 289
    iput-boolean v1, p0, Ldolphin/webkit/g;->h:Z

    .line 290
    iput-boolean v3, p0, Ldolphin/webkit/g;->k:Z

    move v0, v1

    move v2, v1

    .line 293
    :goto_0
    iget-object v4, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 294
    iget-object v4, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 295
    iget-object v2, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Ldolphin/webkit/g;->b(Landroid/view/animation/Animation;)V

    .line 296
    iget-object v2, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    aget-object v2, v2, v0

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    move v2, v3

    .line 293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_1
    if-nez v2, :cond_2

    :goto_1
    iput-boolean v3, p0, Ldolphin/webkit/g;->h:Z

    .line 302
    return-void

    :cond_2
    move v3, v1

    .line 301
    goto :goto_1
.end method

.method private j()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 373
    iget-object v1, p0, Ldolphin/webkit/g;->c:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Ldolphin/webkit/g;->c:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 375
    const/4 v1, 0x0

    iput-object v1, p0, Ldolphin/webkit/g;->c:Ljava/util/Timer;

    .line 377
    :cond_0
    iput-boolean v0, p0, Ldolphin/webkit/g;->e:Z

    .line 378
    iput-boolean v0, p0, Ldolphin/webkit/g;->f:Z

    .line 379
    iput-boolean v0, p0, Ldolphin/webkit/g;->g:Z

    .line 380
    iput-boolean v0, p0, Ldolphin/webkit/g;->h:Z

    .line 381
    iput-boolean v0, p0, Ldolphin/webkit/g;->i:Z

    .line 382
    iput v0, p0, Ldolphin/webkit/g;->j:I

    .line 383
    iput-wide v2, p0, Ldolphin/webkit/g;->m:J

    .line 384
    iput-wide v2, p0, Ldolphin/webkit/g;->l:J

    .line 385
    iput-boolean v0, p0, Ldolphin/webkit/g;->k:Z

    .line 386
    iput v0, p0, Ldolphin/webkit/g;->p:I

    .line 387
    iput v0, p0, Ldolphin/webkit/g;->q:I

    .line 388
    const/4 v1, -0x1

    iput v1, p0, Ldolphin/webkit/g;->o:I

    .line 390
    :goto_0
    iget-object v1, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 391
    iget-object v1, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 390
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_2
    return-void
.end method

.method private k()J
    .locals 2

    .prologue
    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/g;->g:Z

    .line 466
    iget-object v0, p0, Ldolphin/webkit/g;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 467
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 470
    invoke-direct {p0}, Ldolphin/webkit/g;->j()V

    .line 472
    iget-object v0, p0, Ldolphin/webkit/g;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 473
    return-void
.end method


# virtual methods
.method public a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Ldolphin/webkit/g;->d:Landroid/view/animation/Animation$AnimationListener;

    .line 86
    return-void
.end method

.method public a(ZZLandroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Ldolphin/webkit/g;->b(ZZLandroid/view/animation/Animation;)V

    .line 91
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 94
    move v0, v1

    :goto_0
    iget-object v2, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 95
    iget-object v2, p0, Ldolphin/webkit/g;->r:[Landroid/view/animation/Animation;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 100
    :goto_1
    return v1

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public a(I)Z
    .locals 12

    .prologue
    const-wide/16 v2, 0x28

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 104
    iget-boolean v0, p0, Ldolphin/webkit/g;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldolphin/webkit/g;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/g;->j()V

    .line 176
    :cond_1
    :goto_0
    return v7

    .line 109
    :cond_2
    iget-boolean v0, p0, Ldolphin/webkit/g;->k:Z

    if-eqz v0, :cond_9

    .line 110
    iput-boolean v7, p0, Ldolphin/webkit/g;->k:Z

    .line 111
    invoke-direct {p0}, Ldolphin/webkit/g;->k()J

    move-result-wide v0

    .line 112
    iget-wide v8, p0, Ldolphin/webkit/g;->s:J

    iget v10, p0, Ldolphin/webkit/g;->j:I

    int-to-long v10, v10

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    .line 113
    sub-long v8, v0, v8

    iput-wide v8, p0, Ldolphin/webkit/g;->l:J

    .line 117
    if-nez p1, :cond_8

    :goto_1
    iput-wide v0, p0, Ldolphin/webkit/g;->m:J

    .line 119
    iget-wide v0, p0, Ldolphin/webkit/g;->m:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 120
    iput-boolean v6, p0, Ldolphin/webkit/g;->i:Z

    .line 123
    :cond_3
    iget-boolean v0, p0, Ldolphin/webkit/g;->n:Z

    invoke-direct {p0, v0, v6}, Ldolphin/webkit/g;->a(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 124
    iget-boolean v1, p0, Ldolphin/webkit/g;->n:Z

    invoke-direct {p0, v1, v7}, Ldolphin/webkit/g;->a(ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    .line 125
    invoke-direct {p0, v0}, Ldolphin/webkit/g;->b(Landroid/view/animation/Animation;)V

    .line 126
    invoke-direct {p0, v1}, Ldolphin/webkit/g;->b(Landroid/view/animation/Animation;)V

    .line 127
    if-eqz v0, :cond_4

    .line 128
    iget-wide v4, p0, Ldolphin/webkit/g;->l:J

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 129
    :cond_4
    if-eqz v1, :cond_5

    .line 130
    iget-wide v4, p0, Ldolphin/webkit/g;->l:J

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 132
    :cond_5
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    .line 133
    iput-boolean v6, p0, Ldolphin/webkit/g;->h:Z

    .line 163
    :cond_6
    :goto_2
    iget-object v0, p0, Ldolphin/webkit/g;->c:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 164
    iget-object v0, p0, Ldolphin/webkit/g;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 166
    :cond_7
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/g;->c:Ljava/util/Timer;

    .line 167
    iget-object v0, p0, Ldolphin/webkit/g;->c:Ljava/util/Timer;

    new-instance v1, Ldolphin/webkit/h;

    invoke-direct {v1, p0}, Ldolphin/webkit/h;-><init>(Ldolphin/webkit/g;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    move v7, v6

    .line 176
    goto :goto_0

    :cond_8
    move-wide v0, v4

    .line 117
    goto :goto_1

    .line 136
    :cond_9
    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p0}, Ldolphin/webkit/g;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 140
    invoke-direct {p0}, Ldolphin/webkit/g;->j()V

    .line 142
    :cond_a
    invoke-direct {p0, p1}, Ldolphin/webkit/g;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iput-boolean v6, p0, Ldolphin/webkit/g;->e:Z

    .line 146
    iput-boolean v7, p0, Ldolphin/webkit/g;->h:Z

    .line 147
    if-gez p1, :cond_d

    move v0, v6

    :goto_3
    iput-boolean v0, p0, Ldolphin/webkit/g;->n:Z

    .line 149
    iget-boolean v0, p0, Ldolphin/webkit/g;->n:Z

    invoke-direct {p0, v0, v6}, Ldolphin/webkit/g;->a(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 150
    iget-boolean v1, p0, Ldolphin/webkit/g;->n:Z

    invoke-direct {p0, v1, v7}, Ldolphin/webkit/g;->a(ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    .line 151
    invoke-direct {p0, v0}, Ldolphin/webkit/g;->b(Landroid/view/animation/Animation;)V

    .line 152
    invoke-direct {p0, v1}, Ldolphin/webkit/g;->b(Landroid/view/animation/Animation;)V

    .line 153
    if-eqz v0, :cond_b

    .line 154
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 155
    :cond_b
    if-eqz v1, :cond_c

    .line 156
    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 158
    :cond_c
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    .line 159
    iput-boolean v6, p0, Ldolphin/webkit/g;->h:Z

    goto :goto_2

    :cond_d
    move v0, v7

    .line 147
    goto :goto_3
.end method

.method public b()V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Ldolphin/webkit/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/g;->f:Z

    .line 182
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Ldolphin/webkit/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-direct {p0}, Ldolphin/webkit/g;->i()V

    .line 197
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ldolphin/webkit/g;->d(I)V

    .line 198
    return-void

    .line 191
    :cond_1
    iget-boolean v0, p0, Ldolphin/webkit/g;->k:Z

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Ldolphin/webkit/g;->j()V

    .line 194
    invoke-direct {p0}, Ldolphin/webkit/g;->i()V

    goto :goto_0
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Ldolphin/webkit/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/g;->k:Z

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget v0, p0, Ldolphin/webkit/g;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ldolphin/webkit/g;->o:I

    if-eq p1, v0, :cond_0

    .line 206
    invoke-direct {p0}, Ldolphin/webkit/g;->j()V

    .line 207
    iget-boolean v0, p0, Ldolphin/webkit/g;->n:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    :goto_1
    invoke-virtual {p0, v0}, Ldolphin/webkit/g;->b(I)V

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldolphin/webkit/g;->a(I)Z

    goto :goto_0

    .line 207
    :cond_2
    const/16 v0, -0x64

    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Ldolphin/webkit/g;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/g;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/g;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Ldolphin/webkit/g;->p:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Ldolphin/webkit/g;->q:I

    return v0
.end method

.method public f()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 221
    iget-boolean v0, p0, Ldolphin/webkit/g;->n:Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ldolphin/webkit/g;->a(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 222
    invoke-direct {p0, v0}, Ldolphin/webkit/g;->a(Landroid/view/animation/Animation;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 226
    iget-boolean v0, p0, Ldolphin/webkit/g;->n:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldolphin/webkit/g;->a(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 227
    invoke-direct {p0, v0}, Ldolphin/webkit/g;->a(Landroid/view/animation/Animation;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/g;->h:Z

    .line 486
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Ldolphin/webkit/g;->e:Z

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/g;->e:Z

    .line 479
    invoke-direct {p0}, Ldolphin/webkit/g;->l()V

    .line 481
    :cond_0
    return-void
.end method
