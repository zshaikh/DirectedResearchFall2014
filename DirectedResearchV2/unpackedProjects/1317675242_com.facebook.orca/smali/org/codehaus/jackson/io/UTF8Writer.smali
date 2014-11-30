.class public final Lorg/codehaus/jackson/io/UTF8Writer;
.super Ljava/io/Writer;
.source "UTF8Writer.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/io/IOContext;

.field b:Ljava/io/OutputStream;

.field c:[B

.field final d:I

.field e:I

.field f:I


# direct methods
.method private a(I)I
    .locals 4

    .prologue
    const v3, 0xdc00

    .line 361
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->f:I

    .line 362
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->f:I

    .line 365
    if-lt p1, v3, :cond_0

    const v1, 0xdfff

    if-le p1, v1, :cond_1

    .line 366
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken surrogate pair: first char 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", second 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; illegal combination"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_1
    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    sub-int v1, p1, v3

    add-int/2addr v0, v1

    return v0
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 374
    const v0, 0x10ffff

    if-le p1, v0, :cond_0

    .line 375
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    .line 378
    const v0, 0xdbff

    if-gt p1, v0, :cond_1

    .line 379
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 50
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 58
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    iput v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->b:Ljava/io/OutputStream;

    .line 63
    iput-object v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->b:Ljava/io/OutputStream;

    .line 65
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    .line 66
    if-eqz v1, :cond_1

    .line 67
    iput-object v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    .line 68
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->a:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/IOContext;->b([B)V

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 76
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->f:I

    .line 77
    iput v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->f:I

    .line 78
    if-lez v0, :cond_2

    .line 79
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->b(I)V

    .line 82
    :cond_2
    return-void
.end method

.method public flush()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 89
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    iput v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 95
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 205
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->f:I

    if-lez v0, :cond_1

    .line 206
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->a(I)I

    move-result v0

    .line 218
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->d:I

    if-lt v1, v2, :cond_0

    .line 219
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    iget v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 220
    iput v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    .line 223
    :cond_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_3

    .line 224
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 245
    :goto_1
    return-void

    .line 208
    :cond_1
    const v0, 0xd800

    if-lt p1, v0, :cond_7

    const v0, 0xdfff

    if-gt p1, v0, :cond_7

    .line 210
    const v0, 0xdbff

    if-le p1, v0, :cond_2

    .line 211
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/io/UTF8Writer;->b(I)V

    .line 214
    :cond_2
    iput p1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->f:I

    goto :goto_1

    .line 226
    :cond_3
    iget v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    .line 227
    const/16 v2, 0x800

    if-ge v0, v2, :cond_4

    .line 228
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v0, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 229
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    add-int/lit8 v2, v3, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    move v0, v2

    .line 243
    :goto_2
    iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    goto :goto_1

    .line 230
    :cond_4
    const v2, 0xffff

    if-gt v0, v2, :cond_5

    .line 231
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v0, 0xc

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 232
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 233
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    add-int/lit8 v3, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    move v0, v3

    goto :goto_2

    .line 235
    :cond_5
    const v2, 0x10ffff

    if-le v0, v2, :cond_6

    .line 236
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->b(I)V

    .line 238
    :cond_6
    iget-object v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v0, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 239
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 240
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 241
    iget-object v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    add-int/lit8 v2, v3, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    move v0, v2

    goto :goto_2

    :cond_7
    move v0, p1

    goto/16 :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(Ljava/lang/String;II)V

    .line 251
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 11

    .prologue
    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 256
    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    .line 257
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->f:I

    if-lez v0, :cond_e

    .line 265
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 266
    add-int/lit8 v2, p3, -0x1

    .line 267
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    move v1, v0

    move v0, v2

    .line 271
    :goto_1
    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    .line 272
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    .line 273
    iget v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->d:I

    .line 276
    add-int/2addr v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 279
    :goto_2
    if-ge v2, v0, :cond_d

    .line 283
    if-lt v1, v4, :cond_2

    .line 284
    iget-object v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->b:Ljava/io/OutputStream;

    invoke-virtual {v5, v3, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    move v1, v8

    .line 288
    :cond_2
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 290
    if-ge v2, v9, :cond_c

    .line 291
    add-int/lit8 v6, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    .line 293
    sub-int v1, v0, v5

    .line 294
    sub-int v2, v4, v6

    .line 296
    if-le v1, v2, :cond_3

    move v1, v2

    .line 299
    :cond_3
    add-int/2addr v1, v5

    move v2, v6

    .line 302
    :goto_3
    if-lt v5, v1, :cond_4

    move v1, v2

    move v2, v5

    .line 303
    goto :goto_2

    .line 305
    :cond_4
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 306
    if-lt v5, v9, :cond_5

    move v1, v5

    move v5, v6

    .line 314
    :goto_4
    const/16 v6, 0x800

    if-ge v1, v6, :cond_6

    .line 315
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v1, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 316
    add-int/lit8 v2, v6, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    move v1, v2

    move v2, v5

    goto :goto_2

    .line 309
    :cond_5
    add-int/lit8 v7, v2, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    move v2, v7

    move v5, v6

    goto :goto_3

    .line 319
    :cond_6
    const v6, 0xd800

    if-lt v1, v6, :cond_7

    const v6, 0xdfff

    if-le v1, v6, :cond_8

    .line 320
    :cond_7
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v1, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 321
    add-int/lit8 v2, v6, 0x1

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 322
    add-int/lit8 v6, v2, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    move v1, v6

    move v2, v5

    .line 323
    goto :goto_2

    .line 326
    :cond_8
    const v6, 0xdbff

    if-le v1, v6, :cond_9

    .line 327
    iput v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    .line 328
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->b(I)V

    .line 330
    :cond_9
    iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->f:I

    .line 332
    if-lt v5, v0, :cond_a

    move v0, v2

    .line 346
    :goto_5
    iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    goto/16 :goto_0

    .line 335
    :cond_a
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/io/UTF8Writer;->a(I)I

    move-result v5

    .line 336
    const v6, 0x10ffff

    if-le v5, v6, :cond_b

    .line 337
    iput v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    .line 338
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/io/UTF8Writer;->b(I)V

    .line 340
    :cond_b
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 341
    add-int/lit8 v2, v6, 0x1

    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 342
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 343
    add-int/lit8 v2, v6, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_2

    :cond_c
    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_4

    :cond_d
    move v0, v1

    goto :goto_5

    :cond_e
    move v0, p3

    move v1, p2

    goto/16 :goto_1
.end method

.method public write([C)V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write([CII)V

    .line 102
    return-void
.end method

.method public write([CII)V
    .locals 11

    .prologue
    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 108
    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    .line 109
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 110
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->f:I

    if-lez v0, :cond_e

    .line 117
    add-int/lit8 v0, p2, 0x1

    aget-char v1, p1, p2

    .line 118
    add-int/lit8 v2, p3, -0x1

    .line 119
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->write(I)V

    move v1, v0

    move v0, v2

    .line 123
    :goto_1
    iget v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    .line 124
    iget-object v3, p0, Lorg/codehaus/jackson/io/UTF8Writer;->c:[B

    .line 125
    iget v4, p0, Lorg/codehaus/jackson/io/UTF8Writer;->d:I

    .line 128
    add-int/2addr v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 131
    :goto_2
    if-ge v2, v0, :cond_d

    .line 135
    if-lt v1, v4, :cond_2

    .line 136
    iget-object v5, p0, Lorg/codehaus/jackson/io/UTF8Writer;->b:Ljava/io/OutputStream;

    invoke-virtual {v5, v3, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    move v1, v8

    .line 140
    :cond_2
    add-int/lit8 v5, v2, 0x1

    aget-char v2, p1, v2

    .line 142
    if-ge v2, v9, :cond_c

    .line 143
    add-int/lit8 v6, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    .line 145
    sub-int v1, v0, v5

    .line 146
    sub-int v2, v4, v6

    .line 148
    if-le v1, v2, :cond_3

    move v1, v2

    .line 151
    :cond_3
    add-int/2addr v1, v5

    move v2, v6

    .line 154
    :goto_3
    if-lt v5, v1, :cond_4

    move v1, v2

    move v2, v5

    .line 155
    goto :goto_2

    .line 157
    :cond_4
    add-int/lit8 v6, v5, 0x1

    aget-char v5, p1, v5

    .line 158
    if-lt v5, v9, :cond_5

    move v1, v5

    move v5, v6

    .line 166
    :goto_4
    const/16 v6, 0x800

    if-ge v1, v6, :cond_6

    .line 167
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v1, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 168
    add-int/lit8 v2, v6, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    move v1, v2

    move v2, v5

    goto :goto_2

    .line 161
    :cond_5
    add-int/lit8 v7, v2, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    move v2, v7

    move v5, v6

    goto :goto_3

    .line 171
    :cond_6
    const v6, 0xd800

    if-lt v1, v6, :cond_7

    const v6, 0xdfff

    if-le v1, v6, :cond_8

    .line 172
    :cond_7
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v1, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 173
    add-int/lit8 v2, v6, 0x1

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 174
    add-int/lit8 v6, v2, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    move v1, v6

    move v2, v5

    .line 175
    goto :goto_2

    .line 178
    :cond_8
    const v6, 0xdbff

    if-le v1, v6, :cond_9

    .line 179
    iput v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    .line 180
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/io/UTF8Writer;->b(I)V

    .line 182
    :cond_9
    iput v1, p0, Lorg/codehaus/jackson/io/UTF8Writer;->f:I

    .line 184
    if-lt v5, v0, :cond_a

    move v0, v2

    .line 198
    :goto_5
    iput v0, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    goto/16 :goto_0

    .line 187
    :cond_a
    add-int/lit8 v1, v5, 0x1

    aget-char v5, p1, v5

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/io/UTF8Writer;->a(I)I

    move-result v5

    .line 188
    const v6, 0x10ffff

    if-le v5, v6, :cond_b

    .line 189
    iput v2, p0, Lorg/codehaus/jackson/io/UTF8Writer;->e:I

    .line 190
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/io/UTF8Writer;->b(I)V

    .line 192
    :cond_b
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 193
    add-int/lit8 v2, v6, 0x1

    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 194
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    .line 195
    add-int/lit8 v2, v6, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_2

    :cond_c
    move v10, v2

    move v2, v1

    move v1, v10

    goto/16 :goto_4

    :cond_d
    move v0, v1

    goto :goto_5

    :cond_e
    move v0, p3

    move v1, p2

    goto/16 :goto_1
.end method
