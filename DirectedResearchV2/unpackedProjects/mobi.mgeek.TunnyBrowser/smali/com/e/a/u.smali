.class public abstract Lcom/e/a/u;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# instance fields
.field final a:Lcom/e/a/t;

.field b:I

.field c:I

.field d:[Landroid/graphics/drawable/Drawable;

.field e:I

.field f:Z

.field g:Landroid/graphics/Rect;

.field h:Z

.field i:Z

.field j:I

.field k:I

.field l:I

.field m:I

.field n:Z

.field o:I

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Z


# direct methods
.method constructor <init>(Lcom/e/a/u;Lcom/e/a/t;Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 288
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 265
    iput-boolean v0, p0, Lcom/e/a/u;->f:Z

    .line 266
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/e/a/u;->g:Landroid/graphics/Rect;

    .line 268
    iput-boolean v0, p0, Lcom/e/a/u;->h:Z

    .line 269
    iput-boolean v0, p0, Lcom/e/a/u;->i:Z

    .line 275
    iput-boolean v0, p0, Lcom/e/a/u;->n:Z

    .line 278
    iput-boolean v0, p0, Lcom/e/a/u;->p:Z

    .line 284
    iput-boolean v0, p0, Lcom/e/a/u;->t:Z

    .line 286
    iput-boolean v5, p0, Lcom/e/a/u;->u:Z

    .line 289
    iput-object p2, p0, Lcom/e/a/u;->a:Lcom/e/a/t;

    .line 291
    if-eqz p1, :cond_3

    .line 292
    iget v1, p1, Lcom/e/a/u;->b:I

    iput v1, p0, Lcom/e/a/u;->b:I

    .line 293
    iget v1, p1, Lcom/e/a/u;->c:I

    iput v1, p0, Lcom/e/a/u;->c:I

    .line 295
    iget-object v1, p1, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    .line 297
    array-length v2, v1

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    .line 298
    iget v2, p1, Lcom/e/a/u;->e:I

    iput v2, p0, Lcom/e/a/u;->e:I

    .line 300
    iget v2, p0, Lcom/e/a/u;->e:I

    .line 301
    :goto_0
    if-ge v0, v2, :cond_1

    .line 302
    if-eqz p3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    .line 307
    :goto_1
    iget-object v3, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    iget-object v3, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_1

    .line 310
    :cond_1
    iput-boolean v5, p0, Lcom/e/a/u;->s:Z

    iput-boolean v5, p0, Lcom/e/a/u;->r:Z

    .line 311
    iget-boolean v0, p1, Lcom/e/a/u;->f:Z

    iput-boolean v0, p0, Lcom/e/a/u;->f:Z

    .line 312
    iget-object v0, p1, Lcom/e/a/u;->g:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/e/a/u;->g:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/e/a/u;->g:Landroid/graphics/Rect;

    .line 315
    :cond_2
    iget-boolean v0, p1, Lcom/e/a/u;->h:Z

    iput-boolean v0, p0, Lcom/e/a/u;->h:Z

    .line 316
    iget-boolean v0, p1, Lcom/e/a/u;->i:Z

    iput-boolean v0, p0, Lcom/e/a/u;->i:Z

    .line 317
    iget v0, p1, Lcom/e/a/u;->j:I

    iput v0, p0, Lcom/e/a/u;->j:I

    .line 318
    iget v0, p1, Lcom/e/a/u;->k:I

    iput v0, p0, Lcom/e/a/u;->k:I

    .line 320
    iget-boolean v0, p1, Lcom/e/a/u;->n:Z

    iput-boolean v0, p0, Lcom/e/a/u;->n:Z

    .line 321
    iget v0, p1, Lcom/e/a/u;->o:I

    iput v0, p0, Lcom/e/a/u;->o:I

    .line 322
    iget-boolean v0, p1, Lcom/e/a/u;->p:Z

    iput-boolean v0, p0, Lcom/e/a/u;->p:Z

    .line 323
    iget-boolean v0, p1, Lcom/e/a/u;->q:Z

    iput-boolean v0, p0, Lcom/e/a/u;->q:Z

    .line 325
    iget-boolean v0, p1, Lcom/e/a/u;->u:Z

    iput-boolean v0, p0, Lcom/e/a/u;->u:Z

    .line 332
    :goto_2
    return-void

    .line 328
    :cond_3
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    .line 329
    iput v0, p0, Lcom/e/a/u;->e:I

    .line 330
    iput-boolean v0, p0, Lcom/e/a/u;->s:Z

    iput-boolean v0, p0, Lcom/e/a/u;->r:Z

    goto :goto_2
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 450
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/e/a/u;->i:Z

    .line 452
    invoke-virtual {p0}, Lcom/e/a/u;->a()I

    move-result v1

    .line 453
    iget-object v2, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    .line 454
    iput v0, p0, Lcom/e/a/u;->k:I

    iput v0, p0, Lcom/e/a/u;->j:I

    .line 455
    iput v0, p0, Lcom/e/a/u;->m:I

    iput v0, p0, Lcom/e/a/u;->l:I

    .line 456
    :goto_0
    if-ge v0, v1, :cond_4

    .line 457
    aget-object v3, v2, v0

    .line 458
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 459
    iget v5, p0, Lcom/e/a/u;->j:I

    if-le v4, v5, :cond_0

    .line 460
    iput v4, p0, Lcom/e/a/u;->j:I

    .line 461
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 462
    iget v5, p0, Lcom/e/a/u;->k:I

    if-le v4, v5, :cond_1

    .line 463
    iput v4, p0, Lcom/e/a/u;->k:I

    .line 464
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 465
    iget v5, p0, Lcom/e/a/u;->l:I

    if-le v4, v5, :cond_2

    .line 466
    iput v4, p0, Lcom/e/a/u;->l:I

    .line 467
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 468
    iget v4, p0, Lcom/e/a/u;->m:I

    if-le v3, v4, :cond_3

    .line 469
    iput v3, p0, Lcom/e/a/u;->m:I

    .line 456
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_4
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/e/a/u;->e:I

    return v0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 340
    iget v0, p0, Lcom/e/a/u;->e:I

    .line 342
    iget-object v1, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 343
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/e/a/u;->a(II)V

    .line 346
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 347
    iget-object v1, p0, Lcom/e/a/u;->a:Lcom/e/a/t;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 349
    iget-object v1, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v1, v0

    .line 350
    iget v1, p0, Lcom/e/a/u;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/e/a/u;->e:I

    .line 351
    iget v1, p0, Lcom/e/a/u;->c:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/e/a/u;->c:I

    .line 352
    iput-boolean v3, p0, Lcom/e/a/u;->n:Z

    .line 353
    iput-boolean v3, p0, Lcom/e/a/u;->p:Z

    .line 355
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/e/a/u;->g:Landroid/graphics/Rect;

    .line 356
    iput-boolean v3, p0, Lcom/e/a/u;->t:Z

    .line 357
    iput-boolean v3, p0, Lcom/e/a/u;->i:Z

    .line 359
    return v0
.end method

.method public a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    .line 510
    iget-object v1, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    iput-object v0, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    .line 512
    return-void
.end method

.method public final b()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 380
    iget-boolean v1, p0, Lcom/e/a/u;->f:Z

    if-eqz v1, :cond_0

    .line 406
    :goto_0
    return-object v0

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/e/a/u;->g:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/e/a/u;->t:Z

    if-eqz v1, :cond_2

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/e/a/u;->g:Landroid/graphics/Rect;

    goto :goto_0

    .line 388
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 389
    invoke-virtual {p0}, Lcom/e/a/u;->a()I

    move-result v4

    .line 390
    iget-object v5, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    move v1, v2

    .line 391
    :goto_1
    if-ge v1, v4, :cond_8

    .line 392
    aget-object v6, v5, v1

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 393
    if-nez v0, :cond_3

    .line 394
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 395
    :cond_3
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_4

    .line 396
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 397
    :cond_4
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_5

    .line 398
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 399
    :cond_5
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_6

    .line 400
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 401
    :cond_6
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_7

    .line 402
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 391
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 405
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/e/a/u;->t:Z

    .line 406
    iput-object v0, p0, Lcom/e/a/u;->g:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/e/a/u;->h:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/e/a/u;->i:Z

    if-nez v0, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/e/a/u;->l()V

    .line 422
    :cond_0
    iget v0, p0, Lcom/e/a/u;->j:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/e/a/u;->i:Z

    if-nez v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/e/a/u;->l()V

    .line 430
    :cond_0
    iget v0, p0, Lcom/e/a/u;->k:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/e/a/u;->i:Z

    if-nez v0, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/e/a/u;->l()V

    .line 438
    :cond_0
    iget v0, p0, Lcom/e/a/u;->l:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/e/a/u;->b:I

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/e/a/u;->i:Z

    if-nez v0, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/e/a/u;->l()V

    .line 446
    :cond_0
    iget v0, p0, Lcom/e/a/u;->m:I

    return v0
.end method

.method public final i()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 474
    iget-boolean v0, p0, Lcom/e/a/u;->n:Z

    if-eqz v0, :cond_0

    .line 475
    iget v0, p0, Lcom/e/a/u;->o:I

    .line 486
    :goto_0
    return v0

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/e/a/u;->a()I

    move-result v4

    .line 479
    iget-object v5, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    .line 480
    if-lez v4, :cond_1

    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    :goto_1
    move v1, v2

    .line 481
    :goto_2
    if-ge v1, v4, :cond_2

    .line 482
    aget-object v3, v5, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    invoke-static {v0, v3}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    .line 481
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_2

    .line 480
    :cond_1
    const/4 v0, -0x2

    goto :goto_1

    .line 484
    :cond_2
    iput v0, p0, Lcom/e/a/u;->o:I

    .line 485
    iput-boolean v2, p0, Lcom/e/a/u;->n:Z

    goto :goto_0
.end method

.method public final j()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 490
    iget-boolean v2, p0, Lcom/e/a/u;->p:Z

    if-eqz v2, :cond_0

    .line 491
    iget-boolean v0, p0, Lcom/e/a/u;->q:Z

    .line 505
    :goto_0
    return v0

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/e/a/u;->a()I

    move-result v3

    move v2, v0

    .line 496
    :goto_1
    if-ge v2, v3, :cond_1

    .line 497
    iget-object v4, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 503
    :cond_1
    iput-boolean v0, p0, Lcom/e/a/u;->q:Z

    .line 504
    iput-boolean v1, p0, Lcom/e/a/u;->p:Z

    goto :goto_0

    .line 496
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized k()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 515
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/e/a/u;->r:Z

    if-nez v1, :cond_1

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/e/a/u;->s:Z

    .line 517
    iget v1, p0, Lcom/e/a/u;->e:I

    .line 518
    :goto_0
    if-ge v0, v1, :cond_0

    .line 519
    iget-object v2, p0, Lcom/e/a/u;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_2

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/e/a/u;->s:Z

    .line 524
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/u;->r:Z

    .line 527
    :cond_1
    iget-boolean v0, p0, Lcom/e/a/u;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 518
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
