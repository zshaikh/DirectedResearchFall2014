.class public Lcom/acmeaom/android/b/c/g/j;
.super Lcom/acmeaom/android/a/a/b/ac;
.source "ProGuard"


# static fields
.field private static final a:Lcom/acmeaom/android/a/a/c/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/n;-><init>()V

    sput-object v0, Lcom/acmeaom/android/b/c/g/j;->a:Lcom/acmeaom/android/a/a/c/n;

    .line 78
    const-string v0, "8"

    invoke-static {v0}, Lcom/acmeaom/android/b/c/g/j;->a(Ljava/lang/String;)Lcom/acmeaom/android/c/e/a;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/acmeaom/android/b/c/g/j;->a:Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v0}, Lcom/acmeaom/android/c/e/a;->a()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/a/c/n;->a(Lcom/acmeaom/android/a/a/c/n;)V

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/acmeaom/android/a/a/b/ac;-><init>()V

    .line 161
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/acmeaom/android/c/e/a;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lcom/acmeaom/android/c/e/a;

    const-string v1, "Verdana-Bold"

    const/high16 v2, 0x41100000

    invoke-static {}, Lcom/acmeaom/android/a/i/d;->c()Lcom/acmeaom/android/a/i/d;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/acmeaom/android/c/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;FLcom/acmeaom/android/a/i/d;)V

    return-object v0
.end method

