.class Lcom/fusepowered/m1/android/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final CA:[C

.field private static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 76
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/fusepowered/m1/android/Base64;->CA:[C

    .line 77
    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/fusepowered/m1/android/Base64;->IA:[I

    .line 79
    sget-object v2, Lcom/fusepowered/m1/android/Base64;->IA:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v2, Lcom/fusepowered/m1/android/Base64;->CA:[C

    array-length v1, v2

    .local v1, iS:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 81
    sget-object v2, Lcom/fusepowered/m1/android/Base64;->IA:[I

    sget-object v3, Lcom/fusepowered/m1/android/Base64;->CA:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    sget-object v2, Lcom/fusepowered/m1/android/Base64;->IA:[I

    const/16 v3, 0x3d

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 83
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 14
    .parameter "str"

    .prologue
    const/4 v13, 0x0

    .line 466
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    move v10, v12

    .line 467
    .local v10, sLen:I
    :goto_0
    if-nez v10, :cond_1

    .line 468
    new-array v12, v13, [B

    .line 509
    :goto_1
    return-object v12

    .end local v10           #sLen:I
    :cond_0
    move v10, v13

    .line 466
    goto :goto_0

    .line 472
    .restart local v10       #sLen:I
    :cond_1
    const/4 v11, 0x0

    .line 473
    .local v11, sepCnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v10, :cond_3

    .line 474
    sget-object v12, Lcom/fusepowered/m1/android/Base64;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gez v12, :cond_2

    .line 475
    add-int/lit8 v11, v11, 0x1

    .line 473
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 478
    :cond_3
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_4

    .line 479
    const/4 v12, 0x0

    goto :goto_1

    .line 482
    :cond_4
    const/4 v7, 0x0

    .line 483
    .local v7, pad:I
    move v4, v10

    :cond_5
    :goto_3
    const/4 v12, 0x1

    if-le v4, v12, :cond_6

    sget-object v12, Lcom/fusepowered/m1/android/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gtz v12, :cond_6

    .line 484
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_5

    .line 485
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 487
    :cond_6
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 489
    .local v6, len:I
    new-array v3, v6, [B

    .line 491
    .local v3, dArr:[B
    const/4 v8, 0x0

    .local v8, s:I
    const/4 v1, 0x0

    .local v1, d:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_4
    if-ge v2, v6, :cond_a

    .line 493
    const/4 v4, 0x0

    .line 494
    const/4 v5, 0x0

    .local v5, j:I
    move v9, v8

    .end local v8           #s:I
    .local v9, s:I
    :goto_5
    const/4 v12, 0x4

    if-ge v5, v12, :cond_8

    .line 495
    sget-object v12, Lcom/fusepowered/m1/android/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9           #s:I
    .restart local v8       #s:I
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v0, v12, v13

    .line 496
    .local v0, c:I
    if-ltz v0, :cond_7

    .line 497
    const/16 v12, 0x12

    mul-int/lit8 v13, v5, 0x6

    sub-int/2addr v12, v13

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 494
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8           #s:I
    .restart local v9       #s:I
    goto :goto_5

    .line 499
    .end local v9           #s:I
    .restart local v8       #s:I
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 502
    .end local v0           #c:I
    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_8
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 503
    if-ge v1, v6, :cond_9

    .line 504
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 505
    if-ge v2, v6, :cond_b

    .line 506
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_9
    :goto_7
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v8, v9

    .line 508
    .end local v9           #s:I
    .restart local v8       #s:I
    goto :goto_4

    .end local v5           #j:I
    :cond_a
    move-object v12, v3

    .line 509
    goto/16 :goto_1

    .end local v8           #s:I
    .restart local v5       #j:I
    .restart local v9       #s:I
    :cond_b
    move v1, v2

    .end local v2           #d:I
    .restart local v1       #d:I
    goto :goto_7
.end method

.method public static final decode([B)[B
    .locals 14
    .parameter "sArr"

    .prologue
    .line 327
    array-length v10, p0

    .line 331
    .local v10, sLen:I
    const/4 v11, 0x0

    .line 332
    .local v11, sepCnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v10, :cond_1

    .line 333
    sget-object v12, Lcom/fusepowered/m1/android/Base64;->IA:[I

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-gez v12, :cond_0

    .line 334
    add-int/lit8 v11, v11, 0x1

    .line 332
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 337
    :cond_1
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_2

    .line 338
    const/4 v12, 0x0

    .line 369
    :goto_1
    return-object v12

    .line 340
    :cond_2
    const/4 v7, 0x0

    .line 341
    .local v7, pad:I
    move v4, v10

    :cond_3
    :goto_2
    const/4 v12, 0x1

    if-le v4, v12, :cond_4

    sget-object v12, Lcom/fusepowered/m1/android/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-gtz v12, :cond_4

    .line 342
    aget-byte v12, p0, v4

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_3

    .line 343
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 345
    :cond_4
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 347
    .local v6, len:I
    new-array v3, v6, [B

    .line 349
    .local v3, dArr:[B
    const/4 v8, 0x0

    .local v8, s:I
    const/4 v1, 0x0

    .local v1, d:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_3
    if-ge v2, v6, :cond_8

    .line 351
    const/4 v4, 0x0

    .line 352
    const/4 v5, 0x0

    .local v5, j:I
    move v9, v8

    .end local v8           #s:I
    .local v9, s:I
    :goto_4
    const/4 v12, 0x4

    if-ge v5, v12, :cond_6

    .line 353
    sget-object v12, Lcom/fusepowered/m1/android/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9           #s:I
    .restart local v8       #s:I
    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    aget v0, v12, v13

    .line 354
    .local v0, c:I
    if-ltz v0, :cond_5

    .line 355
    const/16 v12, 0x12

    mul-int/lit8 v13, v5, 0x6

    sub-int/2addr v12, v13

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 352
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8           #s:I
    .restart local v9       #s:I
    goto :goto_4

    .line 357
    .end local v9           #s:I
    .restart local v8       #s:I
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 361
    .end local v0           #c:I
    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_6
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 362
    if-ge v1, v6, :cond_7

    .line 363
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 364
    if-ge v2, v6, :cond_9

    .line 365
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_7
    :goto_6
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v8, v9

    .line 367
    .end local v9           #s:I
    .restart local v8       #s:I
    goto :goto_3

    .end local v5           #j:I
    :cond_8
    move-object v12, v3

    .line 369
    goto :goto_1

    .end local v8           #s:I
    .restart local v5       #j:I
    .restart local v9       #s:I
    :cond_9
    move v1, v2

    .end local v2           #d:I
    .restart local v1       #d:I
    goto :goto_6
.end method

.method public static final encodeToChar([BZ)[C
    .locals 11
    .parameter "sArr"
    .parameter "lineSep"

    .prologue
    .line 99
    if-eqz p0, :cond_0

    array-length v0, p0

    move v8, v0

    .line 100
    .local v8, sLen:I
    :goto_0
    if-nez v8, :cond_1

    .line 101
    const/4 p0, 0x0

    new-array p0, p0, [C

    .line 139
    .end local p0
    .end local p1
    :goto_1
    return-object p0

    .line 99
    .end local v8           #sLen:I
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    .line 103
    .restart local v8       #sLen:I
    :cond_1
    div-int/lit8 v0, v8, 0x3

    mul-int/lit8 v5, v0, 0x3

    .line 104
    .local v5, eLen:I
    const/4 v0, 0x1

    sub-int v0, v8, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x2

    .line 105
    .local v0, cCnt:I
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x4c

    shl-int/lit8 v1, v1, 0x1

    :goto_2
    add-int v4, v0, v1

    .line 106
    .local v4, dLen:I
    new-array v3, v4, [C

    .line 109
    .local v3, dArr:[C
    const/4 v2, 0x0

    .local v2, s:I
    const/4 v1, 0x0

    .local v1, d:I
    const/4 v0, 0x0

    .local v0, cc:I
    move v6, v2

    .end local v2           #s:I
    .local v6, s:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_3
    if-ge v6, v5, :cond_3

    .line 111
    add-int/lit8 v1, v6, 0x1

    .end local v6           #s:I
    .local v1, s:I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v7, v6, 0x10

    add-int/lit8 v6, v1, 0x1

    .end local v1           #s:I
    .restart local v6       #s:I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .end local v6           #s:I
    .local v7, s:I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v1

    .line 114
    .local v6, i:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .local v1, d:I
    sget-object v9, Lcom/fusepowered/m1/android/Base64;->CA:[C

    ushr-int/lit8 v10, v6, 0x12

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v3, v2

    .line 115
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    sget-object v9, Lcom/fusepowered/m1/android/Base64;->CA:[C

    ushr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v3, v1

    .line 116
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    sget-object v9, Lcom/fusepowered/m1/android/Base64;->CA:[C

    ushr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v3, v2

    .line 117
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    sget-object v9, Lcom/fusepowered/m1/android/Base64;->CA:[C

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v9, v6

    .end local v6           #i:I
    aput-char v6, v3, v1

    .line 120
    if-eqz p1, :cond_7

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_7

    const/4 v1, 0x2

    sub-int v1, v4, v1

    if-ge v2, v1, :cond_7

    .line 121
    add-int/lit8 v0, v2, 0x1

    .end local v2           #d:I
    .local v0, d:I
    const/16 v1, 0xd

    aput-char v1, v3, v2

    .line 122
    add-int/lit8 v1, v0, 0x1

    .end local v0           #d:I
    .restart local v1       #d:I
    const/16 v2, 0xa

    aput-char v2, v3, v0

    .line 123
    const/4 v0, 0x0

    .local v0, cc:I
    :goto_4
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v6, v7

    .line 125
    .end local v7           #s:I
    .local v6, s:I
    goto :goto_3

    .line 105
    .end local v2           #d:I
    .end local v3           #dArr:[C
    .end local v4           #dLen:I
    .end local v6           #s:I
    .local v0, cCnt:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 128
    .local v0, cc:I
    .restart local v2       #d:I
    .restart local v3       #dArr:[C
    .restart local v4       #dLen:I
    .restart local v6       #s:I
    :cond_3
    sub-int p1, v8, v5

    .line 129
    .local p1, left:I
    if-lez p1, :cond_4

    .line 131
    aget-byte v0, p0, v5

    .end local v0           #cc:I
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    const/4 v1, 0x1

    sub-int v1, v8, v1

    aget-byte p0, p0, v1

    .end local p0
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x2

    :goto_5
    or-int/2addr p0, v0

    .line 134
    .local p0, i:I
    const/4 v0, 0x4

    sub-int v0, v4, v0

    sget-object v1, Lcom/fusepowered/m1/android/Base64;->CA:[C

    shr-int/lit8 v2, p0, 0xc

    aget-char v1, v1, v2

    .end local v2           #d:I
    aput-char v1, v3, v0

    .line 135
    const/4 v0, 0x3

    sub-int v0, v4, v0

    sget-object v1, Lcom/fusepowered/m1/android/Base64;->CA:[C

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, v3, v0

    .line 136
    const/4 v0, 0x2

    sub-int v0, v4, v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    sget-object p1, Lcom/fusepowered/m1/android/Base64;->CA:[C

    .end local p1           #left:I
    and-int/lit8 p0, p0, 0x3f

    aget-char p0, p1, p0

    .end local p0           #i:I
    :goto_6
    aput-char p0, v3, v0

    .line 137
    const/4 p0, 0x1

    sub-int p0, v4, p0

    const/16 p1, 0x3d

    aput-char p1, v3, p0

    :cond_4
    move-object p0, v3

    .line 139
    goto/16 :goto_1

    .line 131
    .restart local v2       #d:I
    .local p0, sArr:[B
    .restart local p1       #left:I
    :cond_5
    const/4 p0, 0x0

    goto :goto_5

    .line 136
    .end local v2           #d:I
    .local p0, i:I
    :cond_6
    const/16 p0, 0x3d

    goto :goto_6

    .end local v6           #s:I
    .restart local v0       #cc:I
    .restart local v2       #d:I
    .restart local v7       #s:I
    .local p0, sArr:[B
    .local p1, lineSep:Z
    :cond_7
    move v1, v2

    .end local v2           #d:I
    .restart local v1       #d:I
    goto :goto_4
.end method

.method public static final encodeToString([BZ)Ljava/lang/String;
    .locals 2
    .parameter "sArr"
    .parameter "lineSep"

    .prologue
    .line 452
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/fusepowered/m1/android/Base64;->encodeToChar([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
