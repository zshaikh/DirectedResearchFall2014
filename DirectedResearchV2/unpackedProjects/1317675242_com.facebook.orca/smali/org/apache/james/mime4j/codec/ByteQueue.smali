.class public Lorg/apache/james/mime4j/codec/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->b:I

    .line 30
    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    .line 31
    return-void
.end method


# virtual methods
.method public a()B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->c()B

    move-result v0

    return v0
.end method

.method public a(B)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a(B)Z

    .line 40
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->a()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->b:I

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
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
    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->a:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