.method private b(Lcom/acmeaom/android/b/c/g/e;F)Lcom/acmeaom/android/a/a/c/d;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/high16 v9, 0x3f000000

    const/high16 v8, 0x3fc00000

    .line 279
    sget-object v1, Lcom/acmeaom/android/b/c/g/j;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/n;->a:F

    sget-object v2, Lcom/acmeaom/android/b/c/g/j;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->b:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 280
    sget-object v1, Lcom/acmeaom/android/b/c/g/j;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/n;->b:F

    .line 288
    :goto_0
    sget-wide v2, Lcom/acmeaom/android/a/b/a;->a:D

    double-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/acmeaom/android/c/d/a;->d(F)F

    move-result v1

    const/high16 v2, 0x40000000

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    sub-float/2addr v1, v2

    .line 289
    new-instance v7, Lcom/acmeaom/android/a/a/c/n;

    invoke-direct {v7, v1, v1}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    .line 291
    invoke-static {}, Lcom/acmeaom/android/a/a/c/c;->a()Lcom/acmeaom/android/a/a/c/c;

    move-result-object v5

    .line 293
    iget v1, v7, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 294
    iget v2, v7, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 296
    const/16 v3, 0x8

    mul-int/lit8 v4, v1, 0x4

    sget-object v6, Lcom/acmeaom/android/a/a/c/h;->b:Lcom/acmeaom/android/a/a/c/h;

    invoke-virtual {v6}, Lcom/acmeaom/android/a/a/c/h;->ordinal()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/acmeaom/android/a/a/c/d;->a(Ljava/lang/Object;IIIILcom/acmeaom/android/a/a/c/c;I)Lcom/acmeaom/android/a/a/c/d;

    move-result-object v0

    .line 304
    invoke-static {v5}, Lcom/acmeaom/android/a/a/c/c;->a(Lcom/acmeaom/android/a/a/c/c;)V

    .line 310
    new-instance v1, Lcom/acmeaom/android/a/a/c/m;

    invoke-static {}, Lcom/acmeaom/android/a/a/c/l;->b()Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/acmeaom/android/a/a/c/m;-><init>(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/c/n;)V

    .line 311
    invoke-static {v1, v8, v8}, Lcom/acmeaom/android/a/a/c/m;->a(Lcom/acmeaom/android/a/a/c/m;FF)Lcom/acmeaom/android/a/a/c/m;

    move-result-object v1

    .line 312
    invoke-static {}, Lcom/acmeaom/android/a/a/c/a;->a()Lcom/acmeaom/android/a/a/c/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/i;->b(Lcom/acmeaom/android/a/a/c/m;Lcom/acmeaom/android/a/a/c/a;)Lcom/acmeaom/android/a/a/c/i;

    move-result-object v1

    .line 314
    invoke-static {v0, p2, p2}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;FF)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/g/j;->a(Lcom/acmeaom/android/b/c/g/e;)Lcom/acmeaom/android/a/i/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/a/i/d;->e()Lcom/acmeaom/android/a/a/c/b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/b;)V

    .line 316
    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V

    .line 317
    invoke-static {v0}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;)V

    .line 319
    invoke-static {}, Lcom/acmeaom/android/a/i/d;->c()Lcom/acmeaom/android/a/i/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/a/i/d;->e()Lcom/acmeaom/android/a/a/c/b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/acmeaom/android/a/a/c/d;->b(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/b;)V

    .line 320
    invoke-static {v0, v8}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;F)V

    .line 321
    invoke-static {v0, v1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V

    .line 322
    invoke-static {v0}, Lcom/acmeaom/android/a/a/c/d;->b(Lcom/acmeaom/android/a/a/c/d;)V

    .line 327
    invoke-direct {p0, p1}, Lcom/acmeaom/android/b/c/g/j;->b(Lcom/acmeaom/android/b/c/g/e;)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v1}, Lcom/acmeaom/android/b/c/g/j;->a(Ljava/lang/String;)Lcom/acmeaom/android/c/e/a;

    move-result-object v1

    .line 329
    new-instance v2, Lcom/acmeaom/android/a/a/c/n;

    invoke-virtual {v1}, Lcom/acmeaom/android/c/e/a;->a()Lcom/acmeaom/android/a/a/c/n;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/acmeaom/android/a/a/c/n;-><init>(Lcom/acmeaom/android/a/a/c/n;)V

    .line 331
    new-instance v3, Lcom/acmeaom/android/a/a/c/l;

    invoke-direct {v3}, Lcom/acmeaom/android/a/a/c/l;-><init>()V

    .line 332
    iget v4, v7, Lcom/acmeaom/android/a/a/c/n;->a:F

    iget v5, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v9

    iput v4, v3, Lcom/acmeaom/android/a/a/c/l;->a:F

    .line 333
    iget v4, v7, Lcom/acmeaom/android/a/a/c/n;->b:F

    iget v5, v2, Lcom/acmeaom/android/a/a/c/n;->b:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v9

    iput v4, v3, Lcom/acmeaom/android/a/a/c/l;->b:F

    .line 336
    new-instance v4, Lcom/acmeaom/android/a/a/c/m;

    invoke-direct {v4, v3, v2}, Lcom/acmeaom/android/a/a/c/m;-><init>(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/c/n;)V

    .line 337
    invoke-virtual {v1, v0, v4}, Lcom/acmeaom/android/c/e/a;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/m;)V

    .line 338
    :cond_0
    return-object v0

    .line 281
    :cond_1
    sget-object v1, Lcom/acmeaom/android/b/c/g/j;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/n;->b:F

    sget-object v2, Lcom/acmeaom/android/b/c/g/j;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 282
    sget-object v1, Lcom/acmeaom/android/b/c/g/j;->a:Lcom/acmeaom/android/a/a/c/n;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/n;->a:F

    goto/16 :goto_0
.end method

.method private b()Lcom/acmeaom/android/a/i/c;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const v4, 0x402feddf

    const/4 v7, 0x0

    const v3, -0x4136f025

    .line 343
    const/high16 v6, 0x40a00000

    const/high16 v2, 0x41a00000

    .line 345
    new-instance v0, Lcom/acmeaom/android/a/i/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/i/c;-><init>()V

    .line 346
    invoke-static {v6, v7}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 349
    neg-float v1, v6

    invoke-static {v1, v7}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v7

    move-object v6, v0

    move v8, v2

    move v9, v4

    move v10, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 351
    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/c;->a()V

    .line 352
    return-object v0
