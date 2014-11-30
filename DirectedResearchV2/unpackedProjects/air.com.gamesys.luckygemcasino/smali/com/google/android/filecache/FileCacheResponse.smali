.class Lcom/google/android/filecache/FileCacheResponse;
.super Ljava/net/CacheResponse;
.source "FileCacheResponse.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final mFile:Ljava/io/File;

.field private mHeaders:Ljava/util/Map;
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

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/google/android/filecache/FileCacheResponse;->mFile:Ljava/io/File;

    .line 80
    return-void
.end method

.method private static readHeaders(Ljava/io/DataInput;)Ljava/util/Map;
    .locals 9
    .param p0, "din"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 44
    .local v4, "keyCount":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 45
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 66
    return-object v0

    .line 46
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 48
    .local v6, "valueCount":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v6, :cond_2

    .line 57
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 59
    const-string v8, "transfer-encoding"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 63
    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    .line 138
    :goto_0
    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/filecache/FileCacheResponse;->getHeaders()Ljava/util/Map;

    .line 133
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 85
    iget-object v8, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    if-nez v8, :cond_4

    .line 86
    iget-object v8, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    if-eqz v8, :cond_0

    .line 89
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8

    .line 91
    :cond_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/google/android/filecache/FileCacheResponse;->mFile:Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    .local v5, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v8, 0x2000

    invoke-direct {v6, v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    .end local v5    # "input":Ljava/io/InputStream;
    .local v6, "input":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    .local v4, "din":Ljava/io/DataInputStream;
    invoke-static {v4}, Lcom/google/android/filecache/FileCacheResponse;->readHeaders(Ljava/io/DataInput;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/filecache/FileCacheResponse;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 102
    .local v0, "ageMillis":J
    const-wide/16 v8, 0x3e8

    div-long v2, v0, v8

    .line 103
    .local v2, "ageSeconds":J
    iget-object v8, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    const-string v9, "age"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v8, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    const-string v9, "via"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 107
    .local v7, "via":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    .line 108
    const-string v8, "1.1 localhost"

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :goto_0
    iput-object v4, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    .line 114
    iget-object v8, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    iget-object v9, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    if-nez v9, :cond_1

    .line 117
    iput-object v13, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    .line 118
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 122
    .end local v0    # "ageMillis":J
    .end local v2    # "ageSeconds":J
    .end local v4    # "din":Ljava/io/DataInputStream;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "via":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-object v8

    .line 110
    .restart local v0    # "ageMillis":J
    .restart local v2    # "ageSeconds":J
    .restart local v4    # "din":Ljava/io/DataInputStream;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "via":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    iget-object v8, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    const-string v9, "via"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1.1 localhost"

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 115
    .end local v0    # "ageMillis":J
    .end local v2    # "ageSeconds":J
    .end local v4    # "din":Ljava/io/DataInputStream;
    .end local v7    # "via":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    move-object v5, v6

    .line 116
    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    :goto_2
    iget-object v9, p0, Lcom/google/android/filecache/FileCacheResponse;->mInputStream:Ljava/io/InputStream;

    if-nez v9, :cond_3

    .line 117
    iput-object v13, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    .line 118
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 120
    :cond_3
    throw v8

    .line 122
    .end local v5    # "input":Ljava/io/InputStream;
    :cond_4
    iget-object v8, p0, Lcom/google/android/filecache/FileCacheResponse;->mHeaders:Ljava/util/Map;

    goto :goto_1

    .line 115
    .restart local v5    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    goto :goto_2
.end method
