.class public Lcom/dolphin/browser/gesture/v;
.super Ljava/lang/Object;
.source "GestureStroke.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:F

.field public final c:[F

.field private final d:[J

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Landroid/graphics/RectF;F[F[J)V
    .locals 5

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/v;->a:Landroid/graphics/RectF;

    .line 94
    iput p2, p0, Lcom/dolphin/browser/gesture/v;->b:F

    .line 95
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/dolphin/browser/gesture/v;->c:[F

    .line 96
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/dolphin/browser/gesture/v;->d:[J

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/gesture/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 55
    mul-int/lit8 v1, v6, 0x2

    new-array v7, v1, [F

    .line 56
    new-array v8, v6, [J

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v2, 0x0

    .line 62
    const/4 v1, 0x0

    move v5, v2

    move v2, v3

    move-object v3, v4

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_1

    .line 63
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/gesture/q;

    .line 64
    mul-int/lit8 v9, v4, 0x2

    iget v10, v1, Lcom/dolphin/browser/gesture/q;->a:F

    aput v10, v7, v9

    .line 65
    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    iget v10, v1, Lcom/dolphin/browser/gesture/q;->b:F

    aput v10, v7, v9

    .line 66
    iget-wide v9, v1, Lcom/dolphin/browser/gesture/q;->c:J

    aput-wide v9, v8, v5

    .line 68
    if-nez v3, :cond_0

    .line 69
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 70
    iget v3, v1, Lcom/dolphin/browser/gesture/q;->b:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 71
    iget v3, v1, Lcom/dolphin/browser/gesture/q;->a:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 72
    iget v3, v1, Lcom/dolphin/browser/gesture/q;->a:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 73
    iget v1, v1, Lcom/dolphin/browser/gesture/q;->b:F

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 74
    const/4 v1, 0x0

    .line 80
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 62
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move v2, v1

    goto :goto_0

    .line 76
    :cond_0
    float-to-double v9, v2

    iget v2, v1, Lcom/dolphin/browser/gesture/q;->a:F

    add-int/lit8 v11, v4, -0x1

    mul-int/lit8 v11, v11, 0x2

    aget v11, v7, v11

    sub-float/2addr v2, v11

    float-to-double v11, v2

    const-wide/high16 v13, 0x4000000000000000L

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget v2, v1, Lcom/dolphin/browser/gesture/q;->b:F

    add-int/lit8 v13, v4, -0x1

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v13, v7, v13

    sub-float/2addr v2, v13

    float-to-double v13, v2

    const-wide/high16 v15, 0x4000000000000000L

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    double-to-float v2, v9

    .line 78
    iget v9, v1, Lcom/dolphin/browser/gesture/q;->a:F

    iget v1, v1, Lcom/dolphin/browser/gesture/q;->b:F

    invoke-virtual {v3, v9, v1}, Landroid/graphics/RectF;->union(FF)V

    move v1, v2

    move-object v2, v3

    goto :goto_1

    .line 83
    :cond_1
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/dolphin/browser/gesture/v;->d:[J

    .line 84
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/dolphin/browser/gesture/v;->c:[F

    .line 85
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/dolphin/browser/gesture/v;->a:Landroid/graphics/RectF;

    .line 86
    move-object/from16 v0, p0

    iput v2, v0, Lcom/dolphin/browser/gesture/v;->b:F

    .line 87
    return-void
.end method

.method static a(Ljava/io/DataInputStream;)Lcom/dolphin/browser/gesture/v;
    .locals 4

    .prologue
    .line 265
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 269
    invoke-static {p0}, Lcom/dolphin/browser/gesture/q;->a(Ljava/io/DataInputStream;)Lcom/dolphin/browser/gesture/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    new-instance v0, Lcom/dolphin/browser/gesture/v;

    invoke-direct {v0, v2}, Lcom/dolphin/browser/gesture/v;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private b(I)V
    .locals 13

    .prologue
    const/high16 v11, 0x40400000

    const/high16 v10, 0x40000000

    const/4 v1, 0x0

    .line 165
    iget-object v6, p0, Lcom/dolphin/browser/gesture/v;->c:[F

    .line 166
    array-length v7, v6

    .line 168
    const/4 v4, 0x0

    .line 173
    const/4 v0, 0x0

    move v5, v0

    move v3, v1

    :goto_0
    if-ge v5, v7, :cond_3

    .line 174
    aget v2, v6, v5

    .line 175
    add-int/lit8 v0, v5, 0x1

    aget v0, v6, v0

    .line 176
    if-nez v4, :cond_1

    .line 177
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 178
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, p1

    .line 179
    :goto_1
    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 180
    int-to-float v4, v3

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v4, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 179
    add-int/lit8 v3, v3, -0x3

    goto :goto_1

    :cond_0
    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 173
    :goto_2
    add-int/lit8 v3, v5, 0x2

    move v5, v3

    move-object v4, v2

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 185
    :cond_1
    sub-float v8, v2, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 186
    sub-float v9, v0, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 187
    cmpl-float v8, v8, v11

    if-gez v8, :cond_2

    cmpl-float v8, v9, v11

    if-ltz v8, :cond_4

    .line 188
    :cond_2
    add-float v8, v2, v3

    div-float/2addr v8, v10

    add-float v9, v0, v1

    div-float/2addr v9, v10

    invoke-virtual {v4, v3, v1, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v1, v2

    move-object v2, v4

    .line 190
    goto :goto_2

    .line 194
    :cond_3
    iput-object v4, p0, Lcom/dolphin/browser/gesture/v;->f:Landroid/graphics/Path;

    .line 195
    return-void

    :cond_4
    move v0, v1

    move-object v2, v4

    move v1, v3

    goto :goto_2
.end method

.method private c()V
    .locals 13

    .prologue
    const/high16 v11, 0x40400000

    const/high16 v10, 0x40000000

    const/4 v1, 0x0

    .line 126
    iget-object v6, p0, Lcom/dolphin/browser/gesture/v;->c:[F

    .line 127
    array-length v7, v6

    .line 129
    const/4 v4, 0x0

    .line 134
    const/4 v0, 0x0

    move v5, v0

    move v3, v1

    :goto_0
    if-ge v5, v7, :cond_2

    .line 135
    aget v2, v6, v5

    .line 136
    add-int/lit8 v0, v5, 0x1

    aget v0, v6, v0

    .line 137
    if-nez v4, :cond_0

    .line 138
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 139
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 134
    :goto_1
    add-int/lit8 v3, v5, 0x2

    move v5, v3

    move-object v4, v2

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_0
    sub-float v8, v2, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 144
    sub-float v9, v0, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 145
    cmpl-float v8, v8, v11

    if-gez v8, :cond_1

    cmpl-float v8, v9, v11

    if-ltz v8, :cond_3

    .line 146
    :cond_1
    add-float v8, v2, v3

    div-float/2addr v8, v10

    add-float v9, v0, v1

    div-float/2addr v9, v10

    invoke-virtual {v4, v3, v1, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v1, v2

    move-object v2, v4

    .line 148
    goto :goto_1

    .line 153
    :cond_2
    iput-object v4, p0, Lcom/dolphin/browser/gesture/v;->e:Landroid/graphics/Path;

    .line 154
    return-void

    :cond_3
    move v0, v1

    move-object v2, v4

    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/gesture/v;->e:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/dolphin/browser/gesture/v;->c()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/v;->e:Landroid/graphics/Path;

    return-object v0
.end method

.method public a(I)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/v;->b(I)V

    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/gesture/v;->f:Landroid/graphics/Path;

    return-object v0
.end method

.method public a(Landroid/graphics/PointF;IZ)Landroid/graphics/Path;
    .locals 12

    .prologue
    const/high16 v11, 0x40000000

    const/4 v1, 0x0

    const/high16 v10, 0x40400000

    .line 304
    iget-object v6, p0, Lcom/dolphin/browser/gesture/v;->c:[F

    .line 305
    array-length v0, v6

    mul-int/lit8 v2, p2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 307
    const/4 v2, 0x0

    .line 312
    const/4 v0, 0x0

    move-object v3, v2

    move v2, v1

    :goto_0
    if-ge v0, v7, :cond_5

    .line 313
    aget v5, v6, v0

    .line 314
    add-int/lit8 v4, v0, 0x1

    aget v4, v6, v4

    .line 315
    if-nez v3, :cond_3

    .line 316
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 317
    if-eqz p3, :cond_0

    .line 319
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v4, v10, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 320
    const/high16 v1, 0x40800000

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v4, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 321
    const/high16 v1, 0x40a00000

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v4, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 322
    const/high16 v1, 0x40c00000

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v4, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 324
    :cond_0
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, v4

    move v2, v5

    .line 336
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 337
    iput v5, p1, Landroid/graphics/PointF;->x:F

    .line 338
    iput v4, p1, Landroid/graphics/PointF;->y:F

    .line 312
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 328
    :cond_3
    sub-float v8, v5, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 329
    sub-float v9, v4, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 330
    cmpl-float v8, v8, v10

    if-gez v8, :cond_4

    cmpl-float v8, v9, v10

    if-ltz v8, :cond_1

    .line 331
    :cond_4
    add-float v8, v5, v2

    div-float/2addr v8, v11

    add-float v9, v4, v1

    div-float/2addr v9, v11

    invoke-virtual {v3, v2, v1, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v1, v4

    move v2, v5

    .line 333
    goto :goto_1

    .line 342
    :cond_5
    return-object v3
.end method

.method a(Ljava/io/DataOutputStream;)V
    .locals 6

    .prologue
    .line 246
    iget-object v1, p0, Lcom/dolphin/browser/gesture/v;->c:[F

    .line 247
    iget-object v2, p0, Lcom/dolphin/browser/gesture/v;->d:[J

    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/gesture/v;->c:[F

    array-length v3, v0

    .line 251
    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 253
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 255
    aget v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 257
    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 259
    div-int/lit8 v4, v0, 0x2

    aget-wide v4, v2, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 253
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/gesture/v;->c:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 101
    new-instance v0, Lcom/dolphin/browser/gesture/v;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/v;->a:Landroid/graphics/RectF;

    iget v2, p0, Lcom/dolphin/browser/gesture/v;->b:F

    iget-object v3, p0, Lcom/dolphin/browser/gesture/v;->c:[F

    iget-object v4, p0, Lcom/dolphin/browser/gesture/v;->d:[J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/gesture/v;-><init>(Landroid/graphics/RectF;F[F[J)V

    return-object v0
.end method