.end method

.method private b(Lcom/acmeaom/android/b/c/g/e;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/acmeaom/android/b/c/g/k;->a:[I

    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/g/e;->d()Lcom/acmeaom/android/b/c/g/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/b/c/g/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 269
    const-string v0, ""

    .line 273
    :goto_0
    return-object v0

    .line 245
    :pswitch_0
    const-string v0, "5"

    goto :goto_0

    .line 249
    :pswitch_1
    const-string v0, "4"

    goto :goto_0

    .line 253
    :pswitch_2
    const-string v0, "3"

    goto :goto_0

    .line 257
    :pswitch_3
    const-string v0, "2"

    goto :goto_0

    .line 261
    :pswitch_4
    const-string v0, "1"

    goto :goto_0

    .line 265
    :pswitch_5
    const-string v0, "S"

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c()Lcom/acmeaom/android/a/i/c;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const v4, 0x402feddf

    const/4 v7, 0x0

    const v3, -0x4136f025

    .line 357
    const/high16 v6, 0x40400000

    const/high16 v2, 0x41700000

    .line 359
    new-instance v0, Lcom/acmeaom/android/a/i/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/i/c;-><init>()V

    .line 360
    invoke-static {v6, v7}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 363
    neg-float v1, v6

    invoke-static {v1, v7}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v7

    move-object v6, v0

    move v8, v2

    move v9, v4

    move v10, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 365
    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/c;->a()V

    .line 366
    return-object v0
.end method

.method private d()Lcom/acmeaom/android/a/i/c;
    .locals 15

    .prologue
    const v4, 0x402feddf

    const v14, 0x3ffb53d1

    const/4 v7, 0x0

    const v3, -0x4136f025

    const v13, -0x4069341c

    .line 371
    const/high16 v6, 0x40400000

    const/high16 v2, 0x41700000

    .line 372
    const/high16 v11, 0x3f800000

    const/high16 v12, 0x40a00000

    .line 374
    new-instance v0, Lcom/acmeaom/android/a/i/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/i/c;-><init>()V

    .line 375
    invoke-static {v6, v7}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 377
    neg-float v1, v6

    invoke-static {v1, v7}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v6

    const/4 v10, 0x0

    move-object v5, v0

    move v7, v2

    move v8, v4

    move v9, v3

    invoke-virtual/range {v5 .. v10}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 379
    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/c;->a()V

    .line 381
    sget-wide v1, Lcom/acmeaom/android/a/b/a;->a:D

    double-to-float v1, v1

    mul-float/2addr v1, v11

    invoke-static {v13}, Lcom/acmeaom/android/c/d/a;->f(F)F

    move-result v2

    mul-float/2addr v2, v12

    sub-float/2addr v1, v2

    sget-wide v2, Lcom/acmeaom/android/a/b/a;->a:D

    neg-double v2, v2

    double-to-float v2, v2

    mul-float/2addr v2, v11

    invoke-static {v13}, Lcom/acmeaom/android/c/d/a;->g(F)F

    move-result v3

    mul-float/2addr v3, v12

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/c;->b(Lcom/acmeaom/android/a/a/c/l;)V

    .line 385
    sget-wide v1, Lcom/acmeaom/android/a/b/a;->a:D

    double-to-float v1, v1

    mul-float/2addr v1, v11

    sget-wide v2, Lcom/acmeaom/android/a/b/a;->a:D

    neg-double v2, v2

    double-to-float v2, v2

    mul-float/2addr v2, v11

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    const/4 v5, 0x1

    move v2, v12

    move v3, v14

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 389
    sget-wide v1, Lcom/acmeaom/android/a/b/a;->a:D

    neg-double v1, v1

    double-to-float v1, v1

    mul-float/2addr v1, v11

    sget-wide v2, Lcom/acmeaom/android/a/b/a;->a:D

    double-to-float v2, v2

    mul-float/2addr v2, v11

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    const/4 v5, 0x1

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 393
    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/c;->a()V

    .line 394
    return-object v0
.end method

.method private e()Lcom/acmeaom/android/a/i/c;
    .locals 6

    .prologue
    .line 399
    const/high16 v2, 0x41700000

    .line 401
    new-instance v0, Lcom/acmeaom/android/a/i/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/i/c;-><init>()V

    .line 402
    invoke-static {}, Lcom/acmeaom/android/a/a/c/l;->b()Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    const v3, -0x3fb6f025

    const v4, 0x40490fdb

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 404
    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/c;->a()V

    .line 405
    return-object v0
.end method

.method private f()Lcom/acmeaom/android/a/i/c;
    .locals 6

    .prologue
    .line 411
    const/high16 v2, 0x41700000

    .line 413
    new-instance v0, Lcom/acmeaom/android/a/i/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/i/c;-><init>()V

    .line 414
    invoke-static {}, Lcom/acmeaom/android/a/a/c/l;->b()Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    const v3, -0x3fb6f025

    const v4, 0x40490fdb

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 416
    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/c;->a()V

    .line 418
    const/high16 v1, 0x3f000000

    mul-float/2addr v1, v2

    .line 419
    invoke-static {v1, v1}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/i/c;->b(Lcom/acmeaom/android/a/a/c/l;)V

    .line 420
    neg-float v2, v1

    neg-float v3, v1

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/i/c;->c(Lcom/acmeaom/android/a/a/c/l;)V

    .line 421
    neg-float v2, v1

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/i/c;->b(Lcom/acmeaom/android/a/a/c/l;)V

    .line 422
    neg-float v2, v1

    invoke-static {v2, v1}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/c;->c(Lcom/acmeaom/android/a/a/c/l;)V

    .line 423
    return-object v0
.end method

.method private g()Lcom/acmeaom/android/a/i/c;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const v4, 0x402feddf

    const/4 v7, 0x0

    const v3, -0x4136f025

    .line 429
    const/high16 v6, 0x40400000

    const/high16 v2, 0x41700000

    .line 431
    new-instance v0, Lcom/acmeaom/android/a/i/c;

    invoke-direct {v0}, Lcom/acmeaom/android/a/i/c;-><init>()V

    .line 432
    invoke-static {v6, v7}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 434
    neg-float v1, v6

    invoke-static {v1, v7}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v7

    move-object v6, v0

    move v8, v2

    move v9, v4

    move v10, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/l;FFFZ)V

    .line 436
    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/c;->a()V

    .line 438
    const v1, 0x3ecccccd

    mul-float/2addr v1, v2

    .line 439
    invoke-static {v1, v1}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/i/c;->b(Lcom/acmeaom/android/a/a/c/l;)V

    .line 440
    neg-float v2, v1

    neg-float v3, v1

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/i/c;->c(Lcom/acmeaom/android/a/a/c/l;)V

    .line 441
    neg-float v2, v1

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/i/c;->b(Lcom/acmeaom/android/a/a/c/l;)V

    .line 442
    neg-float v2, v1

    invoke-static {v2, v1}, Lcom/acmeaom/android/a/a/c/o;->a(FF)Lcom/acmeaom/android/a/a/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/c;->c(Lcom/acmeaom/android/a/a/c/l;)V

    .line 443
    return-object v0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/b/c/g/d;F)Lcom/acmeaom/android/a/a/b/e;
    .locals 8

    .prologue
    const v7, 0x3f333333

    const v6, 0x3e4ccccd

    .line 87
    invoke-static {}, Lcom/acmeaom/android/a/a/b/o;->f()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/g/d;->c()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/o;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/g/a;

    .line 90
    new-instance v3, Lcom/acmeaom/android/c/g/c/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/a;->b()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/acmeaom/android/a/a/b/e;->c()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/acmeaom/android/c/g/c/a;-><init>(Ljava/util/ArrayList;Z)V

    .line 91
    invoke-static {v6, v6, v6, v6}, Lcom/acmeaom/android/a/i/d;->a(FFFF)Lcom/acmeaom/android/a/i/d;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/acmeaom/android/c/g/c/a;->a(Lcom/acmeaom/android/a/i/d;)V

    .line 92
    sget-object v4, Lcom/acmeaom/android/a/f/l;->k:Lcom/acmeaom/android/a/f/l;

    invoke-virtual {v3, v4}, Lcom/acmeaom/android/c/g/c/a;->a(Lcom/acmeaom/android/a/f/l;)V

    .line 93
    invoke-virtual {v1, v3}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    .line 95
    new-instance v3, Lcom/acmeaom/android/c/g/c/b;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/a;->b()Lcom/acmeaom/android/a/a/b/e;

    move-result-object v0

    const/high16 v4, 0x3fc00000

    mul-float/2addr v4, p2

    invoke-direct {v3, v0, v4}, Lcom/acmeaom/android/c/g/c/b;-><init>(Ljava/util/List;F)V

    .line 96
    const/high16 v0, 0x3f800000

    invoke-static {v7, v7, v7, v0}, Lcom/acmeaom/android/a/i/d;->a(FFFF)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/acmeaom/android/c/g/c/b;->a(Lcom/acmeaom/android/a/i/d;)V

    .line 97
    sget-object v0, Lcom/acmeaom/android/a/f/l;->j:Lcom/acmeaom/android/a/f/l;

    invoke-virtual {v3, v0}, Lcom/acmeaom/android/c/g/c/b;->a(Lcom/acmeaom/android/a/f/l;)V

    .line 99
    invoke-virtual {v1, v3}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_0
    return-object v1
