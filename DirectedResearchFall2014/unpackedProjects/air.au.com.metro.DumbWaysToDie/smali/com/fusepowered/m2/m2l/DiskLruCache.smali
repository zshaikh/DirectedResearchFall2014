.class public Lcom/fusepowered/m2/m2l/DiskLruCache;
.super Landroid/support/v4/util/LruCache;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCacheDirectory:Ljava/io/File;

.field private final mCacheDirectoryName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "cacheDirectoryName"
    .parameter "maxSizeBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p3}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    if-nez p2, :cond_1

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDirectoryName may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    if-gez p3, :cond_2

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSizeBytes must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_2
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/DiskLruCache;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/DiskLruCache;->mCacheDirectoryName:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/DiskLruCache;->mCacheDirectoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Files;->createDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/DiskLruCache;->mCacheDirectory:Ljava/io/File;

    .line 36
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/DiskLruCache;->mCacheDirectory:Ljava/io/File;

    if-nez v0, :cond_3

    .line 37
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain access to directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/DiskLruCache;->mCacheDirectoryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_3
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/DiskLruCache;->loadFilesFromDisk()V

    .line 41
    return-void
.end method

.method private createFile(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .locals 6
    .parameter "fileName"
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 87
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fusepowered/m2/m2l/DiskLruCache;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/m2/m2l/DiskLruCache;->mCacheDirectoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2, v2}, Lcom/fusepowered/m2/m2l/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    move-object v3, v1

    .line 105
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    :goto_0
    return-object v3

    .line 92
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/FileNotFoundException;
    move-object v3, v5

    .line 93
    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 99
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 100
    goto :goto_0

    .line 101
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 102
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 103
    throw v3
.end method

.method private loadFilesFromDisk()V
    .locals 5

    .prologue
    .line 109
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/DiskLruCache;->mCacheDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 111
    .local v0, allFiles:[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 112
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 116
    :cond_0
    return-void

    .line 112
    :cond_1
    aget-object v1, v0, v3

    .line 113
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/fusepowered/m2/m2l/DiskLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/io/File;

    check-cast p4, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fusepowered/m2/m2l/DiskLruCache;->entryRemoved(ZLjava/lang/String;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    if-eqz p3, :cond_0

    .line 127
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to delete file from cache: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method

.method getCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/DiskLruCache;->mCacheDirectory:Ljava/io/File;

    return-object v0
.end method

.method getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "key"

    .prologue
    .line 48
    invoke-static {p1}, Lcom/fusepowered/m2/m2l/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/DiskLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 50
    .local v0, value:Ljava/io/File;
    if-nez v0, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 54
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method declared-synchronized putStream(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 4
    .parameter "fileName"
    .parameter "content"

    .prologue
    const/4 v3, 0x0

    .line 58
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v3

    .line 75
    :goto_0
    monitor-exit p0

    return v2

    .line 62
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/m2/m2l/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, hashedFileName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/DiskLruCache;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 65
    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/fusepowered/m2/m2l/DiskLruCache;->createFile(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v0

    .line 70
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    .line 71
    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/fusepowered/m2/m2l/DiskLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 v2, 0x1

    goto :goto_0

    .line 58
    .end local v0           #file:Ljava/io/File;
    .end local v1           #hashedFileName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized removeStream(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 79
    monitor-enter p0

    if-nez p1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 83
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/fusepowered/m2/m2l/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/DiskLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/m2/m2l/DiskLruCache;->sizeOf(Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Ljava/io/File;)I
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 135
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 136
    invoke-static {p2}, Lcom/fusepowered/m2/m2l/util/Files;->intLength(Ljava/io/File;)I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
