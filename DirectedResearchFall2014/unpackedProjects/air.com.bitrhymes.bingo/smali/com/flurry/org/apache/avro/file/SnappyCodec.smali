.class Lcom/flurry/org/apache/avro/file/SnappyCodec;
.super Lcom/flurry/org/apache/avro/file/Codec;
.source "SnappyCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/file/SnappyCodec$1;,
        Lcom/flurry/org/apache/avro/file/SnappyCodec$Option;
    }
.end annotation


# instance fields
.field private crc32:Ljava/util/zip/CRC32;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/Codec;-><init>()V

    .line 28
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/flurry/org/apache/avro/file/SnappyCodec;->crc32:Ljava/util/zip/CRC32;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/org/apache/avro/file/SnappyCodec$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/file/SnappyCodec;-><init>()V

    return-void
.end method


# virtual methods
.method compress(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Lorg/xerial/snappy/Snappy;->maxCompressedLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    .local v0, out:Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lorg/xerial/snappy/Snappy;->compress([BII[BI)I

    move-result v1

    .line 47
    .local v1, size:I
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/SnappyCodec;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 48
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/SnappyCodec;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/CRC32;->update([BII)V

    .line 49
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/SnappyCodec;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 51
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 53
    return-object v0
.end method

.method decompress(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-static {v2, v3, v4}, Lorg/xerial/snappy/Snappy;->uncompressedLength([BII)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    .local v0, out:Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v7}, Lorg/xerial/snappy/Snappy;->uncompress([BII[BI)I

    move-result v1

    .line 62
    .local v1, size:I
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/SnappyCodec;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 65
    iget-object v2, p0, Lcom/flurry/org/apache/avro/file/SnappyCodec;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3, v7, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iget-object v3, p0, Lcom/flurry/org/apache/avro/file/SnappyCodec;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    long-to-int v3, v3

    if-eq v2, v3, :cond_0

    .line 67
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Checksum failure"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    .line 76
    if-ne p0, p1, :cond_0

    move v0, v2

    .line 80
    :goto_0
    return v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 80
    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "snappy"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/file/SnappyCodec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
