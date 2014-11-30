.class public Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;
.source "MimeBoundaryInputStream.java"


# instance fields
.field private final a:[B

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;


# direct methods
.method private a()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 191
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->b:Z

    if-eqz v0, :cond_0

    move v0, v5

    .line 224
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a()I

    move-result v0

    .line 200
    :goto_1
    if-ne v0, v5, :cond_1

    move v1, v6

    :cond_1
    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->b:Z

    .line 203
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->a:[B

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a([B)I

    move-result v1

    .line 206
    :goto_2
    if-lez v1, :cond_3

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    sub-int v3, v1, v6

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a(I)B

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    .line 209
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->a:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 210
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->a:[B

    iget-object v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a([BII)I

    move-result v1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 198
    goto :goto_1

    .line 212
    :cond_3
    if-eq v1, v5, :cond_4

    .line 213
    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    .line 214
    iput-boolean v6, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->d:Z

    .line 215
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->d()V

    goto :goto_0

    .line 217
    :cond_4
    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->b:Z

    if-eqz v1, :cond_5

    .line 218
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d()I

    move-result v1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    goto :goto_0

    .line 220
    :cond_5
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->d()I

    move-result v1

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->a:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 228
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->a:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->e:I

    .line 229
    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 230
    if-lez v0, :cond_0

    .line 231
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a(I)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 232
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->e:I

    .line 233
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    .line 236
    :cond_0
    if-le v0, v3, :cond_1

    .line 237
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a(I)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 238
    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->e:I

    .line 239
    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    .line 242
    :cond_1
    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    const/16 v7, 0x2d

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 245
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->g:Z

    if-nez v0, :cond_1

    .line 246
    iput-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->g:Z

    .line 247
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->e:I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b(I)I

    move v0, v4

    .line 250
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->e()I

    move-result v1

    if-le v1, v4, :cond_4

    .line 251
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a(I)B

    move-result v1

    .line 252
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->a(I)B

    move-result v2

    .line 254
    if-eqz v0, :cond_0

    if-ne v1, v7, :cond_0

    if-ne v2, v7, :cond_0

    .line 255
    iput-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->f:Z

    .line 256
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b(I)I

    .line 257
    const/4 v0, 0x0

    .line 258
    goto :goto_0

    .line 261
    :cond_0
    const/16 v3, 0xd

    if-ne v1, v3, :cond_2

    if-ne v2, v6, :cond_2

    .line 262
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b(I)I

    .line 280
    :cond_1
    :goto_1
    return-void

    .line 264
    :cond_2
    if-ne v1, v6, :cond_3

    .line 265
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b(I)I

    goto :goto_1

    .line 269
    :cond_3
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->b(I)I

    goto :goto_0

    .line 273
    :cond_4
    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->b:Z

    if-nez v1, :cond_1

    .line 276
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c()I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 100
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->g:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 112
    :goto_0
    return v0

    .line 103
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->e()V

    move v0, v1

    .line 105
    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c()I

    .line 108
    :cond_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read()I

    move-result v0

    goto :goto_0

    .line 110
    :cond_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->e()V

    move v0, v1

    .line 112
    goto :goto_0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 120
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->g:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 132
    :goto_0
    return v0

    .line 123
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->e()V

    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c()I

    .line 128
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 131
    :cond_2
    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->c:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->h:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MimeBoundaryInputStream, boundary "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->a:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    .line 294
    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
