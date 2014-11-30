.class final Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;
.super Ljava/lang/Object;
.source "MemoryStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# instance fields
.field private a:[B

.field private final b:I


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->a:[B

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->a:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
