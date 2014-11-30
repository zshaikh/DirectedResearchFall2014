.class public Lcom/dolphin/browser/gesture/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dolphin/browser/gesture/Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:J

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final c:Landroid/graphics/RectF;

.field private d:J

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/dolphin/browser/gesture/Gesture;->a:J

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/dolphin/browser/gesture/Gesture;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 335
    new-instance v0, Lcom/dolphin/browser/gesture/c;

    invoke-direct {v0}, Lcom/dolphin/browser/gesture/c;-><init>()V

    sput-object v0, Lcom/dolphin/browser/gesture/Gesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/Gesture;->c:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    .line 63
    sget-wide v0, Lcom/dolphin/browser/gesture/Gesture;->a:J

    sget-object v2, Lcom/dolphin/browser/gesture/Gesture;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dolphin/browser/gesture/Gesture;->d:J

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/Gesture;J)J
    .locals 0

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/dolphin/browser/gesture/Gesture;->d:J

    return-wide p1
.end method

.method static a(Ljava/io/DataInputStream;)Lcom/dolphin/browser/gesture/Gesture;
    .locals 4

    .prologue
    .line 321
    new-instance v1, Lcom/dolphin/browser/gesture/Gesture;

    invoke-direct {v1}, Lcom/dolphin/browser/gesture/Gesture;-><init>()V

    .line 324
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/dolphin/browser/gesture/Gesture;->d:J

    .line 326
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 328
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 329
    invoke-static {p0}, Lcom/dolphin/browser/gesture/v;->a(Ljava/io/DataInputStream;)Lcom/dolphin/browser/gesture/v;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/gesture/Gesture;->a(Lcom/dolphin/browser/gesture/v;)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(IIII)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/high16 v9, 0x40000000

    .line 229
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 230
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 233
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 234
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 235
    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 238
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 239
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 241
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/Gesture;->e()Landroid/graphics/Path;

    move-result-object v5

    .line 242
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 243
    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 245
    mul-int/lit8 v0, p3, 0x2

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v0, v1

    .line 246
    mul-int/lit8 v0, p3, 0x2

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v0, v7

    .line 247
    cmpl-float v7, v1, v0

    if-lez v7, :cond_0

    .line 248
    :goto_0
    div-float v1, v9, v0

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 250
    iget v1, v6, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    int-to-float v7, p1

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v8, v0

    sub-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v1, v7

    iget v7, v6, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    int-to-float v8, p2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v6, v0

    sub-float v6, v8, v6

    div-float/2addr v6, v9

    add-float/2addr v6, v7

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Path;->offset(FF)V

    .line 253
    int-to-float v1, p3

    int-to-float v6, p3

    invoke-virtual {v3, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 256
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 258
    return-object v2

    :cond_0
    move v0, v1

    .line 247
    goto :goto_0
.end method

.method public a(IIIIFI)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 485
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 486
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 488
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 489
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 490
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 491
    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 492
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 493
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 494
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 495
    const/high16 v0, 0x40000000

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 497
    invoke-virtual {p0, p6}, Lcom/dolphin/browser/gesture/Gesture;->b(I)Landroid/graphics/Path;

    move-result-object v5

    .line 498
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 499
    const/4 v0, 0x1

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 501
    mul-int/lit8 v0, p3, 0x2

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v0, v1

    .line 502
    mul-int/lit8 v0, p3, 0x2

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v0, v7

    .line 503
    cmpl-float v7, v1, v0

    if-lez v7, :cond_0

    .line 504
    :goto_0
    div-float v1, p5, v0

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 506
    iget v1, v6, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    int-to-float v7, p1

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v8, v0

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v1, v7

    iget v7, v6, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    int-to-float v8, p2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v6, v0

    sub-float v6, v8, v6

    const/high16 v8, 0x40000000

    div-float/2addr v6, v8

    add-float/2addr v6, v7

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Path;->offset(FF)V

    .line 509
    int-to-float v1, p3

    int-to-float v6, p3

    invoke-virtual {v3, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 510
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 512
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 514
    return-object v2

    :cond_0
    move v0, v1

    .line 503
    goto :goto_0
.end method

.method public a(I)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/dolphin/browser/gesture/Gesture;->a(Landroid/graphics/Path;I)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 4

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 142
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 143
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/v;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/v;->a()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 142
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 146
    :cond_1
    return-object p1
.end method

.method public a(Landroid/graphics/Path;I)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/dolphin/browser/gesture/Gesture;->a(Landroid/graphics/Path;IZ)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Path;IZ)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/dolphin/browser/gesture/Gesture;->a(Landroid/graphics/Path;Landroid/graphics/PointF;IZ)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Path;Landroid/graphics/PointF;IZ)Landroid/graphics/Path;
    .locals 6

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 423
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 426
    :cond_0
    iget-object v3, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    .line 427
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 429
    const/4 v0, 0x0

    move v2, v0

    move v1, p3

    :goto_0
    if-ge v2, v4, :cond_1

    .line 430
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/v;

    .line 431
    if-lez v1, :cond_2

    .line 432
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/v;->b()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 433
    invoke-virtual {v0, p2, v5, p4}, Lcom/dolphin/browser/gesture/v;->a(Landroid/graphics/PointF;IZ)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 434
    sub-int v0, v1, v5

    .line 429
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 437
    :cond_1
    return-object p1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/gesture/v;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p1, Lcom/dolphin/browser/gesture/v;->a:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/gesture/Gesture;->c:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/dolphin/browser/gesture/v;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 103
    :cond_0
    return-void
