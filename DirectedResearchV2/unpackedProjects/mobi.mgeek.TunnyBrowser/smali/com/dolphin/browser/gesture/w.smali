.class public final Lcom/dolphin/browser/gesture/w;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# static fields
.field private static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/high16 v0, 0x4000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/dolphin/browser/gesture/w;->a:F

    return-void
.end method

.method static a([F[F)F
    .locals 5

    .prologue
    .line 352
    const/4 v1, 0x0

    .line 353
    array-length v2, p0

    .line 354
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 355
    aget v3, p0, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    .line 356
    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    int-to-float v0, v2

    div-float v0, v1, v0

    return v0
.end method

.method static a([F[FI)F
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 386
    array-length v4, p0

    .line 389
    const/4 v0, 0x0

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v0, v4, :cond_0

    .line 390
    aget v5, p0, v0

    aget v6, p1, v0

    mul-float/2addr v5, v6

    add-int/lit8 v6, v0, 0x1

    aget v6, p0, v6

    add-int/lit8 v7, v0, 0x1

    aget v7, p1, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 391
    aget v5, p0, v0

    add-int/lit8 v6, v0, 0x1

    aget v6, p1, v6

    mul-float/2addr v5, v6

    add-int/lit8 v6, v0, 0x1

    aget v6, p0, v6

    aget v7, p1, v0

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float/2addr v1, v5

    .line 389
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 393
    :cond_0
    cmpl-float v0, v3, v2

    if-eqz v0, :cond_2

    .line 394
    div-float v0, v1, v3

    .line 395
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    .line 396
    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L

    int-to-double v10, p2

    div-double/2addr v8, v10

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_1

    .line 397
    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 404
    :goto_1
    return v0

    .line 399
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 400
    float-to-double v6, v0

    mul-double/2addr v6, v4

    .line 401
    float-to-double v2, v3

    mul-double/2addr v2, v4

    float-to-double v0, v1

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_1

    .line 404
    :cond_2
    const v0, 0x3fc90fdb

    goto :goto_1
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/dolphin/browser/gesture/ad;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/q;",
            ">;)",
            "Lcom/dolphin/browser/gesture/ad;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 417
    mul-int/lit8 v0, v2, 0x2

    new-array v3, v0, [F

    .line 418
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 419
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/q;

    .line 420
    mul-int/lit8 v4, v1, 0x2

    .line 421
    iget v5, v0, Lcom/dolphin/browser/gesture/q;->a:F

    aput v5, v3, v4

    .line 422
    add-int/lit8 v4, v4, 0x1

    iget v0, v0, Lcom/dolphin/browser/gesture/q;->b:F

    aput v0, v3, v4

    .line 418
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 424
    :cond_0
    invoke-static {v3}, Lcom/dolphin/browser/gesture/w;->a([F)[F

    move-result-object v0

    .line 425
    invoke-static {v3, v0}, Lcom/dolphin/browser/gesture/w;->b([F[F)Lcom/dolphin/browser/gesture/ad;

    move-result-object v0

    return-object v0
.end method

.method private static a(FF[FI)V
    .locals 14

    .prologue
    .line 205
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    .line 206
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 p1, 0x0

    .line 207
    :cond_1
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 208
    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 209
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 210
    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 213
    int-to-float v4, v0

    cmpl-float v4, p0, v4

    if-nez v4, :cond_3

    int-to-float v4, v2

    cmpl-float v4, p1, v4

    if-nez v4, :cond_3

    .line 214
    mul-int v0, v3, p3

    add-int/2addr v0, v1

    .line 215
    aget v1, p2, v0

    const/high16 v2, 0x3f800000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 216
    const/high16 v1, 0x3f800000

    aput v1, p2, v0

    .line 253
    :cond_2
    :goto_0
    return-void

    .line 219
    :cond_3
    int-to-float v4, v0

    sub-float/2addr v4, p0

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 220
    int-to-float v6, v2

    sub-float/2addr v6, p1

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 221
    int-to-float v8, v1

    sub-float/2addr v8, p0

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 222
    int-to-float v10, v3

    sub-float/2addr v10, p1

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 223
    add-double v12, v4, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 224
    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 225
    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 226
    add-double v7, v8, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 227
    add-float v7, v12, v6

    add-float/2addr v7, v4

    add-float/2addr v7, v5

    .line 229
    div-float v8, v12, v7

    .line 230
    mul-int v9, v2, p3

    add-int/2addr v9, v0

    .line 231
    aget v10, p2, v9

    cmpl-float v10, v8, v10

    if-lez v10, :cond_4

    .line 232
    aput v8, p2, v9

    .line 235
    :cond_4
    div-float/2addr v6, v7

    .line 236
    mul-int v2, v2, p3

    add-int/2addr v2, v1

    .line 237
    aget v8, p2, v2

    cmpl-float v8, v6, v8

    if-lez v8, :cond_5

    .line 238
    aput v6, p2, v2

    .line 241
    :cond_5
    div-float v2, v4, v7

    .line 242
    mul-int v4, v3, p3

    add-int/2addr v0, v4

    .line 243
    aget v4, p2, v0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_6

    .line 244
    aput v2, p2, v0

    .line 247
    :cond_6
    div-float v0, v5, v7

    .line 248
    mul-int v2, v3, p3

    add-int/2addr v1, v2

    .line 249
    aget v2, p2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    .line 250
    aput v0, p2, v1

    goto :goto_0
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 52
    if-eqz p0, :cond_0

    .line 54
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "Gestures"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/gesture/Gesture;)[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/Gesture;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/v;

    .line 541
    iget-object v2, v0, Lcom/dolphin/browser/gesture/v;->c:[F

    .line 542
    array-length v0, v2

    div-int/lit8 v3, v0, 0x2

    .line 543
    new-array v4, v3, [Landroid/graphics/PointF;

    move v0, v1

    .line 544
    :goto_0
    if-ge v0, v3, :cond_0

    .line 545
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v4, v0

    .line 546
    aget-object v1, v4, v0

    mul-int/lit8 v5, v0, 0x2

    aget v5, v2, v5

    iput v5, v1, Landroid/graphics/PointF;->x:F

    .line 547
    aget-object v1, v4, v0

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    iput v5, v1, Landroid/graphics/PointF;->y:F

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-static {v4}, Lcom/dolphin/browser/gesture/w;->a([Landroid/graphics/PointF;)[Landroid/graphics/PointF;

    move-result-object v0

    .line 550
    invoke-static {v0}, Lcom/dolphin/browser/gesture/w;->b([Landroid/graphics/PointF;)[F

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/dolphin/browser/gesture/Gesture;IZ)[F
    .locals 23

    .prologue
    .line 89
    add-int/lit8 v2, p1, -0x1

    int-to-float v5, v2

    .line 90
    mul-int v2, p1, p1

    new-array v12, v2, [F

    .line 91
    const/4 v2, 0x0

    invoke-static {v12, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/gesture/Gesture;->d()Landroid/graphics/RectF;

    move-result-object v6

    .line 94
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 95
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v7

    .line 96
    div-float v2, v5, v4

    .line 97
    div-float v3, v5, v7

    .line 99
    if-eqz p2, :cond_1

    .line 100
    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    :goto_0
    move v3, v2

    move v4, v2

    .line 127
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    neg-float v13, v2

    .line 128
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    neg-float v14, v2

    .line 129
    const/high16 v2, 0x40000000

    div-float v15, v5, v2

    .line 130
    const/high16 v2, 0x40000000

    div-float v16, v5, v2

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/gesture/Gesture;->a()Ljava/util/ArrayList;

    move-result-object v17

    .line 132
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 136
    const/4 v2, 0x0

    move v11, v2

    :goto_2
    move/from16 v0, v18

    if-ge v11, v0, :cond_f

    .line 137
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/gesture/v;

    .line 138
    iget-object v6, v2, Lcom/dolphin/browser/gesture/v;->c:[F

    .line 139
    array-length v0, v6

    move/from16 v19, v0

    .line 140
    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 141
    const/4 v2, 0x0

    :goto_3
    move/from16 v0, v19

    if-ge v2, v0, :cond_7

    .line 142
    aget v7, v6, v2

    add-float/2addr v7, v13

    mul-float/2addr v7, v4

    add-float/2addr v7, v15

    aput v7, v20, v2

    .line 143
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v2, 0x1

    aget v8, v6, v8

    add-float/2addr v8, v14

    mul-float/2addr v8, v3

    add-float v8, v8, v16

    aput v8, v20, v7

    .line 141
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_0
    move v2, v3

    .line 100
    goto :goto_0

    .line 105
    :cond_1
    div-float/2addr v4, v7

    .line 106
    const/high16 v7, 0x3f800000

    cmpl-float v7, v4, v7

    if-lez v7, :cond_2

    .line 107
    const/high16 v7, 0x3f800000

    div-float v4, v7, v4

    .line 109
    :cond_2
    const v7, 0x3e851eb8

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    .line 110
    cmpg-float v4, v2, v3

    if-gez v4, :cond_3

    :goto_4
    move v3, v2

    move v4, v2

    .line 113
    goto :goto_1

    :cond_3
    move v2, v3

    .line 110
    goto :goto_4

    .line 114
    :cond_4
    cmpl-float v4, v2, v3

    if-lez v4, :cond_6

    .line 115
    sget v4, Lcom/dolphin/browser/gesture/w;->a:F

    mul-float/2addr v4, v3

    .line 116
    cmpg-float v7, v4, v2

    if-gez v7, :cond_5

    move v2, v4

    :cond_5
    move v4, v2

    .line 119
    goto :goto_1

    .line 120
    :cond_6
    sget v4, Lcom/dolphin/browser/gesture/w;->a:F

    mul-float/2addr v4, v2

    .line 121
    cmpg-float v7, v4, v3

    if-gez v7, :cond_12

    move v3, v4

    move v4, v2

    .line 122
    goto/16 :goto_1

    .line 145
    :cond_7
    const/high16 v7, -0x40800000

    .line 146
    const/high16 v6, -0x40800000

    .line 147
    const/4 v2, 0x0

    move v8, v2

    move v9, v6

    move v10, v7

    :goto_5
    move/from16 v0, v19

    if-ge v8, v0, :cond_e

    .line 148
    aget v2, v20, v8

    const/4 v6, 0x0

    cmpg-float v2, v2, v6

    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 149
    :goto_6
    add-int/lit8 v6, v8, 0x1

    aget v6, v20, v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    const/4 v6, 0x0

    .line 150
    :goto_7
    cmpl-float v7, v2, v5

    if-lez v7, :cond_11

    move v7, v5

    .line 153
    :goto_8
    cmpl-float v2, v6, v5

    if-lez v2, :cond_10

    move v2, v5

    .line 156
    :goto_9
    move/from16 v0, p1

    invoke-static {v7, v2, v12, v0}, Lcom/dolphin/browser/gesture/w;->a(FF[FI)V

    .line 157
    const/high16 v6, -0x40800000

    cmpl-float v6, v10, v6

    if-eqz v6, :cond_d

    .line 159
    cmpl-float v6, v10, v7

    if-lez v6, :cond_a

    .line 160
    float-to-double v0, v7

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v6, v0

    .line 161
    sub-float v21, v9, v2

    sub-float v22, v10, v7

    div-float v21, v21, v22

    .line 162
    :goto_a
    cmpg-float v22, v6, v10

    if-gez v22, :cond_b

    .line 163
    sub-float v22, v6, v7

    mul-float v22, v22, v21

    add-float v22, v22, v2

    .line 164
    move/from16 v0, v22

    move/from16 v1, p1

    invoke-static {v6, v0, v12, v1}, Lcom/dolphin/browser/gesture/w;->a(FF[FI)V

    .line 165
    const/high16 v22, 0x3f800000

    add-float v6, v6, v22

    goto :goto_a

    .line 148
    :cond_8
    aget v2, v20, v8

    goto :goto_6

    .line 149
    :cond_9
    add-int/lit8 v6, v8, 0x1

    aget v6, v20, v6

    goto :goto_7

    .line 167
    :cond_a
    cmpg-float v6, v10, v7

    if-gez v6, :cond_b

    .line 168
    float-to-double v0, v10

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v6, v0

    .line 169
    sub-float v21, v9, v2

    sub-float v22, v10, v7

    div-float v21, v21, v22

    .line 170
    :goto_b
    cmpg-float v22, v6, v7

    if-gez v22, :cond_b

    .line 171
    sub-float v22, v6, v7

    mul-float v22, v22, v21

    add-float v22, v22, v2

    .line 172
    move/from16 v0, v22

    move/from16 v1, p1

    invoke-static {v6, v0, v12, v1}, Lcom/dolphin/browser/gesture/w;->a(FF[FI)V

    .line 173
    const/high16 v22, 0x3f800000

    add-float v6, v6, v22

    goto :goto_b

    .line 177
    :cond_b
    cmpl-float v6, v9, v2

    if-lez v6, :cond_c

    .line 178
    float-to-double v0, v2

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v6, v0

    .line 179
    sub-float/2addr v10, v7

    sub-float v21, v9, v2

    div-float v10, v10, v21

    .line 181
    :goto_c
    cmpg-float v21, v6, v9

    if-gez v21, :cond_d

    .line 182
    sub-float v21, v6, v2

    mul-float v21, v21, v10

    add-float v21, v21, v7

    .line 183
    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v6, v12, v1}, Lcom/dolphin/browser/gesture/w;->a(FF[FI)V

    .line 184
    const/high16 v21, 0x3f800000

    add-float v6, v6, v21

    goto :goto_c

    .line 186
    :cond_c
    cmpg-float v6, v9, v2

    if-gez v6, :cond_d

    .line 187
    float-to-double v0, v9

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v6, v0

    .line 188
    sub-float/2addr v10, v7

    sub-float/2addr v9, v2

    div-float v9, v10, v9

    .line 190
    :goto_d
    cmpg-float v10, v6, v2

    if-gez v10, :cond_d

    .line 191
    sub-float v10, v6, v2

    mul-float/2addr v10, v9

    add-float/2addr v10, v7

    .line 192
    move/from16 v0, p1

    invoke-static {v10, v6, v12, v0}, Lcom/dolphin/browser/gesture/w;->a(FF[FI)V

    .line 193
    const/high16 v10, 0x3f800000

    add-float/2addr v6, v10

    goto :goto_d

    .line 147
    :cond_d
    add-int/lit8 v6, v8, 0x2

    move v8, v6

    move v9, v2

    move v10, v7

    goto/16 :goto_5

    .line 136
    :cond_e
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_2

    .line 201
    :cond_f
    return-object v12

    :cond_10
    move v2, v6

    goto/16 :goto_9

    :cond_11
    move v7, v2

    goto/16 :goto_8

    :cond_12
    move v4, v2

    goto/16 :goto_1
.end method

.method public static a(Lcom/dolphin/browser/gesture/v;I)[F
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/gesture/v;->c:[F

    iget v1, p0, Lcom/dolphin/browser/gesture/v;->b:F

    invoke-static {v0, p1, v1}, Lcom/dolphin/browser/gesture/w;->a([FIF)[F

    move-result-object v0

    return-object v0
.end method

.method static a([F)[F
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x40000000

    const/4 v0, 0x0

    .line 275
    .line 277
    array-length v4, p0

    move v2, v0

    move v3, v0

    move v0, v1

    .line 278
    :goto_0
    if-ge v0, v4, :cond_0

    .line 279
    aget v5, p0, v0

    add-float/2addr v3, v5

    .line 280
    add-int/lit8 v0, v0, 0x1

    .line 281
    aget v5, p0, v0

    add-float/2addr v2, v5

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 284
    mul-float/2addr v3, v6

    int-to-float v5, v4

    div-float/2addr v3, v5

    aput v3, v0, v1

    .line 285
    const/4 v1, 0x1

    mul-float/2addr v2, v6

    int-to-float v3, v4

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 287
    return-object v0
.end method

.method static a([FF)[F
    .locals 7

    .prologue
    .line 509
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 510
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 511
    array-length v3, p0

    .line 512
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 513
    aget v4, p0, v0

    mul-float/2addr v4, v1

    add-int/lit8 v5, v0, 0x1

    aget v5, p0, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    .line 514
    aget v5, p0, v0

    mul-float/2addr v5, v2

    add-int/lit8 v6, v0, 0x1

    aget v6, p0, v6

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    .line 515
    aput v4, p0, v0

    .line 516
    add-int/lit8 v4, v0, 0x1

    aput v5, p0, v4

    .line 512
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 518
    :cond_0
    return-object p0
.end method

.method static a([FFF)[F
    .locals 4

    .prologue
    .line 522
    array-length v1, p0

    .line 523
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 524
    aget v2, p0, v0

    add-float/2addr v2, p1

    aput v2, p0, v0

    .line 525
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    add-float/2addr v3, p2

    aput v3, p0, v2

    .line 523
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 527
    :cond_0
    return-object p0
.end method

.method private static a([FI)[F
    .locals 1

    .prologue
    .line 605
    invoke-static {p0}, Lcom/dolphin/browser/gesture/w;->c([F)F

    move-result v0

    .line 606
    invoke-static {p0, p1, v0}, Lcom/dolphin/browser/gesture/w;->a([FIF)[F

    move-result-object v0

    return-object v0
.end method

.method private static a([FIF)[F
    .locals 17

    .prologue
    .line 611
    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    div-float v9, p2, v1

    .line 612
    mul-int/lit8 v10, p1, 0x2

    .line 613
    new-array v8, v10, [F

    .line 614
    if-nez v10, :cond_0

    move-object v1, v8

    .line 669
    :goto_0
    return-object v1

    .line 617
    :cond_0
    const/4 v7, 0x0

    .line 619
    const/4 v1, 0x0

    aget v4, p0, v1

    .line 620
    const/4 v1, 0x1

    aget v5, p0, v1

    .line 621
    const/4 v1, 0x0

    .line 622
    const/4 v3, 0x1

    .line 623
    const/4 v2, 0x1

    .line 624
    aput v4, v8, v1

    .line 625
    const/4 v1, 0x1

    .line 626
    aput v5, v8, v1

    .line 627
    const/4 v6, 0x2

    .line 628
    const/4 v1, 0x0

    .line 629
    move-object/from16 v0, p0

    array-length v11, v0

    div-int/lit8 v11, v11, 0x2

    .line 630
    :goto_1
    if-ge v1, v11, :cond_1

    .line 631
    const/4 v12, 0x1

    cmpl-float v12, v3, v12

    if-nez v12, :cond_3

    .line 632
    add-int/lit8 v1, v1, 0x1

    .line 633
    if-lt v1, v11, :cond_2

    .line 665
    :cond_1
    :goto_2
    if-ge v6, v10, :cond_5

    .line 666
    aput v4, v8, v6

    .line 667
    add-int/lit8 v1, v6, 0x1

    aput v5, v8, v1

    .line 665
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 636
    :cond_2
    mul-int/lit8 v2, v1, 0x2

    aget v3, p0, v2

    .line 637
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p0, v2

    .line 639
    :cond_3
    sub-float v12, v3, v4

    .line 640
    sub-float v13, v2, v5

    .line 641
    mul-float v14, v12, v12

    mul-float v15, v13, v13

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 642
    add-float v15, v7, v14

    cmpl-float v15, v15, v9

    if-ltz v15, :cond_4

    .line 643
    add-int/lit8 v15, v6, 0x1

    if-ge v15, v10, :cond_1

    .line 646
    sub-float v7, v9, v7

    div-float v14, v7, v14

    .line 647
    mul-float v7, v14, v12

    add-float/2addr v7, v4

    .line 648
    mul-float v4, v14, v13

    add-float/2addr v5, v4

    .line 649
    aput v7, v8, v6

    .line 650
    add-int/lit8 v4, v6, 0x1

    .line 651
    aput v5, v8, v4

    .line 652
    add-int/lit8 v4, v4, 0x1

    .line 655
    const/4 v6, 0x0

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    :goto_3
    move/from16 v16, v4

    move v4, v6

    move/from16 v6, v16

    .line 663
    goto :goto_1

    .line 659
    :cond_4
    const/4 v5, 0x1

    .line 660
    const/4 v4, 0x1

    .line 661
    add-float/2addr v7, v14

    move/from16 v16, v4

    move v4, v6

    move v6, v3

    move v3, v5

    move v5, v2

    move/from16 v2, v16

    goto :goto_3

    :cond_5
    move-object v1, v8

    .line 669
    goto :goto_0
.end method

.method private static a([[F)[F
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 484
    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 485
    aget-object v0, p0, v8

    aget v0, v0, v9

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_0

    aget-object v0, p0, v9

    aget v0, v0, v8

    cmpl-float v0, v0, v10

    if-nez v0, :cond_1

    .line 486
    :cond_0
    aput v11, v2, v8

    .line 487
    aput v10, v2, v9

    .line 490
    :cond_1
    aget-object v0, p0, v8

    aget v0, v0, v8

    neg-float v0, v0

    aget-object v1, p0, v9

    aget v1, v1, v9

    sub-float/2addr v0, v1

    .line 491
    aget-object v1, p0, v8

    aget v1, v1, v8

    aget-object v3, p0, v9

    aget v3, v3, v9

    mul-float/2addr v1, v3

    aget-object v3, p0, v8

    aget v3, v3, v9

    aget-object v4, p0, v9

    aget v4, v4, v8

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 493
    const/high16 v3, 0x40000000

    div-float v3, v0, v3

    .line 494
    float-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v0, v1

    sub-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 495
    neg-float v0, v3

    add-float/2addr v0, v1

    .line 496
    neg-float v3, v3

    sub-float v1, v3, v1

    .line 497
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    .line 498
    aput v10, v2, v8

    .line 499
    aput v10, v2, v9

    .line 505
    :goto_0
    return-object v2

    .line 501
    :cond_2
    cmpl-float v3, v0, v1

    if-lez v3, :cond_3

    .line 502
    :goto_1
    aput v11, v2, v8

    .line 503
    aget-object v1, p0, v8

    aget v1, v1, v8

    sub-float/2addr v0, v1

    aget-object v1, p0, v8

    aget v1, v1, v9

    div-float/2addr v0, v1

    aput v0, v2, v9

    goto :goto_0

    :cond_3
    move v0, v1

    .line 501
    goto :goto_1
.end method

.method private static a([Landroid/graphics/PointF;)[Landroid/graphics/PointF;
    .locals 11

    .prologue
    const/high16 v2, 0x7f800000

    const v10, 0x3ed70a3d

    const/high16 v3, -0x800000

    const/4 v4, 0x0

    const/high16 v9, 0x40c00000

    .line 554
    .line 557
    array-length v6, p0

    move v5, v4

    move v1, v3

    move v0, v2

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v7, p0, v5

    .line 558
    iget v8, v7, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v8, v0

    if-gez v8, :cond_0

    iget v0, v7, Landroid/graphics/PointF;->x:F

    .line 559
    :cond_0
    iget v8, v7, Landroid/graphics/PointF;->x:F

    cmpl-float v8, v8, v1

    if-lez v8, :cond_1

    iget v1, v7, Landroid/graphics/PointF;->x:F

    .line 560
    :cond_1
    iget v8, v7, Landroid/graphics/PointF;->y:F

    cmpg-float v8, v8, v2

    if-gez v8, :cond_2

    iget v2, v7, Landroid/graphics/PointF;->y:F

    .line 561
    :cond_2
    iget v8, v7, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v8, v3

    if-lez v8, :cond_3

    iget v3, v7, Landroid/graphics/PointF;->y:F

    .line 557
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 564
    :cond_4
    sub-float v5, v1, v0

    .line 565
    sub-float/2addr v3, v2

    .line 567
    array-length v1, p0

    new-array v6, v1, [Landroid/graphics/PointF;

    .line 568
    mul-float v1, v3, v9

    cmpl-float v1, v5, v1

    if-lez v1, :cond_5

    move v1, v4

    .line 569
    :goto_1
    array-length v4, v6

    if-ge v1, v4, :cond_7

    .line 570
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v6, v1

    .line 571
    aget-object v4, v6, v1

    aget-object v7, p0, v1

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v0

    div-float/2addr v7, v5

    iput v7, v4, Landroid/graphics/PointF;->x:F

    .line 572
    aget-object v4, v6, v1

    aget-object v7, p0, v1

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v2

    div-float/2addr v7, v3

    div-float/2addr v7, v9

    add-float/2addr v7, v10

    iput v7, v4, Landroid/graphics/PointF;->y:F

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 574
    :cond_5
    mul-float v1, v5, v9

    cmpl-float v1, v3, v1

    if-lez v1, :cond_6

    .line 575
    :goto_2
    array-length v1, v6

    if-ge v4, v1, :cond_7

    .line 576
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v6, v4

    .line 577
    aget-object v1, v6, v4

    aget-object v7, p0, v4

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v0

    div-float/2addr v7, v5

    div-float/2addr v7, v9

    add-float/2addr v7, v10

    iput v7, v1, Landroid/graphics/PointF;->x:F

    .line 578
    aget-object v1, v6, v4

    aget-object v7, p0, v4

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v2

    div-float/2addr v7, v3

    iput v7, v1, Landroid/graphics/PointF;->y:F

    .line 575
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 581
    :cond_6
    :goto_3
    array-length v1, v6

    if-ge v4, v1, :cond_7

    .line 582
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v6, v4

    .line 583
    aget-object v1, v6, v4

    aget-object v7, p0, v4

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v0

    div-float/2addr v7, v5

    iput v7, v1, Landroid/graphics/PointF;->x:F

    .line 584
    aget-object v1, v6, v4

    aget-object v7, p0, v4

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v2

    div-float/2addr v7, v3

    iput v7, v1, Landroid/graphics/PointF;->y:F

    .line 581
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 588
    :cond_7
    return-object v6
.end method

.method private static b([F[F)Lcom/dolphin/browser/gesture/ad;
    .locals 12

    .prologue
    const v6, 0x7f7fffff

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 445
    aget v0, p1, v8

    neg-float v0, v0

    aget v1, p1, v11

    neg-float v1, v1

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/gesture/w;->a([FFF)[F

    .line 447
    invoke-static {p0}, Lcom/dolphin/browser/gesture/w;->b([F)[[F

    move-result-object v0

    .line 448
    invoke-static {v0}, Lcom/dolphin/browser/gesture/w;->a([[F)[F

    move-result-object v0

    .line 451
    aget v1, v0, v8

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    aget v1, v0, v11

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 452
    const v0, -0x4036f025

    move v1, v0

    .line 462
    :goto_0
    array-length v9, p0

    move v3, v8

    move v5, v7

    move v4, v6

    .line 463
    :goto_1
    if-ge v3, v9, :cond_1

    .line 464
    aget v0, p0, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    .line 465
    aget v0, p0, v3

    .line 467
    :goto_2
    aget v2, p0, v3

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 468
    aget v2, p0, v3

    .line 470
    :goto_3
    add-int/lit8 v5, v3, 0x1

    .line 471
    aget v3, p0, v5

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3

    .line 472
    aget v3, p0, v5

    .line 474
    :goto_4
    aget v4, p0, v5

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    .line 475
    aget v4, p0, v5

    .line 463
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v7, v4

    move v6, v3

    move v3, v5

    move v4, v0

    move v5, v2

    goto :goto_1

    .line 454
    :cond_0
    aget v1, v0, v11

    float-to-double v1, v1

    aget v0, v0, v8

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 455
    neg-float v1, v0

    invoke-static {p0, v1}, Lcom/dolphin/browser/gesture/w;->a([FF)[F

    move v1, v0

    goto :goto_0

    .line 479
    :cond_1
    new-instance v0, Lcom/dolphin/browser/gesture/ad;

    const/high16 v2, 0x43340000

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v9, 0x400921fb54442d18L

    div-double/2addr v1, v9

    double-to-float v1, v1

    aget v2, p1, v8

    aget v3, p1, v11

    sub-float v4, v5, v4

    sub-float v5, v7, v6

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/gesture/ad;-><init>(FFFFF)V

    return-object v0

    :cond_2
    move v4, v7

    goto :goto_5

    :cond_3
    move v3, v6

    goto :goto_4

    :cond_4
    move v2, v5

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_2
.end method

.method private static b([Landroid/graphics/PointF;)[F
    .locals 5

    .prologue
    .line 592
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [F

    .line 593
    array-length v2, p0

    .line 594
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 595
    mul-int/lit8 v3, v0, 0x2

    aget-object v4, p0, v0

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aput v4, v1, v3

    .line 596
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p0, v0

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aput v4, v1, v3

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_0
    const/16 v0, 0x10

    invoke-static {v1, v0}, Lcom/dolphin/browser/gesture/w;->a([FI)[F

    move-result-object v0

    .line 600
    return-object v0
.end method

.method private static b([F)[[F
    .locals 11

    .prologue
    const/4 v0, 0x2

    const/high16 v10, 0x40000000

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 297
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 298
    aget-object v1, v0, v2

    aput v3, v1, v2

    .line 299
    aget-object v1, v0, v2

    aput v3, v1, v9

    .line 300
    aget-object v1, v0, v9

    aput v3, v1, v2

    .line 301
    aget-object v1, v0, v9

    aput v3, v1, v9

    .line 302
    array-length v3, p0

    move v1, v2

    .line 303
    :goto_0
    if-ge v1, v3, :cond_0

    .line 304
    aget v4, p0, v1

    .line 305
    add-int/lit8 v1, v1, 0x1

    .line 306
    aget v5, p0, v1

    .line 307
    aget-object v6, v0, v2

    aget v7, v6, v2

    mul-float v8, v4, v4

    add-float/2addr v7, v8

    aput v7, v6, v2

    .line 308
    aget-object v6, v0, v2

    aget v7, v6, v9

    mul-float/2addr v4, v5

    add-float/2addr v4, v7

    aput v4, v6, v9

    .line 309
    aget-object v4, v0, v9

    aget-object v6, v0, v2

    aget v6, v6, v9

    aput v6, v4, v2

    .line 310
    aget-object v4, v0, v9

    aget v6, v4, v9

    mul-float/2addr v5, v5

    add-float/2addr v5, v6

    aput v5, v4, v9

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_0
    aget-object v1, v0, v2

    aget v4, v1, v2

    int-to-float v5, v3

    div-float/2addr v5, v10

    div-float/2addr v4, v5

    aput v4, v1, v2

    .line 313
    aget-object v1, v0, v2

    aget v4, v1, v9

    int-to-float v5, v3

    div-float/2addr v5, v10

    div-float/2addr v4, v5

    aput v4, v1, v9

    .line 314
    aget-object v1, v0, v9

    aget v4, v1, v2

    int-to-float v5, v3

    div-float/2addr v5, v10

    div-float/2addr v4, v5

    aput v4, v1, v2

    .line 315
    aget-object v1, v0, v9

    aget v2, v1, v9

    int-to-float v3, v3

    div-float/2addr v3, v10

    div-float/2addr v2, v3

    aput v2, v1, v9

    .line 317
    return-object v0
.end method

.method private static c([F)F
    .locals 6

    .prologue
    .line 673
    const/4 v1, 0x0

    .line 674
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_0

    .line 675
    add-int/lit8 v2, v0, 0x2

    aget v2, p0, v2

    aget v3, p0, v0

    sub-float/2addr v2, v3

    .line 676
    add-int/lit8 v3, v0, 0x3

    aget v3, p0, v3

    add-int/lit8 v4, v0, 0x1

    aget v4, p0, v4

    sub-float/2addr v3, v4

    .line 677
    float-to-double v4, v1

    mul-float v1, v2, v2

    mul-float v2, v3, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    add-double/2addr v1, v4

    double-to-float v1, v1

    .line 674
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 679
    :cond_0
    return v1
.end method
