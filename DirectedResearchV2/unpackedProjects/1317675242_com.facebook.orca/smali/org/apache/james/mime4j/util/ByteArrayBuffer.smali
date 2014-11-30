.class public final Lorg/apache/james/mime4j/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"

# interfaces
.implements Lorg/apache/james/mime4j/util/ByteSequence;


# instance fields
.field private b:[B

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-gez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->b:[B

    .line 37
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->b:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 61
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->b:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->b:[B

    .line 63
    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 3

    .prologue
    .line 66
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 73
    :cond_3
    if-eqz p3, :cond_0

    .line 76
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->c:I

    add-int/2addr v0, p3

    .line 77
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->b:[B

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 78
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->a(I)V

    .line 80
    :cond_4
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->b:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->c:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->c:I

    goto :goto_0
.end method

.method public a()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->c:I

    new-array v0, v0, [B

    .line 99
    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->c:I

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->b:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_0
    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->c:I

    return v0
.end method

.method public c()[B
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->b:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
