.class public Lorg/c/a/d/b;
.super Ljava/lang/Object;
.source "B64Code.java"


# static fields
.field static final a:[C

.field static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0x40

    const/4 v1, 0x0

    .line 38
    new-array v0, v4, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/c/a/d/b;->a:[C

    .line 50
    new-array v0, v5, [B

    sput-object v0, Lorg/c/a/d/b;->b:[B

    move v0, v1

    .line 51
    :goto_0
    if-ge v0, v5, :cond_0

    .line 52
    sget-object v2, Lorg/c/a/d/b;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 53
    :goto_1
    if-ge v0, v4, :cond_1

    .line 54
    sget-object v2, Lorg/c/a/d/b;->b:[B

    sget-object v3, Lorg/c/a/d/b;->a:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v0, v2, v3

    .line 53
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    .line 55
    :cond_1
    sget-object v0, Lorg/c/a/d/b;->b:[B

    const/16 v2, 0x3d

    aput-byte v1, v0, v2

    .line 56
    return-void

    .line 38
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 95
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/c/a/d/b;->a([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)[C
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/16 v11, 0x3d

    .line 108
    if-nez p0, :cond_1

    .line 109
    const/4 v0, 0x0

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    array-length v3, p0

    .line 112
    add-int/lit8 v0, v3, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 113
    new-array v0, v0, [C

    .line 117
    div-int/lit8 v2, v3, 0x3

    mul-int/lit8 v4, v2, 0x3

    move v2, v1

    .line 118
    :goto_1
    if-ge v1, v4, :cond_2

    .line 120
    add-int/lit8 v5, v1, 0x1

    aget-byte v6, p0, v1

    .line 121
    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    .line 122
    add-int/lit8 v1, v7, 0x1

    aget-byte v7, p0, v7

    .line 123
    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lorg/c/a/d/b;->a:[C

    ushr-int/lit8 v10, v6, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v0, v2

    .line 124
    add-int/lit8 v2, v8, 0x1

    sget-object v9, Lorg/c/a/d/b;->a:[C

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    ushr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v6, v10

    aget-char v6, v9, v6

    aput-char v6, v0, v8

    .line 125
    add-int/lit8 v6, v2, 0x1

    sget-object v8, Lorg/c/a/d/b;->a:[C

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    ushr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v5, v9

    aget-char v5, v8, v5

    aput-char v5, v0, v2

    .line 126
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lorg/c/a/d/b;->a:[C

    and-int/lit8 v7, v7, 0x3f

    aget-char v5, v5, v7

    aput-char v5, v0, v6

    goto :goto_1

    .line 129
    :cond_2
    if-eq v3, v1, :cond_0

    .line 131
    rem-int/lit8 v3, v3, 0x3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    .line 144
    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lorg/c/a/d/b;->a:[C

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 145
    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lorg/c/a/d/b;->a:[C

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    .line 146
    add-int/lit8 v1, v2, 0x1

    aput-char v11, v0, v2

    .line 147
    add-int/lit8 v2, v1, 0x1

    aput-char v11, v0, v1

    goto/16 :goto_0

    .line 134
    :pswitch_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    .line 135
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    .line 136
    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lorg/c/a/d/b;->a:[C

    ushr-int/lit8 v6, v1, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    .line 137
    add-int/lit8 v2, v4, 0x1

    sget-object v5, Lorg/c/a/d/b;->a:[C

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v1, v6

    aget-char v1, v5, v1

    aput-char v1, v0, v4

    .line 138
    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lorg/c/a/d/b;->a:[C

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v4, v3

    aput-char v3, v0, v2

    .line 139
    add-int/lit8 v2, v1, 0x1

    aput-char v11, v0, v1

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
