.class public Lorg/c/a/b/w;
.super Ljava/lang/Object;
.source "HttpURI.java"


# static fields
.field private static final p:[B


# instance fields
.field a:Z

.field b:[B

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:Z

.field final o:Lorg/c/a/d/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/c/a/b/w;->p:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lorg/c/a/b/w;->a:Z

    .line 64
    sget-object v0, Lorg/c/a/b/w;->p:[B

    iput-object v0, p0, Lorg/c/a/b/w;->b:[B

    .line 76
    iput-boolean v1, p0, Lorg/c/a/b/w;->n:Z

    .line 78
    new-instance v0, Lorg/c/a/d/u;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/c/a/d/u;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/b/w;->o:Lorg/c/a/d/u;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lorg/c/a/b/w;->a:Z

    .line 64
    sget-object v0, Lorg/c/a/b/w;->p:[B

    iput-object v0, p0, Lorg/c/a/b/w;->b:[B

    .line 76
    iput-boolean v1, p0, Lorg/c/a/b/w;->n:Z

    .line 78
    new-instance v0, Lorg/c/a/d/u;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/c/a/d/u;-><init>(I)V

    iput-object v0, p0, Lorg/c/a/b/w;->o:Lorg/c/a/d/u;

    .line 116
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/b/w;->a(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private a(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lorg/c/a/b/w;->o:Lorg/c/a/d/u;

    invoke-virtual {v0}, Lorg/c/a/d/u;->b()V

    .line 503
    iget-object v0, p0, Lorg/c/a/b/w;->o:Lorg/c/a/d/u;

    iget-object v1, p0, Lorg/c/a/b/w;->b:[B

    invoke-virtual {v0, v1, p1, p2}, Lorg/c/a/d/u;->a([BII)V

    .line 504
    iget-object v0, p0, Lorg/c/a/b/w;->o:Lorg/c/a/d/u;

    invoke-virtual {v0}, Lorg/c/a/d/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([BII)V
    .locals 9

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/b/w;->n:Z

    .line 208
    iput-object p1, p0, Lorg/c/a/b/w;->b:[B

    .line 210
    add-int v5, p2, p3

    .line 211
    const/4 v2, 0x0

    .line 213
    add-int v0, p2, p3

    iput v0, p0, Lorg/c/a/b/w;->m:I

    .line 214
    iput p2, p0, Lorg/c/a/b/w;->d:I

    .line 215
    iput p2, p0, Lorg/c/a/b/w;->e:I

    .line 216
    iput p2, p0, Lorg/c/a/b/w;->f:I

    .line 217
    iput p2, p0, Lorg/c/a/b/w;->g:I

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lorg/c/a/b/w;->h:I

    .line 219
    iput p2, p0, Lorg/c/a/b/w;->i:I

    .line 220
    iget v0, p0, Lorg/c/a/b/w;->m:I

    iput v0, p0, Lorg/c/a/b/w;->j:I

    .line 221
    iget v0, p0, Lorg/c/a/b/w;->m:I

    iput v0, p0, Lorg/c/a/b/w;->k:I

    .line 222
    iget v0, p0, Lorg/c/a/b/w;->m:I

    iput v0, p0, Lorg/c/a/b/w;->l:I

    move v1, p2

    move v0, p2

    .line 223
    :goto_0
    if-ge v0, v5, :cond_8

    .line 225
    iget-object v3, p0, Lorg/c/a/b/w;->b:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 226
    add-int/lit8 v4, v0, 0x1

    .line 228
    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v4

    .line 494
    goto :goto_0

    .line 233
    :pswitch_1
    sparse-switch v3, :sswitch_data_0

    .line 258
    const/4 v2, 0x2

    move v1, v0

    move v0, v4

    .line 261
    goto :goto_0

    .line 236
    :sswitch_0
    const/4 v2, 0x1

    move v1, v0

    move v0, v4

    .line 237
    goto :goto_0

    .line 239
    :sswitch_1
    iput v0, p0, Lorg/c/a/b/w;->j:I

    .line 240
    const/16 v2, 0x8

    move v1, v0

    move v0, v4

    .line 241
    goto :goto_0

    .line 243
    :sswitch_2
    iput v0, p0, Lorg/c/a/b/w;->j:I

    .line 244
    iput v0, p0, Lorg/c/a/b/w;->k:I

    .line 245
    const/16 v2, 0x9

    move v1, v0

    move v0, v4

    .line 246
    goto :goto_0

    .line 248
    :sswitch_3
    iput v0, p0, Lorg/c/a/b/w;->j:I

    .line 249
    iput v0, p0, Lorg/c/a/b/w;->k:I

    .line 250
    iput v0, p0, Lorg/c/a/b/w;->l:I

    move v1, v0

    move v0, v4

    .line 251
    goto :goto_0

    .line 253
    :sswitch_4
    iput v0, p0, Lorg/c/a/b/w;->i:I

    .line 254
    const/16 v2, 0xa

    move v1, v0

    move v0, v4

    .line 255
    goto :goto_0

    .line 266
    :pswitch_2
    iget-boolean v0, p0, Lorg/c/a/b/w;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/c/a/b/w;->d:I

    iget v2, p0, Lorg/c/a/b/w;->e:I

    if-eq v0, v2, :cond_1

    :cond_0
    const/16 v0, 0x2f

    if-ne v3, v0, :cond_1

    .line 268
    iput v4, p0, Lorg/c/a/b/w;->f:I

    .line 269
    iget v0, p0, Lorg/c/a/b/w;->m:I

    iput v0, p0, Lorg/c/a/b/w;->g:I

    .line 270
    iget v0, p0, Lorg/c/a/b/w;->m:I

    iput v0, p0, Lorg/c/a/b/w;->i:I

    .line 271
    const/4 v2, 0x4

    move v0, v4

    goto :goto_0

    .line 273
    :cond_1
    const/16 v0, 0x3b

    if-eq v3, v0, :cond_2

    const/16 v0, 0x3f

    if-eq v3, v0, :cond_2

    const/16 v0, 0x23

    if-ne v3, v0, :cond_3

    .line 275
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 276
    const/4 v2, 0x7

    move v0, v4

    goto :goto_0

    .line 280
    :cond_3
    iput v1, p0, Lorg/c/a/b/w;->f:I

    .line 281
    iput v1, p0, Lorg/c/a/b/w;->g:I

    .line 282
    const/4 v2, 0x7

    move v0, v4

    .line 284
    goto :goto_0

    .line 290
    :pswitch_3
    const/4 v6, 0x6

    if-le p3, v6, :cond_b

    const/16 v6, 0x74

    if-ne v3, v6, :cond_b

    .line 292
    iget-object v6, p0, Lorg/c/a/b/w;->b:[B

    add-int/lit8 v7, p2, 0x3

    aget-byte v6, v6, v7

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_4

    .line 294
    add-int/lit8 v0, p2, 0x3

    .line 295
    add-int/lit8 v4, p2, 0x4

    .line 296
    const/16 v3, 0x3a

    move v8, v0

    move v0, v4

    move v4, v3

    move v3, v8

    .line 312
    :goto_2
    sparse-switch v4, :sswitch_data_1

    :goto_3
    move v8, v1

    move v1, v2

    move v2, v0

    move v0, v8

    :goto_4
    move v8, v0

    move v0, v2

    move v2, v1

    move v1, v8

    .line 360
    goto/16 :goto_0

    .line 298
    :cond_4
    iget-object v6, p0, Lorg/c/a/b/w;->b:[B

    add-int/lit8 v7, p2, 0x4

    aget-byte v6, v6, v7

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_5

    .line 300
    add-int/lit8 v0, p2, 0x4

    .line 301
    add-int/lit8 v4, p2, 0x5

    .line 302
    const/16 v3, 0x3a

    move v8, v0

    move v0, v4

    move v4, v3

    move v3, v8

    goto :goto_2

    .line 304
    :cond_5
    iget-object v6, p0, Lorg/c/a/b/w;->b:[B

    add-int/lit8 v7, p2, 0x5

    aget-byte v6, v6, v7

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_b

    .line 306
    add-int/lit8 v0, p2, 0x5

    .line 307
    add-int/lit8 v4, p2, 0x6

    .line 308
    const/16 v3, 0x3a

    move v8, v0

    move v0, v4

    move v4, v3

    move v3, v8

    goto :goto_2

    .line 316
    :sswitch_5
    add-int/lit8 v2, v0, 0x1

    .line 317
    iput v0, p0, Lorg/c/a/b/w;->e:I

    .line 318
    iput v0, p0, Lorg/c/a/b/w;->i:I

    .line 319
    iget-object v1, p0, Lorg/c/a/b/w;->b:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 320
    const/16 v3, 0x2f

    if-ne v1, v3, :cond_6

    .line 321
    const/4 v1, 0x1

    goto :goto_4

    .line 324
    :cond_6
    iput v0, p0, Lorg/c/a/b/w;->f:I

    .line 325
    iput v0, p0, Lorg/c/a/b/w;->g:I

    .line 326
    const/4 v1, 0x7

    .line 328
    goto :goto_4

    .line 333
    :sswitch_6
    const/4 v2, 0x7

    move v8, v1

    move v1, v2

    move v2, v0

    move v0, v8

    .line 334
    goto :goto_4

    .line 339
    :sswitch_7
    iput v3, p0, Lorg/c/a/b/w;->j:I

    .line 340
    const/16 v2, 0x8

    move v8, v1

    move v1, v2

    move v2, v0

    move v0, v8

    .line 341
    goto :goto_4

    .line 346
    :sswitch_8
    iput v3, p0, Lorg/c/a/b/w;->j:I

    .line 347
    iput v3, p0, Lorg/c/a/b/w;->k:I

    .line 348
    const/16 v2, 0x9

    move v8, v1

    move v1, v2

    move v2, v0

    move v0, v8

    .line 349
    goto :goto_4

    .line 354
    :sswitch_9
    iput v3, p0, Lorg/c/a/b/w;->j:I

    .line 355
    iput v3, p0, Lorg/c/a/b/w;->k:I

    .line 356
    iput v3, p0, Lorg/c/a/b/w;->l:I

    goto :goto_3

    .line 365
    :pswitch_4
    sparse-switch v3, :sswitch_data_2

    :goto_5
    move v0, v4

    .line 393
    goto/16 :goto_0

    .line 371
    :sswitch_a
    iput v0, p0, Lorg/c/a/b/w;->i:I

    .line 372
    iget v1, p0, Lorg/c/a/b/w;->i:I

    iput v1, p0, Lorg/c/a/b/w;->g:I

    .line 373
    const/4 v2, 0x7

    move v1, v0

    .line 374
    goto :goto_5

    .line 378
    :sswitch_b
    iput v4, p0, Lorg/c/a/b/w;->f:I

    goto :goto_5

    .line 383
    :sswitch_c
    iput v0, p0, Lorg/c/a/b/w;->g:I

    .line 384
    const/4 v2, 0x6

    .line 385
    goto :goto_5

    .line 389
    :sswitch_d
    const/4 v2, 0x5

    goto :goto_5

    .line 398
    :pswitch_5
    sparse-switch v3, :sswitch_data_3

    :goto_6
    move v0, v4

    .line 411
    goto/16 :goto_0

    .line 402
    :sswitch_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No closing \']\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/b/w;->b:[B

    sget-object v3, Lorg/c/a/d/r;->a:Ljava/lang/String;

    invoke-static {v2, p2, p3, v3}, Lorg/c/a/d/p;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :sswitch_f
    const/4 v2, 0x4

    goto :goto_6

    .line 416
    :pswitch_6
    const/16 v6, 0x2f

    if-ne v3, v6, :cond_a

    .line 419
    iput v0, p0, Lorg/c/a/b/w;->i:I

    .line 420
    iget v1, p0, Lorg/c/a/b/w;->g:I

    iget v2, p0, Lorg/c/a/b/w;->e:I

    if-gt v1, v2, :cond_7

    .line 421
    iget v1, p0, Lorg/c/a/b/w;->i:I

    iput v1, p0, Lorg/c/a/b/w;->g:I

    .line 422
    :cond_7
    const/4 v2, 0x7

    move v1, v0

    move v0, v4

    goto/16 :goto_0

    .line 429
    :pswitch_7
    sparse-switch v3, :sswitch_data_4

    :goto_7
    move v0, v4

    .line 456
    goto/16 :goto_0

    .line 433
    :sswitch_10
    iput v0, p0, Lorg/c/a/b/w;->j:I

    .line 434
    const/16 v2, 0x8

    .line 435
    goto :goto_7

    .line 439
    :sswitch_11
    iput v0, p0, Lorg/c/a/b/w;->j:I

    .line 440
    iput v0, p0, Lorg/c/a/b/w;->k:I

    .line 441
    const/16 v2, 0x9

    .line 442
    goto :goto_7

    .line 446
    :sswitch_12
    iput v0, p0, Lorg/c/a/b/w;->j:I

    .line 447
    iput v0, p0, Lorg/c/a/b/w;->k:I

    .line 448
    iput v0, p0, Lorg/c/a/b/w;->l:I

    goto/16 :goto_1

    .line 453
    :sswitch_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/b/w;->n:Z

    goto :goto_7

    .line 461
    :pswitch_8
    sparse-switch v3, :sswitch_data_5

    :goto_8
    move v0, v4

    .line 476
    goto/16 :goto_0

    .line 465
    :sswitch_14
    iput v0, p0, Lorg/c/a/b/w;->k:I

    .line 466
    const/16 v2, 0x9

    .line 467
    goto :goto_8

    .line 471
    :sswitch_15
    iput v0, p0, Lorg/c/a/b/w;->k:I

    .line 472
    iput v0, p0, Lorg/c/a/b/w;->l:I

    goto/16 :goto_1

    .line 481
    :pswitch_9
    const/16 v6, 0x23

    if-ne v3, v6, :cond_a

    .line 483
    iput v0, p0, Lorg/c/a/b/w;->l:I

    goto/16 :goto_1

    .line 491
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only \'*\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_8
    iget v0, p0, Lorg/c/a/b/w;->g:I

    iget v1, p0, Lorg/c/a/b/w;->i:I

    if-ge v0, v1, :cond_9

    .line 497
    iget-object v0, p0, Lorg/c/a/b/w;->b:[B

    iget v1, p0, Lorg/c/a/b/w;->g:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/c/a/b/w;->i:I

    iget v3, p0, Lorg/c/a/b/w;->g:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/c/a/d/q;->a([BIII)I

    move-result v0

    iput v0, p0, Lorg/c/a/b/w;->h:I

    .line 498
    :cond_9
    return-void

    :cond_a
    move v0, v4

    goto/16 :goto_0

    :cond_b
    move v8, v0

    move v0, v4

    move v4, v3

    move v3, v8

    goto/16 :goto_2

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x2a -> :sswitch_4
        0x2f -> :sswitch_0
        0x3b -> :sswitch_1
        0x3f -> :sswitch_2
    .end sparse-switch

    .line 312
    :sswitch_data_1
    .sparse-switch
        0x23 -> :sswitch_9
        0x2f -> :sswitch_6
        0x3a -> :sswitch_5
        0x3b -> :sswitch_7
        0x3f -> :sswitch_8
    .end sparse-switch

    .line 365
    :sswitch_data_2
    .sparse-switch
        0x2f -> :sswitch_a
        0x3a -> :sswitch_c
        0x40 -> :sswitch_b
        0x5b -> :sswitch_d
    .end sparse-switch

    .line 398
    :sswitch_data_3
    .sparse-switch
        0x2f -> :sswitch_e
        0x5d -> :sswitch_f
    .end sparse-switch

    .line 429
    :sswitch_data_4
    .sparse-switch
        0x23 -> :sswitch_12
        0x25 -> :sswitch_13
        0x3b -> :sswitch_10
        0x3f -> :sswitch_11
    .end sparse-switch

    .line 461
    :sswitch_data_5
    .sparse-switch
        0x23 -> :sswitch_15
        0x3f -> :sswitch_14
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 692
    iget v0, p0, Lorg/c/a/b/w;->i:I

    iget v1, p0, Lorg/c/a/b/w;->m:I

    if-ne v0, v1, :cond_0

    .line 693
    const/4 v0, 0x0

    .line 694
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/c/a/b/w;->i:I

    iget v1, p0, Lorg/c/a/b/w;->m:I

    iget v2, p0, Lorg/c/a/b/w;->i:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/c/a/b/w;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/c/a/b/w;->a([BII)V

    .line 123
    iput-object p1, p0, Lorg/c/a/b/w;->c:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lorg/c/a/b/w;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 762
    iget v0, p0, Lorg/c/a/b/w;->d:I

    iget v1, p0, Lorg/c/a/b/w;->m:I

    iget v2, p0, Lorg/c/a/b/w;->d:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/c/a/b/w;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/w;->c:Ljava/lang/String;

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/c/a/b/w;->c:Ljava/lang/String;

    return-object v0
.end method
