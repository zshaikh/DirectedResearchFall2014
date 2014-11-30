.class Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;
.super Ljava/lang/Object;
.source "UnboundedFifoByteBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;)V
    .locals 1

    .prologue
    .line 213
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v0, v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->b:I

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Byte;
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 227
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->b:I

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->c:I

    .line 228
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->b:I

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->b:I

    .line 229
    new-instance v0, Ljava/lang/Byte;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->c:I

    aget-byte v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->b:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 233
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->c:I

    if-ne v0, v4, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 238
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->c:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b:I

    if-ne v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c()B

    .line 240
    iput v4, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->c:I

    .line 260
    :goto_0
    return-void

    .line 245
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 246
    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    if-eq v0, v1, :cond_3

    .line 247
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 248
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    sub-int/2addr v0, v6

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v2, v2, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    aget-byte v2, v2, v5

    aput-byte v2, v1, v0

    move v0, v5

    .line 249
    goto :goto_1

    .line 251
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    sub-int v2, v0, v6

    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v3, v3, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_3
    iput v4, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->c:I

    .line 257
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v2, v2, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    invoke-static {v1, v2}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    .line 258
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a:[B

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c:I

    aput-byte v5, v0, v1

    .line 259
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->b:I

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->b(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->b:I

    goto :goto_0
.end method
