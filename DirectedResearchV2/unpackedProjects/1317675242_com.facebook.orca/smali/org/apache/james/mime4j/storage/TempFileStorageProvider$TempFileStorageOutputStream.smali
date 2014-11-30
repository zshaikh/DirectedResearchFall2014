.class final Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;
.source "TempFileStorageProvider.java"


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->a:Ljava/io/File;

    .line 117
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->b:Ljava/io/OutputStream;

    .line 118
    return-void
.end method


# virtual methods
.method protected a([BII)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 130
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    .line 123
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 124
    return-void
.end method
