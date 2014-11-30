.class public Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;
.source "BufferedLineReaderInputStream.java"


# instance fields
.field private a:Z

.field private b:[B

.field private c:I

.field private d:I


# virtual methods
.method public a(I)B
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    if-le p1, v0, :cond_1

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 294
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public a()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 83
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    if-lez v0, :cond_1

    .line 84
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    sub-int/2addr v0, v1

    .line 85
    if-lez v0, :cond_0

    .line 86
    iget-object v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b:[B

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    iget-object v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b:[B

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :cond_0
    iput v5, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    .line 89
    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    .line 92
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    .line 93
    iget-object v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    .line 94
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 95
    if-ne v1, v4, :cond_2

    move v0, v4

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_2
    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    move v0, v1

    .line 99
    goto :goto_0
.end method

.method public a([B)I
    .locals 3

    .prologue
    .line 271
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a([BII)I

    move-result v0

    return v0
.end method

.method public a([BII)I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    if-lt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    if-le v0, v1, :cond_2

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 225
    :cond_2
    array-length v0, p1

    if-ge p3, v0, :cond_3

    move v0, v8

    .line 259
    :goto_0
    return v0

    .line 229
    :cond_3
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v1, v7

    .line 230
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 231
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v7

    .line 233
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 234
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 235
    array-length v3, p1

    sub-int/2addr v3, v1

    aput v3, v0, v2

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v7

    .line 239
    :goto_3
    array-length v2, p1

    sub-int v2, p3, v2

    if-gt v1, v2, :cond_9

    .line 240
    add-int v2, p2, v1

    .line 241
    const/4 v3, 0x1

    move v4, v7

    .line 242
    :goto_4
    array-length v5, p1

    if-ge v4, v5, :cond_6

    .line 243
    iget-object v5, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b:[B

    add-int v6, v2, v4

    aget-byte v5, v5, v6

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_7

    move v3, v7

    .line 248
    :cond_6
    if-eqz v3, :cond_8

    move v0, v2

    .line 249
    goto :goto_0

    .line 242
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 252
    :cond_8
    array-length v3, p1

    add-int/2addr v2, v3

    .line 253
    iget-object v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b:[B

    array-length v3, v3

    if-lt v2, v3, :cond_a

    :cond_9
    move v0, v8

    .line 259
    goto :goto_0

    .line 256
    :cond_a
    iget-object v3, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b:[B

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    .line 257
    aget v2, v0, v2

    add-int/2addr v1, v2

    .line 258
    goto :goto_3
.end method

.method public b(I)I
    .locals 2

    .prologue
    .line 318
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 319
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    .line 320
    return v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 114
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 124
    :goto_0
    return v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a()I

    move-result v0

    .line 120
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 121
    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b:[B

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, -0x1

    .line 159
    :goto_0
    return v0

    .line 156
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 157
    goto :goto_0

    .line 159
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 129
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 148
    :goto_0
    return v0

    .line 132
    :cond_0
    if-nez p1, :cond_1

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a()I

    move-result v0

    .line 138
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 139
    goto :goto_0

    .line 142
    :cond_2
    iget v0, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    sub-int/2addr v0, v1

    .line 143
    if-le v0, p3, :cond_3

    move v0, p3

    .line 146
    :cond_3
    iget-object v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b:[B

    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    const-string v1, "[pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, "[limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget v1, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c:I

    :goto_0
    iget v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d:I

    if-ge v1, v2, :cond_0

    .line 339
    iget-object v2, p0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
