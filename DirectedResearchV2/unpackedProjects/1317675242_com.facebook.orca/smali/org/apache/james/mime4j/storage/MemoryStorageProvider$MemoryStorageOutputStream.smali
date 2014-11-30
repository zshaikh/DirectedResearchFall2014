.class final Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;
.source "MemoryStorageProvider.java"


# instance fields
.field a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    .line 52
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/storage/MemoryStorageProvider$1;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([BII)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;->a:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->a([BII)V

    .line 58
    return-void
.end method
