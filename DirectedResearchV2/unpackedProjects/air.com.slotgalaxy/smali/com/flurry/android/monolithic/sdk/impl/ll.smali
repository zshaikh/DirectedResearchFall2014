.class public Lcom/flurry/android/monolithic/sdk/impl/ll;
.super Lcom/flurry/android/monolithic/sdk/impl/lx;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/android/monolithic/sdk/impl/lp;

.field private b:[B

.field private c:I

.field private d:I

.field private e:I

.field private final f:Lcom/flurry/android/monolithic/sdk/impl/nw;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/lx;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->a:Lcom/flurry/android/monolithic/sdk/impl/lp;

    .line 48
    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    .line 49
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->c:I

    .line 50
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    .line 51
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    .line 260
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/nw;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/nw;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->f:Lcom/flurry/android/monolithic/sdk/impl/nw;

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/lx;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->a:Lcom/flurry/android/monolithic/sdk/impl/lp;

    .line 48
    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    .line 49
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->c:I

    .line 50
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    .line 51
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    .line 260
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/nw;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/nw;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->f:Lcom/flurry/android/monolithic/sdk/impl/nw;

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(Ljava/io/InputStream;I)Lcom/flurry/android/monolithic/sdk/impl/ll;

    .line 64
    return-void
.end method

.method constructor <init>([BII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/lx;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->a:Lcom/flurry/android/monolithic/sdk/impl/lp;

    .line 48
    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    .line 49
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->c:I

    .line 50
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    .line 51
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    .line 260
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/nw;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/nw;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->f:Lcom/flurry/android/monolithic/sdk/impl/nw;

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a([BII)Lcom/flurry/android/monolithic/sdk/impl/ll;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    return p1
.end method

.method private a(ILcom/flurry/android/monolithic/sdk/impl/lp;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->a:Lcom/flurry/android/monolithic/sdk/impl/lp;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->a:Lcom/flurry/android/monolithic/sdk/impl/lp;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/lp;->a()V

    .line 96
    :cond_0
    invoke-virtual {p2, p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/lp;->a(ILcom/flurry/android/monolithic/sdk/impl/ll;)V

    .line 97
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->a:Lcom/flurry/android/monolithic/sdk/impl/lp;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ll;)[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ll;[B)[B
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/ll;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    return v0
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    return p1
.end method

.method private b(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x7f

    const/16 v8, 0x7f

    .line 190
    const/4 v0, 0x1

    .line 191
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 192
    int-to-long v2, v1

    and-long/2addr v2, v9

    const/16 v4, 0x1c

    shl-long/2addr v2, v4

    xor-long/2addr v2, p1

    .line 193
    if-le v1, v8, :cond_2

    .line 194
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v5, v0, 0x1

    add-int/2addr v0, v4

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 195
    int-to-long v6, v0

    and-long/2addr v6, v9

    const/16 v1, 0x23

    shl-long/2addr v6, v1

    xor-long v1, v2, v6

    .line 196
    if-le v0, v8, :cond_1

    .line 197
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v3, v3, 0x2

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 198
    int-to-long v5, v0

    and-long/2addr v5, v9

    const/16 v3, 0x2a

    shl-long/2addr v5, v3

    xor-long/2addr v1, v5

    .line 199
    if-le v0, v8, :cond_0

    .line 200
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x3

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 201
    int-to-long v5, v0

    and-long/2addr v5, v9

    const/16 v3, 0x31

    shl-long/2addr v5, v3

    xor-long/2addr v1, v5

    .line 202
    if-le v0, v8, :cond_0

    .line 203
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x4

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 204
    int-to-long v5, v0

    and-long/2addr v5, v9

    const/16 v3, 0x38

    shl-long/2addr v5, v3

    xor-long/2addr v1, v5

    .line 205
    if-le v0, v8, :cond_0

    .line 206
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x5

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 207
    int-to-long v5, v0

    and-long/2addr v5, v9

    const/16 v3, 0x3f

    shl-long/2addr v5, v3

    xor-long/2addr v1, v5

    .line 208
    if-le v0, v8, :cond_0

    .line 209
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid long encoding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v4

    .line 216
    :goto_0
    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    .line 217
    return-wide v1

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    move-wide v1, v2

    goto :goto_0
.end method

.method private b(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    sub-int/2addr v0, v1

    .line 458
    if-ge v0, p1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->a:Lcom/flurry/android/monolithic/sdk/impl/lp;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    iget v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->c:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/lp;->a([BIII)V

    .line 462
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/flurry/android/monolithic/sdk/impl/ll;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    return v0
.end method

.method static synthetic c(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->c:I

    return p1
.end method

.method private t()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->d()I

    move-result v0

    int-to-long v0, v0

    .line 372
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->e()J

    move-result-wide v0

    .line 374
    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(J)V

    .line 375
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->d()I

    move-result v0

    int-to-long v0, v0

    .line 376
    goto :goto_0

    .line 377
    :cond_0
    return-wide v0
.end method


# virtual methods
.method a(Ljava/io/InputStream;I)Lcom/flurry/android/monolithic/sdk/impl/ll;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/lq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/lq;-><init>(Ljava/io/InputStream;Lcom/flurry/android/monolithic/sdk/impl/lm;)V

    invoke-direct {p0, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(ILcom/flurry/android/monolithic/sdk/impl/lp;)V

    .line 73
    return-object p0
.end method

.method a([BII)Lcom/flurry/android/monolithic/sdk/impl/ll;
    .locals 3

    .prologue
    .line 77
    const/16 v0, 0x2000

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/lo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/flurry/android/monolithic/sdk/impl/lo;-><init>([BIILcom/flurry/android/monolithic/sdk/impl/lm;)V

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(ILcom/flurry/android/monolithic/sdk/impl/lp;)V

    .line 79
    return-object p0
.end method

.method a()Lcom/flurry/android/monolithic/sdk/impl/ln;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ln;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ll;Lcom/flurry/android/monolithic/sdk/impl/lm;)V

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/nw;)Lcom/flurry/android/monolithic/sdk/impl/nw;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->d()I

    move-result v0

    .line 252
    if-eqz p1, :cond_1

    move-object v1, p1

    .line 253
    :goto_0
    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/nw;->a(I)Lcom/flurry/android/monolithic/sdk/impl/nw;

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/nw;->a()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->c([BII)V

    .line 257
    :cond_0
    return-object v1

    .line 252
    :cond_1
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/nw;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/nw;-><init>()V

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->d()I

    move-result v0

    .line 276
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 278
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object v1, p1

    .line 282
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->c([BII)V

    .line 283
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 284
    return-object v1

    .line 280
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(J)V

    .line 300
    return-void
.end method

.method protected a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    sub-int/2addr v0, v1

    .line 309
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 310
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    .line 316
    :goto_0
    return-void

    .line 312
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    .line 313
    int-to-long v0, v0

    sub-long v0, p1, v0

    .line 314
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->a:Lcom/flurry/android/monolithic/sdk/impl/lp;

    invoke-virtual {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/lp;->a(J)V

    goto :goto_0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    return-void
.end method

.method public b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ll;->c([BII)V

    .line 295
    return-void
.end method

.method protected c([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    sub-int/2addr v0, v1

    .line 328
    if-gt p3, v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    .line 340
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    add-int v1, p2, v0

    .line 335
    sub-int v0, p3, v0

    .line 336
    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    .line 338
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->a:Lcom/flurry/android/monolithic/sdk/impl/lp;

    invoke-virtual {v2, p1, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/lp;->a([BII)V

    goto :goto_0
.end method

.method public c()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->a:Lcom/flurry/android/monolithic/sdk/impl/lp;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/flurry/android/monolithic/sdk/impl/lp;->b([BII)I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    .line 109
    iput v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    .line 110
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 115
    if-ne v0, v4, :cond_1

    move v0, v4

    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public d()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7f

    .line 120
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->b(I)V

    .line 121
    const/4 v0, 0x1

    .line 122
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 123
    and-int/lit8 v2, v1, 0x7f

    .line 124
    if-le v1, v5, :cond_3

    .line 125
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, v3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 126
    and-int/lit8 v1, v0, 0x7f

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v2

    .line 127
    if-le v0, v5, :cond_2

    .line 128
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 129
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0xe

    xor-int/2addr v1, v2

    .line 130
    if-le v0, v5, :cond_0

    .line 131
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 132
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v1, v2

    .line 133
    if-le v0, v5, :cond_0

    .line 134
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 135
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x1c

    xor-int/2addr v1, v2

    .line 136
    if-le v0, v5, :cond_0

    .line 137
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid int encoding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    move v1, v3

    .line 143
    :goto_0
    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    .line 144
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    if-le v1, v2, :cond_1

    .line 145
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 147
    :cond_1
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0

    :cond_2
    move v0, v1

    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public e()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7f

    .line 152
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->b(I)V

    .line 153
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 154
    and-int/lit8 v1, v0, 0x7f

    .line 156
    if-le v0, v4, :cond_3

    .line 157
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 158
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v1, v2

    .line 159
    if-le v0, v4, :cond_2

    .line 160
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 161
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0xe

    xor-int/2addr v1, v2

    .line 162
    if-le v0, v4, :cond_1

    .line 163
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 164
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v1, v2

    .line 165
    if-le v0, v4, :cond_0

    .line 168
    int-to-long v0, v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->b(J)J

    move-result-wide v0

    .line 181
    :goto_0
    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    if-le v2, v3, :cond_4

    .line 182
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 170
    :cond_0
    int-to-long v0, v1

    goto :goto_0

    .line 173
    :cond_1
    int-to-long v0, v1

    goto :goto_0

    .line 176
    :cond_2
    int-to-long v0, v1

    goto :goto_0

    .line 179
    :cond_3
    int-to-long v0, v1

    goto :goto_0

    .line 184
    :cond_4
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public f()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->b(I)V

    .line 223
    const/4 v0, 0x1

    .line 224
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, v3

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 226
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    if-le v1, v2, :cond_0

    .line 227
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 229
    :cond_0
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    .line 230
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public g()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->b(I)V

    .line 236
    const/4 v0, 0x1

    .line 237
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, v3

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 239
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x5

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x6

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->b:[B

    iget v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v4, 0x7

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 241
    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v2, v2, 0x8

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->e:I

    if-le v2, v3, :cond_0

    .line 242
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 244
    :cond_0
    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->d:I

    .line 245
    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    int-to-long v0, v1

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ll;->f:Lcom/flurry/android/monolithic/sdk/impl/nw;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(Lcom/flurry/android/monolithic/sdk/impl/nw;)Lcom/flurry/android/monolithic/sdk/impl/nw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/nw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->d()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(J)V

    .line 270
    return-void
.end method

.method public j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->d()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(J)V

    .line 290
    return-void
.end method

.method public k()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->d()I

    move-result v0

    return v0
.end method

.method protected l()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->e()J

    move-result-wide v0

    .line 351
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->e()J

    .line 353
    neg-long v0, v0

    .line 355
    :cond_0
    return-wide v0
.end method

.method public m()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->d()I

    move-result v0

    return v0
.end method
