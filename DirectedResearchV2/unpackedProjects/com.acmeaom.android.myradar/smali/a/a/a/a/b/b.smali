.class public La/a/a/a/b/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:[D

.field private static final b:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 72
    const/16 v0, 0xf

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, La/a/a/a/b/b;->a:[D

    .line 91
    const-wide/high16 v0, 0x3fe0000000000000L

    const-wide v2, 0x401921fb54442d18L

    invoke-static {v2, v3}, La/a/a/a/c/b;->b(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sput-wide v0, La/a/a/a/b/b;->b:D

    return-void

    .line 72
    :array_0
    .array-data 8
        0x3fefffffffffffe6L
        0x404c93ff87c1acceL
        -0x3fb2337608fa76d0L
        0x402c45aea23d22a1L
        -0x4020847be9da401cL
        0x3f01d2af4786183aL
        0x3f08644bb7c5e3bdL
        -0x40e63633621a8b49L
        0x3f24b8939ed4e66dL
        -0x40d470b232d541caL
        0x3f2c801018e9e826L
        -0x40da7666366ad9c0L
        0x3f1621360b773d55L
        -0x410489734a2e1dfaL
        0x3ecef40a04fc9810L
    .end array-data
.end method

.method public static a(D)D
    .locals 8

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L

    .line 247
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    .line 248
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L

    .line 267
    :goto_0
    return-wide v0

    .line 249
    :cond_1
    cmpg-double v0, p0, v4

    if-gez v0, :cond_2

    .line 250
    invoke-static {p0, p1}, La/a/a/a/b/b;->d(D)D

    move-result-wide v0

    invoke-static {p0, p1}, La/a/a/a/c/b;->b(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 251
    :cond_2
    const-wide/high16 v0, 0x4004000000000000L

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_3

    .line 252
    sub-double v0, p0, v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, La/a/a/a/b/b;->d(D)D

    move-result-wide v0

    goto :goto_0

    .line 253
    :cond_3
    const-wide/high16 v0, 0x4020000000000000L

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_5

    .line 254
    const-wide/high16 v0, 0x3ff8000000000000L

    sub-double v0, p0, v0

    invoke-static {v0, v1}, La/a/a/a/c/b;->e(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 255
    const-wide/high16 v1, 0x3ff0000000000000L

    .line 256
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v3, :cond_4

    .line 257
    int-to-double v4, v0

    sub-double v4, p0, v4

    mul-double/2addr v1, v4

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    :cond_4
    add-int/lit8 v0, v3, 0x1

    int-to-double v3, v0

    sub-double v3, p0, v3

    invoke-static {v3, v4}, La/a/a/a/b/b;->d(D)D

    move-result-wide v3

    invoke-static {v1, v2}, La/a/a/a/c/b;->b(D)D

    move-result-wide v0

    add-double/2addr v0, v3

    goto :goto_0

    .line 261
    :cond_5
    invoke-static {p0, p1}, La/a/a/a/b/b;->b(D)D

    move-result-wide v0

    .line 262
    const-wide v2, 0x4012f80000000000L

    add-double/2addr v2, p0

    add-double/2addr v2, v4

    .line 263
    add-double/2addr v4, p0

    invoke-static {v2, v3}, La/a/a/a/c/b;->b(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double v2, v4, v2

    sget-wide v4, La/a/a/a/b/b;->b:D

    add-double/2addr v2, v4

    div-double/2addr v0, p0

    invoke-static {v0, v1}, La/a/a/a/c/b;->b(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static a(DDDI)D
    .locals 8

    .prologue
    .line 316
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_1

    .line 317
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L

    .line 348
    :goto_0
    return-wide v0

    .line 318
    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_2

    .line 319
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 320
    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L

    add-double/2addr v0, p0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_3

    .line 323
    const-wide/high16 v0, 0x3ff0000000000000L

    invoke-static/range {p0 .. p6}, La/a/a/a/b/b;->b(DDDI)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 326
    :cond_3
    const-wide/16 v2, 0x0

    .line 327
    const-wide/high16 v0, 0x3ff0000000000000L

    div-double/2addr v0, p0

    move-wide v4, v2

    move-wide v2, v0

    .line 329
    :goto_1
    div-double v6, v2, v0

    invoke-static {v6, v7}, La/a/a/a/c/b;->d(D)D

    move-result-wide v6

    cmpl-double v6, v6, p4

    if-lez v6, :cond_4

    int-to-double v6, p6

    cmpg-double v6, v4, v6

    if-gez v6, :cond_4

    const-wide/high16 v6, 0x7ff0000000000000L

    cmpg-double v6, v0, v6

    if-gez v6, :cond_4

    .line 333
    const-wide/high16 v6, 0x3ff0000000000000L

    add-double/2addr v4, v6

    .line 334
    add-double v6, p0, v4

    div-double v6, p2, v6

    mul-double/2addr v2, v6

    .line 337
    add-double/2addr v0, v2

    goto :goto_1

    .line 339
    :cond_4
    int-to-double v2, p6

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_5

    .line 340
    new-instance v0, La/a/a/a/a/e;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/a/e;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 341
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 342
    const-wide/high16 v0, 0x3ff0000000000000L

    goto :goto_0

    .line 344
    :cond_6
    neg-double v2, p2

    invoke-static {p2, p3}, La/a/a/a/c/b;->b(D)D

    move-result-wide v4

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    invoke-static {p0, p1}, La/a/a/a/b/b;->a(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, La/a/a/a/c/b;->a(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public static b(D)D
    .locals 7

    .prologue
    .line 513
    const-wide/16 v1, 0x0

    .line 514
    sget-object v0, La/a/a/a/b/b;->a:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 515
    sget-object v3, La/a/a/a/b/b;->a:[D

    aget-wide v3, v3, v0

    int-to-double v5, v0

    add-double/2addr v5, p0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 514
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 517
    :cond_0
    sget-object v0, La/a/a/a/b/b;->a:[D

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    add-double v0, v1, v3

    return-wide v0
.end method

.method public static b(DDDI)D
    .locals 8

    .prologue
    const-wide/16 v1, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L

    .line 394
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    cmpg-double v0, p0, v1

    if-lez v0, :cond_0

    cmpg-double v0, p2, v1

    if-gez v0, :cond_1

    .line 395
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L

    .line 421
    :goto_0
    return-wide v0

    .line 396
    :cond_1
    cmpl-double v0, p2, v1

    if-nez v0, :cond_2

    move-wide v0, v6

    .line 397
    goto :goto_0

    .line 398
    :cond_2
    add-double v0, p0, v6

    cmpg-double v0, p2, v0

    if-gez v0, :cond_3

    .line 401
    invoke-static/range {p0 .. p6}, La/a/a/a/b/b;->a(DDDI)D

    move-result-wide v0

    sub-double v0, v6, v0

    goto :goto_0

    .line 404
    :cond_3
    new-instance v0, La/a/a/a/b/c;

    invoke-direct {v0, p0, p1}, La/a/a/a/b/c;-><init>(D)V

    move-wide v1, p2

    move-wide v3, p4

    move v5, p6

    .line 417
    invoke-virtual/range {v0 .. v5}, La/a/a/a/c/a;->a(DDI)D

    move-result-wide v0

    div-double v0, v6, v0

    .line 418
    neg-double v2, p2

    invoke-static {p2, p3}, La/a/a/a/c/b;->b(D)D

    move-result-wide v4

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    invoke-static {p0, p1}, La/a/a/a/b/b;->a(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, La/a/a/a/c/b;->a(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public static c(D)D
    .locals 8

    .prologue
    .line 534
    const-wide/high16 v0, -0x4020000000000000L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 535
    new-instance v0, La/a/a/a/a/g;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/high16 v2, -0x4020000000000000L

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, La/a/a/a/a/g;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 537
    :cond_0
    const-wide/high16 v0, 0x3ff8000000000000L

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    .line 538
    new-instance v0, La/a/a/a/a/f;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/high16 v2, 0x3ff8000000000000L

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, La/a/a/a/a/f;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 542
    :cond_1
    const-wide/high16 v0, 0x3fe0000000000000L

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_2

    move-wide v0, p0

    .line 543
    :goto_0
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_4

    .line 544
    const-wide v2, 0x3e3a44b7ba22d629L

    const-wide v4, 0x3e3ad4fcf5652545L

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    .line 545
    const-wide v4, 0x3deae78bd35ee299L

    .line 546
    const-wide v6, -0x418faf7df74a0d96L

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 547
    const-wide v6, 0x3eb0a75d3efc42a1L

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 548
    const-wide v6, -0x4125075a09fb0c8aL

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 549
    const-wide v6, -0x411e24fa0ada8417L

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 550
    const-wide v6, 0x3f402f82c4280285L

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 551
    const-wide v6, 0x3f9b4269da358438L

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 552
    const-wide v6, 0x3fca0fe7f2c55ec3L

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 553
    const-wide/high16 v6, 0x3ff0000000000000L

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 555
    const-wide v6, -0x417466799993dda3L

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double/2addr v2, v6

    .line 556
    const-wide v4, 0x3eb302509dbc0de3L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 557
    const-wide v4, -0x414b052be03cb045L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 558
    const-wide v4, -0x410ae31750b81542L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 559
    const-wide v4, 0x3f20c8a78cd9f9d2L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 560
    const-wide v4, -0x40d3c9b0190ea9c3L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 561
    const-wide v4, -0x40ace8eed31c5d58L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 562
    const-wide v4, 0x3f7d919c527f60b2L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 563
    const-wide v4, -0x407c4b50d7b7c1dfL

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 564
    const-wide v4, -0x405a650efc3cbf6eL

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 565
    const-wide v4, 0x3fc5512320b43fbeL

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 566
    const-wide v4, -0x405a7ea1705d8fb8L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 567
    const-wide v4, -0x401b030bfd9505d2L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 568
    const-wide v4, -0x4024f119f8df6c32L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 569
    const-wide/high16 v4, 0x3fe0000000000000L

    cmpl-double v4, p0, v4

    if-lez v4, :cond_3

    .line 570
    mul-double/2addr v0, v2

    div-double/2addr v0, p0

    .line 611
    :goto_1
    return-wide v0

    .line 542
    :cond_2
    const-wide/high16 v0, 0x3fe0000000000000L

    sub-double v0, p0, v0

    const-wide/high16 v2, 0x3fe0000000000000L

    sub-double/2addr v0, v2

    goto/16 :goto_0

    .line 572
    :cond_3
    const-wide/high16 v0, 0x3fe0000000000000L

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    goto :goto_1

    .line 575
    :cond_4
    const-wide v2, 0x3cf38fbfc319a348L

    .line 576
    const-wide v4, -0x42be6a698dd6c299L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 577
    const-wide v4, 0x3d7bab6905535cf6L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 578
    const-wide v4, 0x3dc9c4254475c671L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 579
    const-wide v4, 0x3e076f13e0a00ee8L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 580
    const-wide v4, 0x3e3d837c4f99af89L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 581
    const-wide v4, 0x3e3a44b7ba22d629L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 583
    const-wide v4, 0x3f31a50be16f20f5L

    .line 584
    const-wide v6, 0x3f744d9cf2512520L

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 585
    const-wide v6, 0x3fabfa0daa0efc58L

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 586
    const-wide v6, 0x3fd39086686b07d0L

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 587
    const-wide/high16 v6, 0x3ff0000000000000L

    mul-double/2addr v4, v0

    add-double/2addr v4, v6

    .line 589
    const-wide v6, -0x417466799993dda3L

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double/2addr v2, v6

    .line 590
    const-wide v4, 0x3eb302509dbc0de3L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 591
    const-wide v4, -0x414b052be03cb045L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 592
    const-wide v4, -0x410ae31750b81542L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 593
    const-wide v4, 0x3f20c8a78cd9f9d2L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 594
    const-wide v4, -0x40d3c9b0190ea9c3L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 595
    const-wide v4, -0x40ace8eed31c5d58L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 596
    const-wide v4, 0x3f7d919c527f60b2L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 597
    const-wide v4, -0x407c4b50d7b7c1dfL

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 598
    const-wide v4, -0x405a650efc3cbf6eL

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 599
    const-wide v4, 0x3fc5512320b43fbeL

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 600
    const-wide v4, -0x405a7ea1705d8fb8L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 601
    const-wide v4, -0x401b030bfd9505d2L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 602
    const-wide v4, 0x3fe2788cfc6fb619L

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    .line 604
    const-wide/high16 v4, 0x3fe0000000000000L

    cmpl-double v4, p0, v4

    if-lez v4, :cond_5

    .line 605
    div-double/2addr v0, p0

    const-wide/high16 v4, 0x3fe0000000000000L

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    goto/16 :goto_1

    .line 607
    :cond_5
    mul-double v0, p0, v2

    goto/16 :goto_1
.end method

.method public static d(D)D
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v4, 0x3ff8000000000000L

    const-wide/high16 v2, -0x4020000000000000L

    .line 628
    cmpg-double v0, p0, v2

    if-gez v0, :cond_0

    .line 629
    new-instance v0, La/a/a/a/a/g;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, La/a/a/a/a/g;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 631
    :cond_0
    cmpl-double v0, p0, v4

    if-lez v0, :cond_1

    .line 632
    new-instance v0, La/a/a/a/a/f;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, La/a/a/a/a/f;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 635
    :cond_1
    invoke-static {p0, p1}, La/a/a/a/b/b;->c(D)D

    move-result-wide v0

    invoke-static {v0, v1}, La/a/a/a/c/b;->c(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method
