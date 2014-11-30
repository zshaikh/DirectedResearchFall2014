.class public Lcom/acmeaom/android/c/h/m;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Lcom/acmeaom/android/c/h/m;

.field static e:Lcom/acmeaom/android/a/a/d/c;

.field private static final f:Ljava/util/HashMap;

.field private static final g:Lcom/acmeaom/android/c/i/b;


# instance fields
.field public final b:I

.field public final c:J

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v1, 0x0

    .line 42
    new-instance v0, Lcom/acmeaom/android/c/h/m;

    const/4 v5, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/acmeaom/android/c/h/m;-><init>(JJI)V

    sput-object v0, Lcom/acmeaom/android/c/h/m;->a:Lcom/acmeaom/android/c/h/m;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/acmeaom/android/c/h/m;->f:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lcom/acmeaom/android/a/a/d/c;

    const-wide v1, 0x3f79ce075f6fd220L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/d/c;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/c/h/m;->e:Lcom/acmeaom/android/a/a/d/c;

    .line 264
    new-instance v0, Lcom/acmeaom/android/c/i/b;

    const-class v1, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/c/i/b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/acmeaom/android/c/h/m;->g:Lcom/acmeaom/android/c/i/b;

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lcom/acmeaom/android/c/h/m;->c:J

    .line 52
    iput-wide p3, p0, Lcom/acmeaom/android/c/h/m;->d:J

    .line 53
    iput p5, p0, Lcom/acmeaom/android/c/h/m;->b:I

    .line 54
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/a/d/b;
    .locals 7

    .prologue
    .line 90
    new-instance v0, Lcom/acmeaom/android/a/a/d/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/d/b;-><init>()V

    .line 93
    iget v1, p0, Lcom/acmeaom/android/a/g/m;->d:F

    const v2, 0x4b98dfc2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    sub-float/2addr v1, v2

    const/high16 v2, 0x43340000

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/a/a/d/b;->a(D)V

    .line 95
    const-wide v1, 0x4056800000000000L

    iget v3, p0, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v3, v3

    const-wide v5, 0x415854a639044a0dL

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    const-wide v5, 0x4076800000000000L

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/a/a/d/b;->b(D)V

    .line 98
    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/b/e;)Lcom/acmeaom/android/a/g/m;
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/b/e;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/c/h/m;->a(Ljava/util/ArrayList;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const-wide v7, -0x3f99800000000000L

    const-wide v5, 0x4066800000000000L

    .line 59
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/g/m;-><init>()V

    .line 61
    invoke-static {p0}, Lcom/acmeaom/android/a/a/d/b;->a(Lcom/acmeaom/android/a/a/d/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    sget-object v0, Lcom/acmeaom/android/a/g/m;->b:Lcom/acmeaom/android/a/g/m;

    .line 86
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v1

    cmpg-double v1, v1, v7

    if-gez v1, :cond_3

    .line 66
    const-string v1, "passed coordinate with questionable longitude == %lf"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0, v7, v8}, Lcom/acmeaom/android/a/a/d/b;->a(D)V

    .line 73
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v1

    div-double/2addr v1, v5

    const-wide/high16 v3, 0x3ff0000000000000L

    add-double/2addr v1, v3

    const-wide v3, 0x41731bf840000000L

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->d:F

    .line 75
    const-wide v1, 0x4056800000000000L

    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide v3, 0x3f81df46a2529d39L

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 79
    iget v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    .line 80
    const v1, 0x40490fdb

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    .line 84
    :cond_2
    :goto_2
    iget v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    const v2, 0x4ac2a532

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_1

    .line 69
    const-string v1, "passed coordinate with questionable longitude == %lf"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0, v5, v6}, Lcom/acmeaom/android/a/a/d/b;->a(D)V

    goto :goto_1

    .line 81
    :cond_4
    iget v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    float-to-double v1, v1

    const-wide v3, -0x3ff6de04abbbd2e8L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 82
    const v1, -0x3fb6f025

    iput v1, v0, Lcom/acmeaom/android/a/g/m;->e:F

    goto :goto_2
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/acmeaom/android/a/g/m;
    .locals 32

    .prologue
    .line 158
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 159
    if-nez v17, :cond_0

    .line 160
    sget-object v1, Lcom/acmeaom/android/a/g/m;->b:Lcom/acmeaom/android/a/g/m;

    .line 198
    :goto_0
    return-object v1

    .line 163
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/a/a/d/a;

    .line 164
    invoke-static {v1}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/a;)Lcom/acmeaom/android/a/g/n;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/acmeaom/android/a/g/n;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    sget-object v1, Lcom/acmeaom/android/a/g/m;->b:Lcom/acmeaom/android/a/g/m;

    goto :goto_0

    .line 169
    :cond_1
    iget v2, v1, Lcom/acmeaom/android/a/g/n;->b:F

    float-to-double v10, v2

    .line 170
    iget v1, v1, Lcom/acmeaom/android/a/g/n;->c:F

    float-to-double v8, v1

    .line 171
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_2

    .line 172
    new-instance v1, Lcom/acmeaom/android/a/g/m;

    double-to-float v2, v10

    double-to-float v3, v8

    invoke-direct {v1, v2, v3}, Lcom/acmeaom/android/a/g/m;-><init>(FF)V

    goto :goto_0

    .line 175
    :cond_2
    const-wide/16 v6, 0x0

    .line 176
    const-wide/16 v4, 0x0

    .line 177
    const-wide/16 v2, 0x0

    .line 178
    const/4 v1, 0x1

    move-wide v13, v10

    move-wide/from16 v24, v2

    move v2, v1

    move-wide/from16 v26, v4

    move-wide/from16 v3, v24

    move-wide/from16 v28, v6

    move-wide/from16 v5, v26

    move-wide/from16 v30, v8

    move-wide/from16 v9, v30

    move-wide/from16 v7, v28

    :goto_1
    move/from16 v0, v17

    if-ge v2, v0, :cond_4

    .line 179
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/a/a/d/a;

    .line 180
    invoke-static {v1}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/a;)Lcom/acmeaom/android/a/g/n;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/acmeaom/android/a/g/n;->a()Z

    move-result v11

    if-nez v11, :cond_3

    .line 182
    sget-object v1, Lcom/acmeaom/android/a/g/m;->b:Lcom/acmeaom/android/a/g/m;

    goto :goto_0

    .line 184
    :cond_3
    iget v11, v1, Lcom/acmeaom/android/a/g/n;->b:F

    float-to-double v15, v11

    .line 185
    iget v1, v1, Lcom/acmeaom/android/a/g/n;->c:F

    float-to-double v11, v1

    .line 187
    mul-double v18, v13, v11

    mul-double v20, v15, v9

    sub-double v18, v18, v20

    add-double v7, v7, v18

    .line 188
    add-double v18, v13, v15

    mul-double v20, v13, v11

    mul-double v22, v15, v9

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    add-double v5, v5, v18

    .line 189
    add-double v18, v9, v11

    mul-double/2addr v13, v11

    mul-double/2addr v9, v15

    sub-double v9, v13, v9

    mul-double v9, v9, v18

    add-double/2addr v3, v9

    .line 178
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-wide v9, v11

    move-wide v13, v15

    goto :goto_1

    .line 194
    :cond_4
    const-wide/high16 v1, 0x3fe0000000000000L

    mul-double/2addr v1, v7

    .line 195
    const-wide/high16 v7, 0x4018000000000000L

    mul-double/2addr v7, v1

    div-double/2addr v5, v7

    .line 196
    const-wide/high16 v7, 0x4018000000000000L

    mul-double/2addr v1, v7

    div-double v2, v3, v1

    .line 198
    new-instance v1, Lcom/acmeaom/android/a/g/m;

    double-to-float v4, v5

    double-to-float v2, v2

    invoke-direct {v1, v4, v2}, Lcom/acmeaom/android/a/g/m;-><init>(FF)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/acmeaom/android/a/a/d/a;)Lcom/acmeaom/android/a/g/n;
    .locals 5

    .prologue
    .line 104
    new-instance v0, Lcom/acmeaom/android/a/a/d/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/d/b;-><init>()V

    .line 108
    if-nez p0, :cond_0

    .line 109
    const-string v0, "passed nil parameter"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/acmeaom/android/a/g/n;->a:Lcom/acmeaom/android/a/g/n;

    .line 154
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/acmeaom/android/a/a/d/a;->a:Lcom/acmeaom/android/a/a/d/b;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/d/b;->b(Lcom/acmeaom/android/a/a/d/b;)V

    .line 114
    invoke-static {v0}, Lcom/acmeaom/android/a/a/d/b;->a(Lcom/acmeaom/android/a/a/d/b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    sget-object v0, Lcom/acmeaom/android/a/g/n;->a:Lcom/acmeaom/android/a/g/n;

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {v0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/a/d/b;)Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/acmeaom/android/a/g/m;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/g/n;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/acmeaom/android/a/a/d/a;->b:Lcom/acmeaom/android/a/a/d/c;

    iget-wide v1, v1, Lcom/acmeaom/android/a/a/d/c;->a:D

    sget-object v3, Lcom/acmeaom/android/c/h/m;->e:Lcom/acmeaom/android/a/a/d/c;

    iget-wide v3, v3, Lcom/acmeaom/android/a/a/d/c;->a:D

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/acmeaom/android/a/g/n;->d:F

    goto :goto_0

    .line 152
    :cond_2
    sget-object v0, Lcom/acmeaom/android/a/g/n;->a:Lcom/acmeaom/android/a/g/n;

    goto :goto_0
.end method

.method private e()Lcom/acmeaom/android/a/g/m;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L

    .line 284
    iget v0, p0, Lcom/acmeaom/android/c/h/m;->b:I

    int-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 285
    const-wide v2, 0x41831bf840000000L

    .line 287
    iget-wide v4, p0, Lcom/acmeaom/android/c/h/m;->c:J

    long-to-double v4, v4

    add-double/2addr v4, v8

    mul-double/2addr v4, v0

    .line 288
    iget-wide v6, p0, Lcom/acmeaom/android/c/h/m;->d:J

    long-to-double v6, v6

    add-double/2addr v6, v8

    mul-double/2addr v0, v6

    sub-double/2addr v0, v8

    .line 289
    new-instance v6, Lcom/acmeaom/android/a/g/m;

    mul-double/2addr v4, v2

    double-to-float v4, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-direct {v6, v4, v0}, Lcom/acmeaom/android/a/g/m;-><init>(FF)V

    return-object v6
.end method

.method private f()Lcom/acmeaom/android/a/a/a/b;
    .locals 18

    .prologue
    .line 293
    const/high16 v1, 0x3f000000

    move-object/from16 v0, p0

    iget v2, v0, Lcom/acmeaom/android/c/h/m;->b:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/acmeaom/android/c/d/a;->a(FF)F

    move-result v1

    .line 294
    const v2, 0x4b98dfc2

    mul-float/2addr v2, v1

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/acmeaom/android/c/h/m;->e()Lcom/acmeaom/android/a/g/m;

    move-result-object v7

    .line 297
    new-instance v1, Lcom/acmeaom/android/a/a/a/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000

    const/4 v13, 0x0

    iget v14, v7, Lcom/acmeaom/android/a/g/m;->d:F

    iget v15, v7, Lcom/acmeaom/android/a/g/m;->e:F

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000

    move v7, v2

    invoke-direct/range {v1 .. v17}, Lcom/acmeaom/android/a/a/a/b;-><init>(FFFFFFFFFFFFFFFF)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/c/h/m;)I
    .locals 10

    .prologue
    .line 414
    iget-wide v7, p0, Lcom/acmeaom/android/c/h/m;->c:J

    .line 415
    iget-wide v5, p0, Lcom/acmeaom/android/c/h/m;->d:J

    .line 416
    iget-wide v3, p1, Lcom/acmeaom/android/c/h/m;->c:J

    .line 417
    iget-wide v1, p1, Lcom/acmeaom/android/c/h/m;->d:J

    .line 418
    iget v0, p1, Lcom/acmeaom/android/c/h/m;->b:I

    iget v9, p0, Lcom/acmeaom/android/c/h/m;->b:I

    if-le v0, v9, :cond_0

    .line 419
    iget v0, p1, Lcom/acmeaom/android/c/h/m;->b:I

    iget v9, p0, Lcom/acmeaom/android/c/h/m;->b:I

    sub-int/2addr v0, v9

    .line 420
    shr-long/2addr v3, v0

    .line 421
    shr-long/2addr v1, v0

    .line 430
    :goto_0
    cmp-long v3, v7, v3

    if-nez v3, :cond_2

    cmp-long v1, v5, v1

    if-nez v1, :cond_2

    .line 433
    :goto_1
    return v0

    .line 422
    :cond_0
    iget v0, p0, Lcom/acmeaom/android/c/h/m;->b:I

    iget v9, p1, Lcom/acmeaom/android/c/h/m;->b:I

    if-le v0, v9, :cond_1

    .line 423
    iget v0, p0, Lcom/acmeaom/android/c/h/m;->b:I

    iget v9, p1, Lcom/acmeaom/android/c/h/m;->b:I

    sub-int/2addr v0, v9

    .line 424
    shr-long/2addr v7, v0

    .line 425
    shr-long/2addr v5, v0

    goto :goto_0

    .line 427
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 433
    :cond_2
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method public a(Ljava/util/HashSet;)I
    .locals 3

    .prologue
    .line 381
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    const/4 v0, 0x0

    .line 399
    :cond_0
    :goto_0
    return v0

    .line 385
    :cond_1
    const v0, 0x7fffffff

    .line 386
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/h/m;

    .line 389
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/c/h/m;)I

    move-result v0

    .line 390
    if-le v1, v0, :cond_2

    .line 393
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :goto_2
    move v1, v0

    .line 398
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    iget v0, p0, Lcom/acmeaom/android/c/h/m;->b:I

    int-to-long v0, v0

    move-wide v1, v0

    :goto_0
    cmp-long v0, v1, v8

    if-lez v0, :cond_2

    .line 209
    sub-long v4, v1, v10

    long-to-int v0, v4

    shl-long v4, v10, v0

    .line 210
    const/4 v0, 0x0

    .line 211
    iget-wide v6, p0, Lcom/acmeaom/android/c/h/m;->c:J

    and-long/2addr v6, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 214
    :cond_0
    iget-wide v6, p0, Lcom/acmeaom/android/c/h/m;->d:J

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    .line 215
    add-int/lit8 v0, v0, 0x2

    .line 217
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    sub-long v0, v1, v10

    move-wide v1, v0

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/a/g/p;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000

    .line 268
    sget-object v0, Lcom/acmeaom/android/c/h/m;->g:Lcom/acmeaom/android/c/i/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/i/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/g/m;

    .line 270
    iget v1, p0, Lcom/acmeaom/android/c/h/m;->b:I

    int-to-float v1, v1

    invoke-static {v6, v1}, Lcom/acmeaom/android/c/d/a;->a(FF)F

    move-result v1

    .line 271
    const v2, 0x4c18dfc2

    .line 273
    iget-object v3, p1, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    iget-wide v4, p0, Lcom/acmeaom/android/c/h/m;->c:J

    long-to-float v4, v4

    mul-float/2addr v4, v1

    iput v4, v3, Lcom/acmeaom/android/a/g/m;->d:F

    .line 274
    iget-object v3, p1, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    iget-wide v4, p0, Lcom/acmeaom/android/c/h/m;->d:J

    long-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v4, v6

    iput v4, v3, Lcom/acmeaom/android/a/g/m;->e:F

    .line 275
    iget-object v3, p1, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    invoke-static {v3, v2, v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/g/m;FLcom/acmeaom/android/a/g/m;)V

    .line 276
    iget-object v3, p1, Lcom/acmeaom/android/a/g/p;->a:Lcom/acmeaom/android/a/g/m;

    invoke-virtual {v3, v0}, Lcom/acmeaom/android/a/g/m;->a(Lcom/acmeaom/android/a/g/m;)V

    .line 278
    mul-float v0, v2, v1

    .line 279
    iget-object v1, p1, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iput v0, v1, Lcom/acmeaom/android/a/g/m;->d:F

    .line 280
    iget-object v1, p1, Lcom/acmeaom/android/a/g/p;->b:Lcom/acmeaom/android/a/g/m;

    iput v0, v1, Lcom/acmeaom/android/a/g/m;->e:F

    .line 281
    return-void
