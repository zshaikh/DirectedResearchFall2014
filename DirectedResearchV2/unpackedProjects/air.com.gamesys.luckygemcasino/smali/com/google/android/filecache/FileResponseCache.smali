.class public abstract Lcom/google/android/filecache/FileResponseCache;
.super Ljava/net/ResponseCache;
.source "FileResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;,
        Lcom/google/android/filecache/FileResponseCache$Frame;,
        Lcom/google/android/filecache/FileResponseCache$UnabortableCacheRequest;
    }
.end annotation


# static fields
.field private static final MAX_AGE_PREFIX:Ljava/lang/String; = "max-age="

.field private static final TAG:Ljava/lang/String; = "FileResponseCache"


# instance fields
.field private final mStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/filecache/FileResponseCache$Frame;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 156
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/filecache/FileResponseCache;->mStack:Ljava/lang/ThreadLocal;

    .line 159
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/filecache/FileResponseCache;)Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache;->mStack:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static capture(Ljava/net/ContentHandler;Ljava/lang/Object;)Ljava/net/ContentHandler;
    .locals 6
    .param p0, "handler"    # Ljava/net/ContentHandler;
    .param p1, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 486
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v2

    .line 487
    .local v2, "responseCache":Ljava/net/ResponseCache;
    instance-of v4, v2, Lcom/google/android/filecache/FileResponseCache;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 488
    check-cast v0, Lcom/google/android/filecache/FileResponseCache;

    .line 489
    .local v0, "fileResponseCache":Lcom/google/android/filecache/FileResponseCache;
    new-instance v4, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;

    invoke-direct {v4, p0, v0, p1}, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;-><init>(Ljava/net/ContentHandler;Lcom/google/android/filecache/FileResponseCache;Ljava/lang/Object;)V

    return-object v4

    .line 490
    .end local v0    # "fileResponseCache":Lcom/google/android/filecache/FileResponseCache;
    :cond_0
    if-nez v2, :cond_1

    .line 491
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ResponseCache not found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 493
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 494
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/net/ResponseCache;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Installed ResponseCache is not a FileResponseCache: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createCacheRequest(Ljava/io/File;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v2, -0x1

    .line 397
    .local v2, "responseCode":I
    const/4 v4, 0x0

    .line 398
    .local v4, "responseMessage":Ljava/lang/String;
    instance-of v6, p2, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_1

    move-object v1, p2

    .line 399
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 400
    .local v1, "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 401
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 407
    .end local v1    # "http":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 408
    .local v3, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v6, Lcom/google/android/filecache/FileCacheRequest;

    invoke-direct {v6, p1, v2, v4, v3}, Lcom/google/android/filecache/FileCacheRequest;-><init>(Ljava/io/File;ILjava/lang/String;Ljava/util/Map;)V

    return-object v6

    .line 402
    .end local v3    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    const-string v6, "FileResponseCache"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 403
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 404
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/net/URLConnection;>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "className":Ljava/lang/String;
    const-string v6, "FileResponseCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "URLConnection is not an HttpURLConnection: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createCacheResponse(Ljava/io/File;)Ljava/net/CacheResponse;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 372
    new-instance v0, Lcom/google/android/filecache/FileCacheResponse;

    invoke-direct {v0, p1}, Lcom/google/android/filecache/FileCacheResponse;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private getFile(Lcom/google/android/filecache/FileResponseCache$Frame;)Ljava/io/File;
    .locals 8
    .param p1, "frame"    # Lcom/google/android/filecache/FileResponseCache$Frame;

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/filecache/FileResponseCache$Frame;->getConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 258
    .local v2, "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "requestMethod":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    .line 261
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    .line 267
    .local v5, "uri":Ljava/net/URI;
    new-instance v3, Lcom/google/android/filecache/RequestPropertiesMap;

    invoke-direct {v3, v2}, Lcom/google/android/filecache/RequestPropertiesMap;-><init>(Ljava/net/URLConnection;)V

    .line 269
    .local v3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/google/android/filecache/FileResponseCache$Frame;->getCookie()Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "cookie":Ljava/lang/Object;
    invoke-virtual {p0, v5, v4, v3, v0}, Lcom/google/android/filecache/FileResponseCache;->getFile(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Ljava/io/File;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 272
    .end local v0    # "cookie":Ljava/lang/Object;
    .end local v2    # "http":Ljava/net/HttpURLConnection;
    .end local v3    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "requestMethod":Ljava/lang/String;
    .end local v5    # "uri":Ljava/net/URI;
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static getResponseCode(Ljava/net/URLConnection;)I
    .locals 7
    .param p0, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 96
    move-object v1, p0

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 97
    .local v1, "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 98
    .local v4, "responseCode":I
    if-eq v4, v5, :cond_0

    .line 113
    .end local v4    # "responseCode":I
    :goto_0
    return v4

    .line 101
    .restart local v4    # "responseCode":I
    :cond_0
    const-string v6, "status"

    invoke-virtual {p0, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "response":Ljava/lang/String;
    if-nez v3, :cond_1

    move v4, v5

    .line 103
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 106
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 107
    .local v2, "index":I
    if-ne v2, v5, :cond_2

    move v4, v5

    .line 108
    goto :goto_0

    .line 111
    :cond_2
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move v4, v5

    .line 113
    goto :goto_0
.end method

.method public static getResponseMessage(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 7
    .param p0, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 125
    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 126
    .local v0, "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 127
    .local v3, "responseCode":I
    if-eq v3, v6, :cond_1

    .line 128
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 139
    :cond_0
    :goto_0
    return-object v4

    .line 130
    :cond_1
    const-string v5, "status"

    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "response":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "index":I
    if-eq v1, v6, :cond_0

    .line 137
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static logFileError(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 80
    const-string v1, "FileResponseCache"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const-string v1, "FileResponseCache"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    const-string v1, "FileResponseCache"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    return-void
.end method

.method public static sink()Ljava/net/ContentHandler;
    .locals 1

    .prologue
    .line 516
    new-instance v0, Lcom/google/android/filecache/SinkContentHandler;

    invoke-direct {v0}, Lcom/google/android/filecache/SinkContentHandler;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 10
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .line 285
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache;->mStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Stack;

    .line 286
    .local v8, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/android/filecache/FileResponseCache$Frame;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v9

    .line 305
    :goto_0
    return-object v0

    .line 289
    :cond_1
    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/filecache/FileResponseCache$Frame;

    .line 290
    .local v7, "frame":Lcom/google/android/filecache/FileResponseCache$Frame;
    invoke-virtual {v7}, Lcom/google/android/filecache/FileResponseCache$Frame;->getConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 298
    .local v6, "connection":Ljava/net/URLConnection;
    new-instance p3, Lcom/google/android/filecache/RequestPropertiesMap;

    .end local p3    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p3, v6}, Lcom/google/android/filecache/RequestPropertiesMap;-><init>(Ljava/net/URLConnection;)V

    .line 299
    .restart local p3    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v7}, Lcom/google/android/filecache/FileResponseCache$Frame;->getCookie()Ljava/lang/Object;

    move-result-object v5

    .line 300
    .local v5, "cookie":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/google/android/filecache/FileResponseCache;->getFile(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    .line 301
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 302
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filecache/FileResponseCache;->isStale(Ljava/io/File;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    invoke-direct {p0, v1}, Lcom/google/android/filecache/FileResponseCache;->createCacheResponse(Ljava/io/File;)Ljava/net/CacheResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v9

    .line 305
    goto :goto_0
.end method

.method protected abstract getFile(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation
.end method

.method protected isCacheable(Ljava/net/URLConnection;)Z
    .locals 5
    .param p1, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 221
    instance-of v4, p1, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 222
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 223
    .local v0, "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "requestMethod":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 225
    .local v2, "responseCode":I
    const-string v4, "GET"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xc8

    if-ne v4, v2, :cond_0

    const/4 v3, 0x1

    .line 227
    .end local v0    # "http":Ljava/net/HttpURLConnection;
    .end local v1    # "requestMethod":Ljava/lang/String;
    .end local v2    # "responseCode":I
    :cond_0
    return v3
.end method

.method protected isStale(Ljava/io/File;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "requestMethod"    # Ljava/lang/String;
    .param p5, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 179
    .local p4, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v11, "cache-control"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 180
    .local v10, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    .line 181
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 202
    :cond_1
    const/4 v11, 0x0

    :goto_1
    return v11

    .line 181
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 182
    .local v9, "value":Ljava/lang/String;
    const-string v12, "max-age="

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 184
    :try_start_0
    const-string v12, "max-age="

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    .line 185
    .local v8, "start":I
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 186
    .local v6, "maxAge":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_3

    .line 187
    const/4 v11, 0x1

    goto :goto_1

    .line 189
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    sub-long v1, v12, v14

    .line 190
    .local v1, "ageInMillis":J
    const-wide/16 v12, 0x3e8

    div-long v3, v1, v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .local v3, "ageInSeconds":J
    cmp-long v12, v3, v6

    if-lez v12, :cond_0

    .line 192
    const/4 v11, 0x1

    goto :goto_1

    .line 194
    .end local v1    # "ageInMillis":J
    .end local v3    # "ageInSeconds":J
    .end local v6    # "maxAge":J
    .end local v8    # "start":I
    :catch_0
    move-exception v5

    .line 195
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v12, "FileResponseCache"

    const/4 v13, 0x6

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 196
    const-string v12, "FileResponseCache"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to parse Cache-Control: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 314
    invoke-virtual {p0, p2}, Lcom/google/android/filecache/FileResponseCache;->isCacheable(Ljava/net/URLConnection;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-object v5

    .line 317
    :cond_1
    iget-object v6, p0, Lcom/google/android/filecache/FileResponseCache;->mStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Stack;

    .line 318
    .local v4, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/android/filecache/FileResponseCache$Frame;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 321
    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/filecache/FileResponseCache$Frame;

    .line 326
    .local v2, "frame":Lcom/google/android/filecache/FileResponseCache$Frame;
    invoke-direct {p0, v2}, Lcom/google/android/filecache/FileResponseCache;->getFile(Lcom/google/android/filecache/FileResponseCache$Frame;)Ljava/io/File;

    move-result-object v1

    .line 327
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 329
    .local v3, "parent":Ljava/io/File;
    if-nez v3, :cond_2

    .line 330
    const-string v6, "File has no parent directory"

    invoke-static {v6, v1}, Lcom/google/android/filecache/FileResponseCache;->logFileError(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_3

    .line 334
    const-string v6, "Unable to create parent directory"

    invoke-static {v6, v3}, Lcom/google/android/filecache/FileResponseCache;->logFileError(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 337
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_4

    .line 338
    const-string v6, "Parent is not a directory"

    invoke-static {v6, v3}, Lcom/google/android/filecache/FileResponseCache;->logFileError(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 341
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 342
    const-string v6, "Destination file is a directory"

    invoke-static {v6, v1}, Lcom/google/android/filecache/FileResponseCache;->logFileError(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 346
    :cond_5
    invoke-direct {p0, v1, p2}, Lcom/google/android/filecache/FileResponseCache;->createCacheRequest(Ljava/io/File;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    .line 347
    .local v0, "cacheRequest":Ljava/net/CacheRequest;
    invoke-virtual {v2, v0}, Lcom/google/android/filecache/FileResponseCache$Frame;->setCacheRequest(Ljava/net/CacheRequest;)V

    .line 352
    new-instance v5, Lcom/google/android/filecache/FileResponseCache$UnabortableCacheRequest;

    invoke-direct {v5, v0}, Lcom/google/android/filecache/FileResponseCache$UnabortableCacheRequest;-><init>(Ljava/net/CacheRequest;)V

    goto :goto_0
.end method
