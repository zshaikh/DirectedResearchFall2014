.class final Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;
.super Ljava/lang/Object;
.source "ThresholdStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# instance fields
.field private a:[B

.field private final b:I

.field private c:Lorg/apache/james/mime4j/storage/Storage;


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->a:[B

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->a:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 156
    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->c:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v1}, Lorg/apache/james/mime4j/storage/Storage;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 157
    new-instance v2, Ljava/io/SequenceInputStream;

    invoke-direct {v2, v0, v1}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v2
.end method