.end method

.method a(Ljava/io/DataOutputStream;)V
    .locals 4

    .prologue
    .line 307
    iget-object v2, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    .line 308
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 311
    iget-wide v0, p0, Lcom/dolphin/browser/gesture/Gesture;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 313
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 315
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 316
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/v;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/v;->a(Ljava/io/DataOutputStream;)V

    .line 315
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Landroid/graphics/Path;
    .locals 5

    .prologue
    .line 461
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 463
    iget-object v3, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    .line 464
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 466
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 467
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/v;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/v;->a(I)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 466
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 470
    :cond_0
    return-object v2
.end method

.method public c()F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 113
    .line 114
    iget-object v3, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    .line 117
    :goto_0
    if-ge v1, v4, :cond_0

    .line 118
    int-to-float v2, v0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/v;

    iget v0, v0, Lcom/dolphin/browser/gesture/v;->b:F

    add-float/2addr v0, v2

    float-to-int v2, v0

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 121
    :cond_0
    int-to-float v0, v0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 68
    new-instance v2, Lcom/dolphin/browser/gesture/Gesture;

    invoke-direct {v2}, Lcom/dolphin/browser/gesture/Gesture;-><init>()V

    .line 69
    iget-object v0, v2, Lcom/dolphin/browser/gesture/Gesture;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/Gesture;->c:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/dolphin/browser/gesture/Gesture;->c:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/dolphin/browser/gesture/Gesture;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/dolphin/browser/gesture/Gesture;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/v;

    .line 74
    iget-object v4, v2, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/v;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :cond_0
    return-object v2
.end method

.method public d()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/gesture/Gesture;->c:Landroid/graphics/RectF;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/gesture/Gesture;->a(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/dolphin/browser/gesture/Gesture;->d:J

    return-wide v0
.end method

.method public g()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 395
    .line 396
    iget-object v3, p0, Lcom/dolphin/browser/gesture/Gesture;->e:Ljava/util/ArrayList;

    .line 397
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    move v2, v0

    .line 399
    :goto_0
    if-ge v1, v4, :cond_0

    .line 400
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/v;

    iget-object v0, v0, Lcom/dolphin/browser/gesture/v;->c:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 399
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 402
    :cond_0
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 364
    iget-wide v0, p0, Lcom/dolphin/browser/gesture/Gesture;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 366
    const/4 v0, 0x0

    .line 367
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v2, 0x8000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 369
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 372
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/gesture/Gesture;->a(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    const/4 v0, 0x1

    .line 377
    invoke-static {v2}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    .line 378
    invoke-static {v1}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    .line 381
    :goto_0
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 384
    :cond_0
    return-void

    .line 374
    :catch_0
    move-exception v3

    .line 375
    :try_start_1
    const-string v4, "Gestures"

    const-string v5, "Error writing Gesture to parcel:"

    invoke-static {v4, v5, v3}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    invoke-static {v2}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    .line 378
    invoke-static {v1}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    .line 378
    invoke-static {v1}, Lcom/dolphin/browser/gesture/w;->a(Ljava/io/Closeable;)V

    throw v0
.end method
