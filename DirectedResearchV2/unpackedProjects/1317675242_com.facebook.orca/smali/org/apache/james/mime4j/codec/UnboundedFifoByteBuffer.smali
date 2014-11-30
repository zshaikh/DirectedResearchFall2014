.class Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;
.super Ljava/lang/Object;
.source "UnboundedFifoByteBuffer.java"


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-gtz p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    .line 78
    iput v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    .line 79
    iput v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    .line 80
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 186
    add-int/lit8 v0, p1, 0x1

    .line 187
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 190
    :cond_0
    return v0
.end method

.method static synthetic a(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a(I)I

    move-result v0

    return v0
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 200
    add-int/lit8 v0, p1, -0x1

    .line 201
    if-gez v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 204
    :cond_0
    return v0
.end method

.method static synthetic b(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 88
    .line 90
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    add-int/2addr v0, v1

    .line 96
    :goto_0
    return v0

    .line 93
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(B)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 117
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    array-length v0, v0

    sub-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 120
    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    move v2, v4

    :cond_0
    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    if-eq v1, v3, :cond_1

    .line 121
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    aget-byte v3, v3, v1

    aput-byte v3, v0, v2

    .line 122
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    aput-byte v4, v3, v1

    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 126
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    array-length v3, v3

    if-ne v1, v3, :cond_0

    move v1, v4

    .line 127
    goto :goto_0

    .line 131
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    .line 132
    iput v4, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    .line 133
    iput v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    .line 136
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    aput-byte p1, v0, v1

    .line 137
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    .line 138
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 139
    iput v4, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    .line 141
    :cond_3
    return v5
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()B
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    aget-byte v0, v0, v1

    .line 171
    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    .line 172
    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    .line 176
    :cond_1
    return v0
.end method

.method public d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;-><init>(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;)V

    return-object v0
.end method
