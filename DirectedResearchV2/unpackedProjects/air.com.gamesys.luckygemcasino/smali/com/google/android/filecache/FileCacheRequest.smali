.class Lcom/google/android/filecache/FileCacheRequest;
.super Ljava/net/CacheRequest;
.source "FileCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOutputStream:Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;

.field private final mResponseCode:I

.field private final mResponseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;ILjava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "responseCode"    # I
    .param p3, "responseMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 70
    :cond_0
    if-nez p4, :cond_1

    .line 71
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 73
    :cond_1
    iput-object p1, p0, Lcom/google/android/filecache/FileCacheRequest;->mFile:Ljava/io/File;

    .line 74
    iput p2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseCode:I

    .line 75
    iput-object p3, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseMessage:Ljava/lang/String;

    .line 76
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Lcom/google/android/filecache/FileCacheRequest;->mHeaders:Ljava/util/Map;

    .line 77
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 88
    invoke-direct {p0}, Lcom/google/android/filecache/FileCacheRequest;->getStatus()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "status":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 90
    iget-object v4, p0, Lcom/google/android/filecache/FileCacheRequest;->mHeaders:Ljava/util/Map;

    const-string v5, "status"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_3
    return-void

    .line 77
    .end local v2    # "status":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 80
    .local v3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 81
    iget-object v5, p0, Lcom/google/android/filecache/FileCacheRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static createTempFile(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "suffix":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 50
    .local v0, "directory":Ljava/io/File;
    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 51
    .local v3, "temp":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 52
    return-object v3

    .line 46
    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "suffix":Ljava/lang/String;
    .end local v3    # "temp":Ljava/io/File;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    iget v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseCode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 109
    const/4 v1, 0x3

    .line 110
    .local v1, "capactity":I
    iget-object v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    iget-object v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x4

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 115
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    iget-object v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseMessage:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 117
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    iget-object v2, p0, Lcom/google/android/filecache/FileCacheRequest;->mResponseMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "capactity":I
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private writeHeaders(Ljava/io/DataOutput;)V
    .locals 8
    .param p1, "dout"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v5, p0, Lcom/google/android/filecache/FileCacheRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v1

    .line 128
    .local v1, "headerCount":I
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 129
    iget-object v5, p0, Lcom/google/android/filecache/FileCacheRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 138
    return-void

    .line 129
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 132
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 133
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 134
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    .local v3, "value":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;

    invoke-virtual {v0}, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;->abort()V

    .line 179
    :cond_0
    return-void
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v6, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;

    if-eqz v6, :cond_1

    .line 143
    iget-object v6, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;

    .line 159
    :cond_0
    :goto_0
    return-object v6

    .line 146
    :cond_1
    iget-object v6, p0, Lcom/google/android/filecache/FileCacheRequest;->mFile:Ljava/io/File;

    invoke-static {v6}, Lcom/google/android/filecache/FileCacheRequest;->createTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 148
    .local v5, "temp":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 149
    .local v2, "fileOutput":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 150
    .local v1, "fd":Ljava/io/FileDescriptor;
    move-object v3, v2

    .line 152
    .local v3, "output":Ljava/io/OutputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x2000

    invoke-direct {v4, v3, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local v3    # "output":Ljava/io/OutputStream;
    .local v4, "output":Ljava/io/OutputStream;
    :try_start_2
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    .local v0, "dout":Ljava/io/DataOutputStream;
    invoke-direct {p0, v0}, Lcom/google/android/filecache/FileCacheRequest;->writeHeaders(Ljava/io/DataOutput;)V

    .line 158
    new-instance v6, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;

    iget-object v7, p0, Lcom/google/android/filecache/FileCacheRequest;->mFile:Ljava/io/File;

    invoke-direct {v6, v0, v1, v5, v7}, Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/FileDescriptor;Ljava/io/File;Ljava/io/File;)V

    iput-object v6, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;

    .line 159
    iget-object v6, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 161
    :try_start_3
    iget-object v7, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;

    if-nez v7, :cond_2

    .line 163
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    :cond_2
    iget-object v7, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;

    if-nez v7, :cond_0

    .line 169
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 160
    .end local v0    # "dout":Ljava/io/DataOutputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    .line 161
    :goto_1
    :try_start_4
    iget-object v7, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;

    if-nez v7, :cond_3

    .line 163
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 165
    :cond_3
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 166
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v3    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    .line 167
    iget-object v7, p0, Lcom/google/android/filecache/FileCacheRequest;->mOutputStream:Lcom/google/android/filecache/FileCacheRequest$TempFileOutputStream;

    if-nez v7, :cond_4

    .line 169
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 171
    :cond_4
    throw v6

    .line 160
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    goto :goto_1
.end method
