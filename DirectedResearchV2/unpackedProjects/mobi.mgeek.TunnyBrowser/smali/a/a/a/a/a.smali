.class public La/a/a/a/a;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final a:[B

.field private static b:[B

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 53
    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sput-object v1, La/a/a/a/a;->a:[B

    .line 97
    const/16 v1, 0xff

    new-array v1, v1, [B

    sput-object v1, La/a/a/a/a;->b:[B

    .line 98
    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, La/a/a/a/a;->c:[B

    move v1, v0

    .line 102
    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    .line 103
    sget-object v2, La/a/a/a/a;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    .line 106
    sget-object v2, La/a/a/a/a;->b:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 105
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 108
    :cond_1
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    .line 109
    sget-object v2, La/a/a/a/a;->b:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 108
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 111
    :cond_2
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    .line 112
    sget-object v2, La/a/a/a/a;->b:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 111
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 115
    :cond_3
    sget-object v1, La/a/a/a/a;->b:[B

    aput-byte v7, v1, v5

    .line 116
    sget-object v1, La/a/a/a/a;->b:[B

    aput-byte v8, v1, v6

    move v1, v0

    .line 118
    :goto_4
    const/16 v2, 0x19

    if-gt v1, v2, :cond_4

    .line 119
    sget-object v2, La/a/a/a/a;->c:[B

    add-int/lit8 v3, v1, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 122
    :cond_4
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-gt v2, v3, :cond_5

    .line 123
    sget-object v3, La/a/a/a/a;->c:[B

    add-int/lit8 v4, v1, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 122
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 126
    :cond_5
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_6

    .line 127
    sget-object v2, La/a/a/a/a;->c:[B

    add-int/lit8 v3, v0, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 130
    :cond_6
    sget-object v0, La/a/a/a/a;->c:[B

    aput-byte v5, v0, v7

    .line 131
    sget-object v0, La/a/a/a/a;->c:[B

    aput-byte v6, v0, v8

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(B)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 135
    const/16 v1, 0x3d

    if-ne p0, v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    sget-object v1, La/a/a/a/a;->b:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([BZ)[B
    .locals 17

    .prologue
    .line 233
    move-object/from16 v0, p0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    .line 234
    rem-int/lit8 v10, v1, 0x18

    .line 235
    div-int/lit8 v11, v1, 0x18

    .line 238
    const/4 v1, 0x0

    .line 240
    if-eqz v10, :cond_1

    .line 242
    add-int/lit8 v2, v11, 0x1

    mul-int/lit8 v2, v2, 0x4

    .line 251
    :goto_0
    if-eqz p1, :cond_0

    .line 253
    sget-object v1, La/a/a/a/a;->a:[B

    array-length v1, v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 255
    :goto_1
    sget-object v3, La/a/a/a/a;->a:[B

    array-length v3, v3

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 258
    :cond_0
    new-array v12, v2, [B

    .line 262
    const/4 v6, 0x0

    .line 265
    const/16 v5, 0x4c

    .line 266
    const/4 v4, 0x0

    .line 269
    const/4 v3, 0x0

    move v8, v3

    move v9, v6

    :goto_2
    if-ge v8, v11, :cond_6

    .line 270
    mul-int/lit8 v3, v8, 0x3

    .line 271
    aget-byte v6, p0, v3

    .line 272
    add-int/lit8 v7, v3, 0x1

    aget-byte v13, p0, v7

    .line 273
    add-int/lit8 v3, v3, 0x2

    aget-byte v14, p0, v3

    .line 277
    and-int/lit8 v3, v13, 0xf

    int-to-byte v15, v3

    .line 278
    and-int/lit8 v3, v6, 0x3

    int-to-byte v0, v3

    move/from16 v16, v0

    .line 280
    and-int/lit8 v3, v6, -0x80

    if-nez v3, :cond_3

    shr-int/lit8 v3, v6, 0x2

    int-to-byte v3, v3

    move v7, v3

    .line 282
    :goto_3
    and-int/lit8 v3, v13, -0x80

    if-nez v3, :cond_4

    shr-int/lit8 v3, v13, 0x4

    int-to-byte v3, v3

    move v6, v3

    .line 284
    :goto_4
    and-int/lit8 v3, v14, -0x80

    if-nez v3, :cond_5

    shr-int/lit8 v3, v14, 0x6

    int-to-byte v3, v3

    .line 287
    :goto_5
    sget-object v13, La/a/a/a/a;->c:[B

    aget-byte v7, v13, v7

    aput-byte v7, v12, v9

    .line 291
    add-int/lit8 v7, v9, 0x1

    sget-object v13, La/a/a/a/a;->c:[B

    shl-int/lit8 v16, v16, 0x4

    or-int v6, v6, v16

    aget-byte v6, v13, v6

    aput-byte v6, v12, v7

    .line 293
    add-int/lit8 v6, v9, 0x2

    sget-object v7, La/a/a/a/a;->c:[B

    shl-int/lit8 v13, v15, 0x2

    or-int/2addr v3, v13

    aget-byte v3, v7, v3

    aput-byte v3, v12, v6

    .line 295
    add-int/lit8 v3, v9, 0x3

    sget-object v6, La/a/a/a/a;->c:[B

    and-int/lit8 v7, v14, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v12, v3

    .line 297
    add-int/lit8 v6, v9, 0x4

    .line 300
    if-eqz p1, :cond_d

    .line 302
    if-ne v6, v5, :cond_d

    .line 303
    sget-object v3, La/a/a/a/a;->a:[B

    const/4 v5, 0x0

    sget-object v7, La/a/a/a/a;->a:[B

    array-length v7, v7

    invoke-static {v3, v5, v12, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    add-int/lit8 v3, v4, 0x1

    .line 310
    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v4, v4, 0x4c

    sget-object v5, La/a/a/a/a;->a:[B

    array-length v5, v5

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    .line 313
    sget-object v5, La/a/a/a/a;->a:[B

    array-length v5, v5

    add-int/2addr v5, v6

    .line 269
    :goto_6
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v9, v5

    move v5, v4

    move v4, v3

    goto :goto_2

    .line 245
    :cond_1
    mul-int/lit8 v2, v11, 0x4

    goto/16 :goto_0

    .line 253
    :cond_2
    int-to-float v1, v2

    const/high16 v3, 0x42980000

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    goto/16 :goto_1

    .line 280
    :cond_3
    shr-int/lit8 v3, v6, 0x2

    xor-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    move v7, v3

    goto :goto_3

    .line 282
    :cond_4
    shr-int/lit8 v3, v13, 0x4

    xor-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    move v6, v3

    goto :goto_4

    .line 284
    :cond_5
    shr-int/lit8 v3, v14, 0x6

    xor-int/lit16 v3, v3, 0xfc

    int-to-byte v3, v3

    goto :goto_5

    .line 319
    :cond_6
    mul-int/lit8 v3, v8, 0x3

    .line 321
    const/16 v5, 0x8

    if-ne v10, v5, :cond_a

    .line 322
    aget-byte v3, p0, v3

    .line 323
    and-int/lit8 v5, v3, 0x3

    int-to-byte v5, v5

    .line 326
    and-int/lit8 v6, v3, -0x80

    if-nez v6, :cond_9

    shr-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    .line 328
    :goto_7
    sget-object v6, La/a/a/a/a;->c:[B

    aget-byte v3, v6, v3

    aput-byte v3, v12, v9

    .line 329
    add-int/lit8 v3, v9, 0x1

    sget-object v6, La/a/a/a/a;->c:[B

    shl-int/lit8 v5, v5, 0x4

    aget-byte v5, v6, v5

    aput-byte v5, v12, v3

    .line 330
    add-int/lit8 v3, v9, 0x2

    const/16 v5, 0x3d

    aput-byte v5, v12, v3

    .line 331
    add-int/lit8 v3, v9, 0x3

    const/16 v5, 0x3d

    aput-byte v5, v12, v3

    .line 351
    :cond_7
    :goto_8
    if-eqz p1, :cond_8

    .line 353
    if-ge v4, v1, :cond_8

    .line 354
    sget-object v1, La/a/a/a/a;->a:[B

    const/4 v3, 0x0

    sget-object v4, La/a/a/a/a;->a:[B

    array-length v4, v4

    sub-int/2addr v2, v4

    sget-object v4, La/a/a/a/a;->a:[B

    array-length v4, v4

    invoke-static {v1, v3, v12, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    :cond_8
    return-object v12

    .line 326
    :cond_9
    shr-int/lit8 v3, v3, 0x2

    xor-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    goto :goto_7

    .line 332
    :cond_a
    const/16 v5, 0x10

    if-ne v10, v5, :cond_7

    .line 334
    aget-byte v5, p0, v3

    .line 335
    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    .line 336
    and-int/lit8 v3, v6, 0xf

    int-to-byte v7, v3

    .line 337
    and-int/lit8 v3, v5, 0x3

    int-to-byte v8, v3

    .line 339
    and-int/lit8 v3, v5, -0x80

    if-nez v3, :cond_b

    shr-int/lit8 v3, v5, 0x2

    int-to-byte v3, v3

    move v5, v3

    .line 341
    :goto_9
    and-int/lit8 v3, v6, -0x80

    if-nez v3, :cond_c

    shr-int/lit8 v3, v6, 0x4

    int-to-byte v3, v3

    .line 344
    :goto_a
    sget-object v6, La/a/a/a/a;->c:[B

    aget-byte v5, v6, v5

    aput-byte v5, v12, v9

    .line 345
    add-int/lit8 v5, v9, 0x1

    sget-object v6, La/a/a/a/a;->c:[B

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v3, v8

    aget-byte v3, v6, v3

    aput-byte v3, v12, v5

    .line 347
    add-int/lit8 v3, v9, 0x2

    sget-object v5, La/a/a/a/a;->c:[B

    shl-int/lit8 v6, v7, 0x2

    aget-byte v5, v5, v6

    aput-byte v5, v12, v3

    .line 348
    add-int/lit8 v3, v9, 0x3

    const/16 v5, 0x3d

    aput-byte v5, v12, v3

    goto :goto_8

    .line 339
    :cond_b
    shr-int/lit8 v3, v5, 0x2

    xor-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    move v5, v3

    goto :goto_9

    .line 341
    :cond_c
    shr-int/lit8 v3, v6, 0x4

    xor-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    goto :goto_a

    :cond_d
    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_6
.end method

.method public static b([B)[B
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x3d

    .line 374
    invoke-static {p0}, La/a/a/a/a;->c([B)[B

    move-result-object v3

    .line 377
    array-length v0, v3

    if-nez v0, :cond_1

    .line 378
    new-array v0, v1, [B

    .line 431
    :cond_0
    :goto_0
    return-object v0

    .line 381
    :cond_1
    array-length v0, v3

    div-int/lit8 v4, v0, 0x4

    .line 391
    array-length v0, v3

    .line 393
    :cond_2
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, v3, v2

    if-ne v2, v10, :cond_3

    .line 394
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    .line 395
    new-array v0, v1, [B

    goto :goto_0

    .line 398
    :cond_3
    sub-int/2addr v0, v4

    new-array v0, v0, [B

    move v2, v1

    .line 401
    :goto_1
    if-ge v1, v4, :cond_0

    .line 402
    mul-int/lit8 v5, v1, 0x4

    .line 403
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, v3, v6

    .line 404
    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v3, v7

    .line 406
    sget-object v8, La/a/a/a/a;->b:[B

    aget-byte v9, v3, v5

    aget-byte v8, v8, v9

    .line 407
    sget-object v9, La/a/a/a/a;->b:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v3, v5

    aget-byte v5, v9, v5

    .line 409
    if-eq v6, v10, :cond_5

    if-eq v7, v10, :cond_5

    .line 411
    sget-object v9, La/a/a/a/a;->b:[B

    aget-byte v6, v9, v6

    .line 412
    sget-object v9, La/a/a/a/a;->b:[B

    aget-byte v7, v9, v7

    .line 414
    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v9, v5, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 415
    add-int/lit8 v8, v2, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v9, v6, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v0, v8

    .line 417
    add-int/lit8 v5, v2, 0x2

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 429
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x3

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 418
    :cond_5
    if-ne v6, v10, :cond_6

    .line 420
    shl-int/lit8 v6, v8, 0x2

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    goto :goto_2

    .line 421
    :cond_6
    if-ne v7, v10, :cond_4

    .line 423
    sget-object v7, La/a/a/a/a;->b:[B

    aget-byte v6, v7, v6

    .line 425
    shl-int/lit8 v7, v8, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 426
    add-int/lit8 v7, v2, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    goto :goto_2
.end method

.method static c([B)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 474
    array-length v0, p0

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    .line 477
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 478
    aget-byte v3, p0, v0

    invoke-static {v3}, La/a/a/a/a;->a(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    add-int/lit8 v3, v2, 0x1

    aget-byte v5, p0, v0

    aput-byte v5, v4, v2

    move v2, v3

    .line 477
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_1
    new-array v0, v2, [B

    .line 485
    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    return-object v0
.end method


# virtual methods
.method public a([B)[B
    .locals 1

    .prologue
    .line 220
    invoke-static {p1}, La/a/a/a/a;->b([B)[B

    move-result-object v0

    return-object v0
.end method

.method public d([B)[B
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-static {p1, v0}, La/a/a/a/a;->a([BZ)[B

    move-result-object v0

    return-object v0
.end method
