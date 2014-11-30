.class final Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;
.source "ThresholdStorageProvider.java"


# instance fields
.field final synthetic a:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

.field private final b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private c:Lorg/apache/james/mime4j/storage/StorageOutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)V
    .locals 2

    .prologue
    .line 87
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->a:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    .line 88
    invoke-static {p1}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->a(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)I

    move-result v0

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 89
    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 90
    return-void
.end method


# virtual methods
.method protected a([BII)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->a:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    invoke-static {v0}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->a(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->b()I

    move-result v1

    sub-int/2addr v0, v1

    .line 104
    if-lez v0, :cond_2

    .line 105
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 106
    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->b:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->a([BII)V

    .line 107
    add-int v1, p2, v0

    .line 108
    sub-int v0, p3, v0

    .line 111
    :goto_0
    if-lez v0, :cond_1

    .line 112
    iget-object v2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->c:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->a:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    invoke-static {v2}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->b(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/james/mime4j/storage/StorageProvider;->a()Lorg/apache/james/mime4j/storage/StorageOutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->c:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    .line 115
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->c:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    invoke-virtual {v2, p1, v1, v0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write([BII)V

    .line 117
    :cond_1
    return-void

    :cond_2
    move v0, p3

    move v1, p2

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    .line 96
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->c:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->c:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    .line 98
    :cond_0
    return-void
.end method