.end method

.method public b()Lcom/acmeaom/android/c/h/m;
    .locals 0

    .prologue
    .line 240
    return-object p0
.end method

.method public c()[Lcom/acmeaom/android/c/h/m;
    .locals 15

    .prologue
    .line 314
    sget-object v0, Lcom/acmeaom/android/c/h/m;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/acmeaom/android/c/h/m;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acmeaom/android/c/h/m;

    .line 316
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    .line 355
    :goto_0
    return-object v0

    .line 328
    :cond_0
    iget-wide v0, p0, Lcom/acmeaom/android/c/h/m;->c:J

    const-wide/16 v2, 0x2

    mul-long v8, v0, v2

    .line 329
    iget-wide v0, p0, Lcom/acmeaom/android/c/h/m;->d:J

    const-wide/16 v2, 0x2

    mul-long v6, v0, v2

    .line 330
    iget v0, p0, Lcom/acmeaom/android/c/h/m;->b:I

    add-int/lit8 v5, v0, 0x1

    .line 332
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 333
    const-wide/16 v0, 0x0

    move-wide v12, v0

    :goto_1
    const-wide/16 v0, 0x2

    cmp-long v0, v12, v0

    if-gez v0, :cond_2

    .line 334
    const-wide/16 v0, 0x0

    move-wide v10, v0

    :goto_2
    const-wide/16 v0, 0x2

    cmp-long v0, v10, v0

    if-gez v0, :cond_1

    .line 339
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-eqz v0, :cond_4

    .line 340
    const-wide/16 v0, 0x1

    add-long v1, v8, v0

    .line 344
    :goto_3
    const-wide/16 v3, 0x0

    cmp-long v0, v10, v3

    if-eqz v0, :cond_3

    .line 345
    const-wide/16 v3, 0x1

    add-long/2addr v3, v6

    .line 347
    :goto_4
    new-instance v0, Lcom/acmeaom/android/c/h/m;

    invoke-direct/range {v0 .. v5}, Lcom/acmeaom/android/c/h/m;-><init>(JJI)V

    .line 349
    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 334
    const-wide/16 v0, 0x1

    add-long/2addr v0, v10

    move-wide v10, v0

    goto :goto_2

    .line 333
    :cond_1
    const-wide/16 v0, 0x1

    add-long/2addr v0, v12

    move-wide v12, v0

    goto :goto_1

    .line 352
    :cond_2
    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/acmeaom/android/c/h/m;

    .line 353
    invoke-virtual {v14, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 354
    sget-object v1, Lcom/acmeaom/android/c/h/m;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-wide v3, v6

    goto :goto_4

    :cond_4
    move-wide v1, v8

    goto :goto_3
.end method

.method public d()Lcom/acmeaom/android/a/a/a/b;
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/acmeaom/android/c/h/m;->f()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 226
    instance-of v1, p1, Lcom/acmeaom/android/c/h/m;

    if-nez v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    check-cast p1, Lcom/acmeaom/android/c/h/m;

    .line 231
    iget-wide v1, p0, Lcom/acmeaom/android/c/h/m;->c:J

    iget-wide v3, p1, Lcom/acmeaom/android/c/h/m;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/acmeaom/android/c/h/m;->d:J

    iget-wide v3, p1, Lcom/acmeaom/android/c/h/m;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p0, Lcom/acmeaom/android/c/h/m;->b:I

    iget v2, p1, Lcom/acmeaom/android/c/h/m;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 236
    iget v0, p0, Lcom/acmeaom/android/c/h/m;->b:I

    iget v1, p0, Lcom/acmeaom/android/c/h/m;->b:I

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    long-to-int v1, v1

    shl-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/acmeaom/android/c/h/m;->c:J

    iget v4, p0, Lcom/acmeaom/android/c/h/m;->b:I

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    mul-long/2addr v4, v6

    long-to-int v4, v4

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, Lcom/acmeaom/android/c/h/m;->d:J

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 244
    const-string v0, "{(%d, %d) @ %d}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/acmeaom/android/c/h/m;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/acmeaom/android/c/h/m;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/acmeaom/android/c/h/m;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
