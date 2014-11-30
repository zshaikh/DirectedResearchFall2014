.class public final Lcom/flurry/android/monolithic/sdk/impl/pu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:[C

.field static final c:[C

.field static final d:[B

.field static final e:[Ljava/lang/String;

.field static final f:[Ljava/lang/String;

.field private static g:I

.field private static h:I

.field private static i:J

.field private static j:J

.field private static k:J

.field private static l:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x2

    const/4 v14, 0x1

    const/16 v13, 0xfa0

    const/16 v12, 0xa

    const/4 v11, 0x0

    .line 7
    const v0, 0xf4240

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->g:I

    .line 8
    const v0, 0x3b9aca00

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->h:I

    .line 9
    const-wide v0, 0x2540be400L

    sput-wide v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->i:J

    .line 10
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->j:J

    .line 12
    const-wide/32 v0, -0x80000000

    sput-wide v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->k:J

    .line 13
    const-wide/32 v0, 0x7fffffff

    sput-wide v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->l:J

    .line 15
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->a:Ljava/lang/String;

    .line 17
    new-array v0, v13, [C

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->b:[C

    .line 18
    new-array v0, v13, [C

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->c:[C

    move v0, v11

    move v1, v11

    .line 24
    :goto_0
    if-ge v0, v12, :cond_4

    .line 25
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    .line 26
    if-nez v0, :cond_0

    move v3, v11

    :goto_1
    move v4, v1

    move v1, v11

    .line 27
    :goto_2
    if-ge v1, v12, :cond_3

    .line 28
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    .line 29
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move v6, v11

    :goto_3
    move v7, v4

    move v4, v11

    .line 30
    :goto_4
    if-ge v4, v12, :cond_2

    .line 32
    add-int/lit8 v8, v4, 0x30

    int-to-char v8, v8

    .line 33
    sget-object v9, Lcom/flurry/android/monolithic/sdk/impl/pu;->b:[C

    aput-char v3, v9, v7

    .line 34
    sget-object v9, Lcom/flurry/android/monolithic/sdk/impl/pu;->b:[C

    add-int/lit8 v10, v7, 0x1

    aput-char v6, v9, v10

    .line 35
    sget-object v9, Lcom/flurry/android/monolithic/sdk/impl/pu;->b:[C

    add-int/lit8 v10, v7, 0x2

    aput-char v8, v9, v10

    .line 36
    sget-object v9, Lcom/flurry/android/monolithic/sdk/impl/pu;->c:[C

    aput-char v2, v9, v7

    .line 37
    sget-object v9, Lcom/flurry/android/monolithic/sdk/impl/pu;->c:[C

    add-int/lit8 v10, v7, 0x1

    aput-char v5, v9, v10

    .line 38
    sget-object v9, Lcom/flurry/android/monolithic/sdk/impl/pu;->c:[C

    add-int/lit8 v10, v7, 0x2

    aput-char v8, v9, v10

    .line 39
    add-int/lit8 v7, v7, 0x4

    .line 30
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_0
    move v3, v2

    .line 26
    goto :goto_1

    :cond_1
    move v6, v5

    .line 29
    goto :goto_3

    .line 27
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v4, v7

    goto :goto_2

    .line 24
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    .line 45
    :cond_4
    new-array v0, v13, [B

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->d:[B

    move v0, v11

    .line 47
    :goto_5
    if-ge v0, v13, :cond_5

    .line 48
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pu;->d:[B

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pu;->c:[C

    aget-char v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 52
    :cond_5
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v11

    const-string v1, "1"

    aput-object v1, v0, v14

    const-string v1, "2"

    aput-object v1, v0, v15

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const-string v1, "10"

    aput-object v1, v0, v12

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->e:[Ljava/lang/String;

    .line 55
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "-1"

    aput-object v1, v0, v11

    const-string v1, "-2"

    aput-object v1, v0, v14

    const-string v1, "-3"

    aput-object v1, v0, v15

    const/4 v1, 0x3

    const-string v2, "-4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "-5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "-10"

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->f:[Ljava/lang/String;

    return-void
.end method

.method public static a(I[CI)I
    .locals 6

    .prologue
    .line 70
    if-gez p0, :cond_8

    .line 71
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 75
    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/pu;->a(J[CI)I

    move-result v0

    .line 126
    :goto_0
    return v0

    .line 77
    :cond_0
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    aput-char v1, p1, p2

    .line 78
    neg-int v1, p0

    .line 81
    :goto_1
    sget v2, Lcom/flurry/android/monolithic/sdk/impl/pu;->g:I

    if-ge v1, v2, :cond_3

    .line 82
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_2

    .line 83
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 84
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, p1, v0

    move v0, v2

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {v1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/pu;->b(I[CI)I

    move-result v0

    goto :goto_0

    .line 89
    :cond_2
    div-int/lit16 v2, v1, 0x3e8

    .line 90
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v1, v3

    .line 91
    invoke-static {v2, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/pu;->b(I[CI)I

    move-result v0

    .line 92
    invoke-static {v1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/pu;->c(I[CI)I

    move-result v0

    goto :goto_0

    .line 102
    :cond_3
    sget v2, Lcom/flurry/android/monolithic/sdk/impl/pu;->h:I

    if-lt v1, v2, :cond_5

    const/4 v2, 0x1

    .line 103
    :goto_2
    if-eqz v2, :cond_4

    .line 104
    sget v3, Lcom/flurry/android/monolithic/sdk/impl/pu;->h:I

    sub-int/2addr v1, v3

    .line 105
    sget v3, Lcom/flurry/android/monolithic/sdk/impl/pu;->h:I

    if-lt v1, v3, :cond_6

    .line 106
    sget v3, Lcom/flurry/android/monolithic/sdk/impl/pu;->h:I

    sub-int/2addr v1, v3

    .line 107
    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x32

    aput-char v4, p1, v0

    move v0, v3

    .line 112
    :cond_4
    :goto_3
    div-int/lit16 v3, v1, 0x3e8

    .line 113
    mul-int/lit16 v4, v3, 0x3e8

    sub-int/2addr v1, v4

    .line 115
    div-int/lit16 v4, v3, 0x3e8

    .line 116
    mul-int/lit16 v5, v4, 0x3e8

    sub-int/2addr v3, v5

    .line 119
    if-eqz v2, :cond_7

    .line 120
    invoke-static {v4, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/pu;->c(I[CI)I

    move-result v0

    .line 124
    :goto_4
    invoke-static {v3, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/pu;->c(I[CI)I

    move-result v0

    .line 125
    invoke-static {v1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/pu;->c(I[CI)I

    move-result v0

    goto :goto_0

    .line 102
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 109
    :cond_6
    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x31

    aput-char v4, p1, v0

    move v0, v3

    goto :goto_3

    .line 122
    :cond_7
    invoke-static {v4, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/pu;->b(I[CI)I

    move-result v0

    goto :goto_4

    :cond_8
    move v0, p2

    move v1, p0

    goto :goto_1
.end method

.method public static a(J[CI)I
    .locals 11

    .prologue
    .line 186
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 190
    sget-wide v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->k:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 191
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/pu;->a(I[CI)I

    move-result v0

    .line 234
    :goto_0
    return v0

    .line 193
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 195
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 196
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pu;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 197
    add-int/2addr v0, p3

    goto :goto_0

    .line 199
    :cond_1
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    aput-char v1, p2, p3

    .line 200
    neg-long v1, p0

    .line 211
    :goto_1
    invoke-static {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/pu;->b(J)I

    move-result v3

    add-int/2addr v3, v0

    move-wide v4, v1

    move v1, v3

    .line 215
    :goto_2
    sget-wide v6, Lcom/flurry/android/monolithic/sdk/impl/pu;->l:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 216
    add-int/lit8 v1, v1, -0x3

    .line 217
    sget-wide v6, Lcom/flurry/android/monolithic/sdk/impl/pu;->j:J

    div-long v6, v4, v6

    .line 218
    sget-wide v8, Lcom/flurry/android/monolithic/sdk/impl/pu;->j:J

    mul-long/2addr v8, v6

    sub-long/2addr v4, v8

    long-to-int v2, v4

    .line 219
    invoke-static {v2, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/pu;->c(I[CI)I

    move-wide v4, v6

    .line 221
    goto :goto_2

    .line 202
    :cond_2
    sget-wide v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->l:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_5

    .line 203
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/pu;->a(I[CI)I

    move-result v0

    goto :goto_0

    .line 223
    :cond_3
    long-to-int v2, v4

    move v10, v2

    move v2, v1

    move v1, v10

    .line 224
    :goto_3
    const/16 v4, 0x3e8

    if-lt v1, v4, :cond_4

    .line 225
    add-int/lit8 v2, v2, -0x3

    .line 226
    div-int/lit16 v4, v1, 0x3e8

    .line 227
    mul-int/lit16 v5, v4, 0x3e8

    sub-int/2addr v1, v5

    .line 228
    invoke-static {v1, p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/pu;->c(I[CI)I

    move v1, v4

    .line 230
    goto :goto_3

    .line 232
    :cond_4
    invoke-static {v1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/pu;->b(I[CI)I

    move v0, v3

    .line 234
    goto :goto_0

    :cond_5
    move v0, p3

    move-wide v1, p0

    goto :goto_1
.end method

.method public static a(D)Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->e:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    .line 297
    if-ltz p0, :cond_0

    .line 298
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pu;->e:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 305
    :goto_0
    return-object v0

    .line 300
    :cond_0
    neg-int v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 301
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pu;->f:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 302
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pu;->f:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    .line 305
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 312
    long-to-int v0, p0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/pu;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(I[CI)I
    .locals 4

    .prologue
    .line 330
    shl-int/lit8 v0, p0, 0x2

    .line 331
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pu;->b:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v0, v1, v0

    .line 332
    if-eqz v0, :cond_1

    .line 333
    add-int/lit8 v1, p2, 0x1

    aput-char v0, p1, p2

    move v0, v1

    .line 335
    :goto_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pu;->b:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v2

    .line 336
    if-eqz v1, :cond_0

    .line 337
    add-int/lit8 v2, v0, 0x1

    aput-char v1, p1, v0

    move v0, v2

    .line 340
    :cond_0
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pu;->b:[C

    aget-char v2, v2, v3

    aput-char v2, p1, v0

    .line 341
    return v1

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method private static b(J)I
    .locals 8

    .prologue
    .line 385
    const/16 v0, 0xa

    .line 386
    sget-wide v1, Lcom/flurry/android/monolithic/sdk/impl/pu;->i:J

    move-wide v6, v1

    move v2, v0

    move-wide v0, v6

    .line 389
    :goto_0
    cmp-long v3, p0, v0

    if-ltz v3, :cond_0

    .line 390
    const/16 v3, 0x13

    if-ne v2, v3, :cond_1

    .line 396
    :cond_0
    return v2

    .line 393
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 394
    const/4 v3, 0x3

    shl-long v3, v0, v3

    const/4 v5, 0x1

    shl-long/2addr v0, v5

    add-long/2addr v0, v3

    goto :goto_0
.end method

.method private static c(I[CI)I
    .locals 5

    .prologue
    .line 362
    shl-int/lit8 v0, p0, 0x2

    .line 363
    add-int/lit8 v1, p2, 0x1

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pu;->c:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    aput-char v0, p1, p2

    .line 364
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pu;->c:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v2, v2, v3

    aput-char v2, p1, v1

    .line 365
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pu;->c:[C

    aget-char v2, v2, v4

    aput-char v2, p1, v0

    .line 366
    return v1
.end method
