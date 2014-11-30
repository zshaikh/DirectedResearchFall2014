.class Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;
.super Ljava/io/FilterOutputStream;
.source "FileCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filecache/FileCacheRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TempFileOutputStream"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mTempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/FileDescriptor;Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "temp"    # Ljava/io/File;
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 202
    if-nez p2, :cond_0

    .line 203
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File descriptor is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    if-nez p3, :cond_1

    .line 206
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Temporary file is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    if-nez p4, :cond_2

    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination file is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_2
    iput-object p2, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 212
    iput-object p3, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mTempFile:Ljava/io/File;

    .line 213
    iput-object p4, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mFile:Ljava/io/File;

    .line 214
    return-void
.end method

.method private fsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 239
    return-void
.end method

.method private moveTempFile()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 222
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mTempFile:Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 223
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 243
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 249
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 247
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    iget-object v1, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mTempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 248
    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->flush()V

    .line 229
    invoke-direct {p0}, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->fsync()V

    .line 230
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 231
    invoke-direct {p0}, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->moveTempFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 235
    return-void

    .line 232
    :catchall_0
    move-exception v0

    .line 233
    iget-object v1, p0, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->mTempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 234
    throw v0
.end method
