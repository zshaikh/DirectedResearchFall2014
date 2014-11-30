.class public final Lorg/codehaus/jackson/io/NumberOutput;
.super Ljava/lang/Object;
.source "NumberOutput.java"


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

    sput v0, Lorg/codehaus/jackson/io/NumberOutput;->g:I

    .line 8
    const v0, 0x3b9aca00

    sput v0, Lorg/codehaus/jackson/io/NumberOutput;->h:I

    .line 9
    const-wide v0, 0x2540be400L

    sput-wide v0, Lorg/codehaus/jackson/io/NumberOutput;->i:J

    .line 10
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lorg/codehaus/jackson/io/NumberOutput;->j:J

    .line 12
    const-wide/32 v0, -0x80000000

    sput-wide v0, Lorg/codehaus/jackson/io/NumberOutput;->k:J

    .line 13
    const-wide/32 v0, 0x7fffffff

    sput-wide v0, Lorg/codehaus/jackson/io/NumberOutput;->l:J

    .line 15
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/NumberOutput;->a:Ljava/lang/String;

    .line 17
    new-array v0, v13, [C

    sput-object v0, Lorg/codehaus/jackson/io/NumberOutput;->b:[C

    .line 18
    new-array v0, v13, [C

    sput-object v0, Lorg/codehaus/jackson/io/NumberOutput;->c:[C

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
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->b:[C

    aput-char v3, v9, v7

    .line 34
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->b:[C

    add-int/lit8 v10, v7, 0x1

    aput-char v6, v9, v10

    .line 35
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->b:[C

    add-int/lit8 v10, v7, 0x2

    aput-char v8, v9, v10

    .line 36
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->c:[C

    aput-char v2, v9, v7

    .line 37
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->c:[C

    add-int/lit8 v10, v7, 0x1

    aput-char v5, v9, v10

    .line 38
    sget-object v9, Lorg/codehaus/jackson/io/NumberOutput;->c:[C

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

    sput-object v0, Lorg/codehaus/jackson/io/NumberOutput;->d:[B

    move v0, v11

    .line 47
    :goto_5
    if-ge v0, v13, :cond_5

    .line 48
    sget-object v1, Lorg/codehaus/jackson/io/NumberOutput;->d:[B

    sget-object v2, Lorg/codehaus/jackson/io/NumberOutput;->c:[C

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

    sput-object v0, Lorg/codehaus/jackson/io/NumberOutput;->e:[Ljava/lang/String;

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

    sput-object v0, Lorg/codehaus/jackson/io/NumberOutput;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    sget-object v0, Lorg/codehaus/jackson/io/NumberOutput;->e:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    .line 297
    if-ltz p0, :cond_0

    .line 298
    sget-object v0, Lorg/codehaus/jackson/io/NumberOutput;->e:[Ljava/lang/String;

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
    sget-object v1, Lorg/codehaus/jackson/io/NumberOutput;->f:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 302
    sget-object v1, Lorg/codehaus/jackson/io/NumberOutput;->f:[Ljava/lang/String;

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

    invoke-static {v0}, Lorg/codehaus/jackson/io/NumberOutput;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
