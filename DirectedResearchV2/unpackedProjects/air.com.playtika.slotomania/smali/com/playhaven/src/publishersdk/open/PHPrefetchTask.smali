.class public Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;
.super Landroid/os/AsyncTask;
.source "PHPrefetchTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:Ljava/lang/Integer;


# instance fields
.field private cache:Lcom/jakewharton/DiskLruCache;

.field public listener:Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;

.field public url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->BUFFER_SIZE:Ljava/lang/Integer;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 145
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 15
    .param p1, "dummys"    # [Ljava/lang/Integer;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->disableConnectionReuseIfNecessary()V

    .line 75
    const/16 v12, 0x190

    .line 80
    .local v12, "responseCode":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    iget-object v13, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->url:Ljava/net/URL;

    if-nez v13, :cond_0

    .line 83
    const/16 v13, 0x190

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    monitor-exit p0

    .line 136
    :goto_0
    return-object v13

    .line 86
    :cond_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 87
    .local v3, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    iget-object v13, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->url:Ljava/net/URL;

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 88
    .local v10, "request":Lorg/apache/http/client/methods/HttpGet;
    const-string v13, "Accept-Encoding"

    const-string v14, "gzip"

    invoke-virtual {v10, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 92
    .local v11, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 93
    const/16 v13, 0xc8

    if-eq v12, v13, :cond_1

    .line 94
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    monitor-exit p0

    goto :goto_0

    .line 80
    .end local v3    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    :catch_0
    move-exception v13

    move-object v5, v13

    .line 133
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "PHPrefetchTask - doInBackground"

    sget-object v14, Lcom/playhaven/src/common/PHCrashReport$Urgency;->low:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v5, v13, v14}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    .line 136
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_0

    .line 97
    .restart local v3    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_3
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 100
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->getCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v13

    iget-object v14, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->url:Ljava/net/URL;

    invoke-virtual {v14}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jakewharton/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v6

    .line 102
    .local v6, "editor":Lcom/jakewharton/DiskLruCache$Editor;
    new-instance v2, Ljava/io/BufferedOutputStream;

    sget-object v13, Lcom/playhaven/src/common/PHAPIRequest;->PRECACHE_FILE_KEY_INDEX:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/jakewharton/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    .local v2, "cachedFile":Ljava/io/BufferedOutputStream;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v4

    .line 105
    .local v4, "contentEncoding":Lorg/apache/http/Header;
    if-nez v4, :cond_2

    const/4 v13, 0x0

    move-object v7, v13

    .line 107
    .local v7, "encoding":Ljava/lang/String;
    :goto_2
    if-eqz v7, :cond_4

    const-string v13, "gzip"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 108
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 110
    .local v9, "in":Ljava/util/zip/GZIPInputStream;
    sget-object v13, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->BUFFER_SIZE:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    new-array v0, v13, [B

    .line 111
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 113
    .local v1, "bytesRead":I
    :goto_3
    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v1

    const/4 v13, -0x1

    if-ne v1, v13, :cond_3

    .line 117
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 123
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v9    # "in":Ljava/util/zip/GZIPInputStream;
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 124
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 126
    invoke-virtual {v6}, Lcom/jakewharton/DiskLruCache$Editor;->commit()V

    .line 128
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 130
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->getCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jakewharton/DiskLruCache;->flush()V

    .line 80
    monitor-exit p0

    goto :goto_1

    .line 105
    .end local v7    # "encoding":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    goto :goto_2

    .line 114
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v7    # "encoding":Ljava/lang/String;
    .restart local v9    # "in":Ljava/util/zip/GZIPInputStream;
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v2, v0, v13, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_3

    .line 120
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v9    # "in":Ljava/util/zip/GZIPInputStream;
    :cond_4
    invoke-interface {v8, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCache()Lcom/jakewharton/DiskLruCache;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->cache:Lcom/jakewharton/DiskLruCache;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->cache:Lcom/jakewharton/DiskLruCache;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->cache:Lcom/jakewharton/DiskLruCache;

    return-object v0
.end method

.method public getOnPrefetchDoneListener()Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->listener:Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->url:Ljava/net/URL;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pre-fetch finished with response code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->listener:Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->listener:Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;->prefetchDone(I)V

    .line 159
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Progress update in prefetch operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setCache(Lcom/jakewharton/DiskLruCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/jakewharton/DiskLruCache;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->cache:Lcom/jakewharton/DiskLruCache;

    .line 62
    return-void
.end method

.method public setOnPrefetchDoneListener(Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->listener:Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;

    .line 40
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 55
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->url:Ljava/net/URL;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed URL in PHPrefetchTask: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