.end method

.method public a(Lcom/acmeaom/android/b/c/g/e;F)Lcom/acmeaom/android/a/a/c/d;
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/b/c/g/j;->b(Lcom/acmeaom/android/b/c/g/e;F)Lcom/acmeaom/android/a/a/c/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/acmeaom/android/b/c/g/e;)Lcom/acmeaom/android/a/i/d;
    .locals 4

    .prologue
    const v0, 0x3ebd70a4

    const/high16 v2, 0x3f800000

    .line 449
    sget-object v1, Lcom/acmeaom/android/b/c/g/k;->a:[I

    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/g/e;->d()Lcom/acmeaom/android/b/c/g/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acmeaom/android/b/c/g/f;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 488
    const v3, 0x3e3851ec

    .line 489
    const v1, 0x3f23d70a

    .line 490
    const v0, 0x3ea8f5c3

    .line 494
    :goto_0
    invoke-static {v3, v1, v0, v2}, Lcom/acmeaom/android/a/i/d;->a(FFFF)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    return-object v0

    :pswitch_0
    move v1, v0

    move v3, v2

    .line 455
    goto :goto_0

    .line 459
    :pswitch_1
    const v1, 0x3f0ccccd

    .line 460
    const v0, 0x3db851ec

    move v3, v2

    .line 461
    goto :goto_0

    .line 465
    :pswitch_2
    const/high16 v1, 0x3f400000

    .line 466
    const v0, 0x3e6b851f

    move v3, v2

    .line 467
    goto :goto_0

    .line 471
    :pswitch_3
    const v1, 0x3f666666

    .line 472
    const v0, 0x3ee66666

    move v3, v2

    .line 473
    goto :goto_0

    .line 478
    :pswitch_4
    const v0, 0x3f4ccccd

    move v1, v2

    move v3, v2

    .line 479
    goto :goto_0

    .line 482
    :pswitch_5
    const v3, 0x3f2147ae

    .line 483
    const v1, 0x3f59999a

    .line 484
    const v0, 0x3f19999a

    .line 485
    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/acmeaom/android/b/c/g/d;F)Lcom/acmeaom/android/c/g/c/b;
    .locals 10

    .prologue
    const v9, 0x3f333333

    .line 106
    const/4 v1, 0x0

    .line 108
    invoke-static {}, Lcom/acmeaom/android/a/a/b/o;->f()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v2

    .line 109
    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/g/d;->b()Lcom/acmeaom/android/a/a/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/o;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/c/g/e;

    .line 110
    new-instance v4, Lcom/acmeaom/android/a/a/d/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/e;->p()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/e;->p()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/acmeaom/android/a/a/d/a;-><init>(DD)V

    invoke-virtual {v2, v4}, Lcom/acmeaom/android/a/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v2}, Lcom/acmeaom/android/a/a/b/o;->a()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 115
    new-instance v0, Lcom/acmeaom/android/c/g/c/b;

    const/high16 v1, 0x3fc00000

    mul-float/2addr v1, p2

    invoke-direct {v0, v2, v1}, Lcom/acmeaom/android/c/g/c/b;-><init>(Ljava/util/List;F)V

    .line 116
    const/high16 v1, 0x3f800000

    invoke-static {v9, v9, v9, v1}, Lcom/acmeaom/android/a/i/d;->a(FFFF)Lcom/acmeaom/android/a/i/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/c/b;->a(Lcom/acmeaom/android/a/i/d;)V

    .line 117
    sget-object v1, Lcom/acmeaom/android/a/f/l;->j:Lcom/acmeaom/android/a/f/l;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/g/c/b;->a(Lcom/acmeaom/android/a/f/l;)V

    .line 120
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public c(Lcom/acmeaom/android/b/c/g/d;F)Lcom/acmeaom/android/b/c/g/c;
    .locals 13

    .prologue
    const v12, 0x3f2aaaab

    const/high16 v4, 0x3f000000

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 130
    .line 132
    sget-object v2, Lcom/acmeaom/android/b/c/g/k;->a:[I

    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/g/d;->d()Lcom/acmeaom/android/b/c/g/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acmeaom/android/b/c/g/f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v7, v8

    move-object v9, v0

    .line 164
    :goto_0
    if-nez v9, :cond_0

    .line 236
    :goto_1
    return-object v0

    .line 134
    :pswitch_0
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/g/j;->f()Lcom/acmeaom/android/a/i/c;

    move-result-object v2

    move v7, v1

    move-object v9, v2

    .line 136
    goto :goto_0

    .line 138
    :pswitch_1
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/g/j;->g()Lcom/acmeaom/android/a/i/c;

    move-result-object v2

    move v7, v1

    move-object v9, v2

    .line 140
    goto :goto_0

    .line 142
    :pswitch_2
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/g/j;->e()Lcom/acmeaom/android/a/i/c;

    move-result-object v1

    move v7, v8

    move-object v9, v1

    .line 144
    goto :goto_0

    .line 146
    :pswitch_3
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/g/j;->d()Lcom/acmeaom/android/a/i/c;

    move-result-object v2

    move v7, v1

    move-object v9, v2

    .line 148
    goto :goto_0

    .line 151
    :pswitch_4
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/g/j;->c()Lcom/acmeaom/android/a/i/c;

    move-result-object v2

    move v7, v1

    move-object v9, v2

    .line 153
    goto :goto_0

    .line 157
    :pswitch_5
    invoke-direct {p0}, Lcom/acmeaom/android/b/c/g/j;->b()Lcom/acmeaom/android/a/i/c;

    move-result-object v2

    move v7, v1

    move-object v9, v2

    .line 159
    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v9}, Lcom/acmeaom/android/a/i/c;->d()Lcom/acmeaom/android/a/a/c/m;

    move-result-object v1

    .line 171
    new-instance v10, Lcom/acmeaom/android/a/a/c/n;

    iget-object v2, v1, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v2, v2, Lcom/acmeaom/android/a/a/c/n;->a:F

    invoke-static {v2}, Lcom/acmeaom/android/a/b/a;->a(F)F

    move-result v2

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/n;->b:F

    invoke-static {v1}, Lcom/acmeaom/android/a/b/a;->a(F)F

    move-result v1

    invoke-direct {v10, v2, v1}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    .line 174
    new-instance v1, Lcom/acmeaom/android/a/a/c/n;

    iget v2, v10, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float/2addr v2, v4

    iget v3, v10, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/acmeaom/android/a/a/c/n;-><init>(FF)V

    .line 175
    iget v2, v1, Lcom/acmeaom/android/a/a/c/n;->a:F

    iget v1, v1, Lcom/acmeaom/android/a/a/c/n;->b:F

    invoke-static {v2, v1}, Lcom/acmeaom/android/a/a/c/a;->a(FF)Lcom/acmeaom/android/a/a/c/a;

    move-result-object v1

    .line 177
    const/high16 v2, 0x3f800000

    const/high16 v3, -0x40800000

    invoke-static {v1, v2, v3}, Lcom/acmeaom/android/a/a/c/a;->a(Lcom/acmeaom/android/a/a/c/a;FF)Lcom/acmeaom/android/a/a/c/a;

    move-result-object v1

    .line 178
    invoke-virtual {v9, v1}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/a;)V

    .line 179
    invoke-virtual {v9}, Lcom/acmeaom/android/a/i/c;->c()Lcom/acmeaom/android/a/a/c/i;

    move-result-object v11

    .line 181
    invoke-static {}, Lcom/acmeaom/android/a/a/c/c;->a()Lcom/acmeaom/android/a/a/c/c;

    move-result-object v5

    .line 183
    iget v1, v10, Lcom/acmeaom/android/a/a/c/n;->a:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 184
    iget v2, v10, Lcom/acmeaom/android/a/a/c/n;->b:F

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 185
    const/16 v3, 0x8

    mul-int/lit8 v4, v1, 0x4

    sget-object v6, Lcom/acmeaom/android/a/a/c/h;->b:Lcom/acmeaom/android/a/a/c/h;

    invoke-virtual {v6}, Lcom/acmeaom/android/a/a/c/h;->ordinal()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/acmeaom/android/a/a/c/d;->a(Ljava/lang/Object;IIIILcom/acmeaom/android/a/a/c/c;I)Lcom/acmeaom/android/a/a/c/d;

    move-result-object v1

    .line 194
    invoke-static {v5}, Lcom/acmeaom/android/a/a/c/c;->a(Lcom/acmeaom/android/a/a/c/c;)V

    .line 196
    invoke-static {v1, p2, p2}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;FF)V

    .line 198
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/g/j;->a(Lcom/acmeaom/android/b/c/g/e;)Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/d;->e()Lcom/acmeaom/android/a/a/c/b;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/b;)V

    .line 199
    const/high16 v0, 0x3fc00000

    invoke-static {v1, v0}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;F)V

    .line 200
    invoke-static {v1, v11}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V

    .line 201
    invoke-static {v1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;)V

    .line 202
    invoke-static {v1, v11}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V

    .line 203
    invoke-static {v1}, Lcom/acmeaom/android/a/a/c/d;->b(Lcom/acmeaom/android/a/a/c/d;)V

    .line 205
    new-instance v0, Lcom/acmeaom/android/b/c/g/c;

    invoke-direct {v0, v1, v10}, Lcom/acmeaom/android/b/c/g/c;-><init>(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/n;)V

    .line 206
    invoke-virtual {v0, p1}, Lcom/acmeaom/android/b/c/g/c;->a(Lcom/acmeaom/android/b/c/g/d;)V

    .line 207
    sget-object v1, Lcom/acmeaom/android/a/f/l;->d:Lcom/acmeaom/android/a/f/l;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/b/c/g/c;->a(Lcom/acmeaom/android/a/f/l;)V

    .line 208
    invoke-virtual {p1}, Lcom/acmeaom/android/b/c/g/d;->p()Lcom/acmeaom/android/a/a/d/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/b/c/g/c;->a(Lcom/acmeaom/android/a/a/d/b;)V

    .line 210
    if-eqz v7, :cond_1

    .line 211
    invoke-static {}, Lcom/acmeaom/android/c/g/a/b;->a()Lcom/acmeaom/android/c/g/a/b;

    move-result-object v1

    .line 212
    invoke-static {}, Lcom/acmeaom/android/a/a/c/l;->b()Lcom/acmeaom/android/a/a/c/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/c/g/a/b;->a(Lcom/acmeaom/android/a/a/c/l;)V

    .line 213
    const-wide v2, 0x3fa47ae147ae147bL

    invoke-virtual {v1, v2, v3}, Lcom/acmeaom/android/c/g/a/b;->a(D)V

    .line 214
    invoke-virtual {v0, v1}, Lcom/acmeaom/android/b/c/g/c;->a(Lcom/acmeaom/android/c/g/a/a;)V

    .line 217
    :cond_1
    invoke-virtual {v9}, Lcom/acmeaom/android/a/i/c;->b()Lcom/acmeaom/android/a/i/c;

    move-result-object v1

    .line 219
    const/high16 v2, 0x41000000

    const/high16 v3, 0x41000000

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a/c/a;->a(FF)Lcom/acmeaom/android/a/a/c/a;

    move-result-object v2

    .line 220
    invoke-static {v2, v12, v12}, Lcom/acmeaom/android/a/a/c/a;->a(Lcom/acmeaom/android/a/a/c/a;FF)Lcom/acmeaom/android/a/a/c/a;

    move-result-object v2

    .line 221
    invoke-virtual {v1, v2}, Lcom/acmeaom/android/a/i/c;->a(Lcom/acmeaom/android/a/a/c/a;)V

    .line 223
    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/c;->c()Lcom/acmeaom/android/a/a/c/i;

    move-result-object v1

    .line 224
    const/high16 v2, 0x42000000

    const/high16 v3, 0x42000000

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a/c/n;->a(FF)Lcom/acmeaom/android/a/a/c/n;

    move-result-object v2

    .line 225
    invoke-static {v2, v8, p2}, Lcom/acmeaom/android/a/i/h;->a(Lcom/acmeaom/android/a/a/c/n;ZF)V

    .line 226
    invoke-static {}, Lcom/acmeaom/android/a/i/h;->a()Lcom/acmeaom/android/a/a/c/d;

    move-result-object v2

    .line 227
    invoke-virtual {p0, p1}, Lcom/acmeaom/android/b/c/g/j;->a(Lcom/acmeaom/android/b/c/g/e;)Lcom/acmeaom/android/a/i/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acmeaom/android/a/i/d;->f()V

    .line 228
    const/high16 v3, 0x3fc00000

    invoke-static {v2, v3}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;F)V

    .line 229
    invoke-static {v2, v1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V

    .line 230
    invoke-static {v2}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;)V

    .line 231
    invoke-static {v2, v1}, Lcom/acmeaom/android/a/a/c/d;->a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V

    .line 232
    invoke-static {v2}, Lcom/acmeaom/android/a/a/c/d;->b(Lcom/acmeaom/android/a/a/c/d;)V

    .line 233
    invoke-static {}, Lcom/acmeaom/android/a/i/h;->b()Lcom/acmeaom/android/a/i/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/b/c/g/c;->a(Lcom/acmeaom/android/a/i/i;)V

    .line 234
    invoke-static {}, Lcom/acmeaom/android/a/i/h;->c()V

    goto/16 :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
