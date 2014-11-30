.class public Lorg/apache/james/mime4j/storage/TempFileStorageProvider;
.super Lorg/apache/james/mime4j/storage/AbstractStorageProvider;
.source "TempFileStorageProvider.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "m4j"

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/AbstractStorageProvider;-><init>()V

    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid prefix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->a:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->b:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->c:Ljava/io/File;

    .line 101
    return-void
.end method


# virtual methods
.method public a()Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->b:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->c:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 107
    new-instance v1, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method
