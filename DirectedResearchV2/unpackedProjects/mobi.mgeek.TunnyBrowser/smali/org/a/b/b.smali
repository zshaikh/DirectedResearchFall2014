.class public final Lorg/a/b/b;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0xf0

    const/16 v7, 0xe0

    const/16 v6, 0xc0

    const/4 v1, 0x0

    .line 10
    move v0, v1

    move v2, v1

    .line 13
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    if-ne v3, v8, :cond_0

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 22
    :cond_0
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xe0

    if-ne v3, v7, :cond_1

    .line 24
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 26
    :cond_1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v6, :cond_2

    .line 28
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 32
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_3
    new-array v4, v0, [C

    move v0, v1

    .line 41
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_8

    .line 45
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xf0

    if-ne v2, v8, :cond_4

    .line 47
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    .line 48
    const/high16 v3, 0x10000

    sub-int/2addr v2, v3

    .line 49
    const v3, 0xd800

    shr-int/lit8 v5, v2, 0xa

    or-int/2addr v3, v5

    int-to-char v5, v3

    .line 50
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    int-to-char v2, v2

    .line 51
    add-int/lit8 v3, v1, 0x1

    aput-char v5, v4, v1

    .line 53
    add-int/lit8 v0, v0, 0x4

    .line 77
    :goto_2
    add-int/lit8 v1, v3, 0x1

    aput-char v2, v4, v3

    goto :goto_1

    .line 55
    :cond_4
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xe0

    if-ne v2, v7, :cond_5

    .line 57
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    .line 59
    add-int/lit8 v0, v0, 0x3

    move v3, v1

    goto :goto_2

    .line 61
    :cond_5
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xd0

    const/16 v3, 0xd0

    if-ne v2, v3, :cond_6

    .line 63
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    .line 64
    add-int/lit8 v0, v0, 0x2

    move v3, v1

    goto :goto_2

    .line 66
    :cond_6
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_7

    .line 68
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    .line 69
    add-int/lit8 v0, v0, 0x2

    move v3, v1

    goto :goto_2

    .line 73
    :cond_7
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 74
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_2

    .line 80
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/a/b/b;->a([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([C)[B
    .locals 5

    .prologue
    .line 90
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_5

    .line 96
    aget-char v2, p0, v0

    .line 98
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 100
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 138
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 139
    goto :goto_0

    .line 102
    :cond_0
    const/16 v3, 0x800

    if-ge v2, v3, :cond_1

    .line 104
    shr-int/lit8 v3, v2, 0x6

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 108
    :cond_1
    const v3, 0xd800

    if-lt v2, v3, :cond_4

    const v3, 0xdfff

    if-gt v2, v3, :cond_4

    .line 112
    add-int/lit8 v3, v0, 0x1

    array-length v4, p0

    if-lt v3, v4, :cond_2

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid UTF-16 codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    add-int/lit8 v0, v0, 0x1

    aget-char v3, p0, v0

    .line 121
    const v4, 0xdbff

    if-le v2, v4, :cond_3

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid UTF-16 codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_3
    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v2, v3

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    .line 126
    shr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 127
    shr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 128
    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 133
    :cond_4
    shr-int/lit8 v3, v2, 0xc

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 135
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 181
    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    .line 184
    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_1

    .line 186
    aget-char v3, v2, v0

    .line 187
    const/16 v4, 0x41

    if-gt v4, v3, :cond_0

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_0

    .line 189
    const/4 v1, 0x1

    .line 190
    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    if-eqz v1, :cond_2

    .line 196
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    .line 199
    :cond_2
    return-object p0
.end method
