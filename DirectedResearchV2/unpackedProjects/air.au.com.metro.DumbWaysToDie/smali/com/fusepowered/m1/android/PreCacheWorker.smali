.class Lcom/fusepowered/m1/android/PreCacheWorker;
.super Ljava/lang/Thread;
.source "PreCacheWorker.java"


# static fields
.field private static busy:Z


# instance fields
.field private appContext:Landroid/content/Context;

.field private cachedVideos:[Lcom/fusepowered/m1/android/DTOCachedVideo;

.field private volatile downloadedNewVideos:Z

.field private noVideosToCacheURL:Ljava/lang/String;


# direct methods
.method private constructor <init>([Lcom/fusepowered/m1/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "cachedVideos"    # [Lcom/fusepowered/m1/android/DTOCachedVideo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "noVideosToCacheURL"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->downloadedNewVideos:Z

    .line 44
    iput-object p1, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->cachedVideos:[Lcom/fusepowered/m1/android/DTOCachedVideo;

    .line 45
    iput-object p3, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->noVideosToCacheURL:Ljava/lang/String;

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->appContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m1/android/PreCacheWorker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m1/android/PreCacheWorker;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fusepowered/m1/android/PreCacheWorker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/PreCacheWorker;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->downloadedNewVideos:Z

    return p1
.end method

.method private handleContent(Lcom/fusepowered/m1/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    .locals 3
    .param p1, "cachedVideo"    # Lcom/fusepowered/m1/android/DTOCachedVideo;
    .param p2, "httpEntity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 97
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 98
    .local v1, "httpHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 99
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "application/json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m1/android/PreCacheWorker;->handleJson(Lcom/fusepowered/m1/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V

    .line 107
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local v0    # "contentType":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m1/android/PreCacheWorker;->handleVideoFile(Lcom/fusepowered/m1/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method private handleJson(Lcom/fusepowered/m1/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    .locals 9
    .param p1, "cachedVideo"    # Lcom/fusepowered/m1/android/DTOCachedVideo;
    .param p2, "httpEntity"    # Lorg/apache/http/HttpEntity;

    .prologue
    const/4 v8, 0x1

    const-string v6, "Pre cache worker: Millennial ad return failed. Invalid response data."

    .line 111
    const/4 v3, 0x0

    .line 115
    .local v3, "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/m1/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    new-instance v4, Lcom/fusepowered/m1/android/VideoAd;

    invoke-direct {v4, v2}, Lcom/fusepowered/m1/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    .local v4, "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    move-object v3, v4

    .line 131
    .end local v4    # "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    .restart local v3    # "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/fusepowered/m1/android/VideoAd;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    const/4 v5, 0x1

    :try_start_1
    iput v5, v3, Lcom/fusepowered/m1/android/VideoAd;->downloadPriority:I

    .line 134
    iget-object v5, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->appContext:Landroid/content/Context;

    const/4 v6, 0x0

    new-instance v7, Lcom/fusepowered/m1/android/PreCacheWorker$1;

    invoke-direct {v7, p0, p1}, Lcom/fusepowered/m1/android/PreCacheWorker$1;-><init>(Lcom/fusepowered/m1/android/PreCacheWorker;Lcom/fusepowered/m1/android/DTOCachedVideo;)V

    invoke-static {v5, v6, v3, v7}, Lcom/fusepowered/m1/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m1/android/CachedAd;Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 168
    .end local v2    # "json":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 120
    .local v1, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 121
    const-string v5, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v1    # "e1":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 125
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    const-string v5, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v5, p1, Lcom/fusepowered/m1/android/DTOCachedVideo;->preCacheStartURL:Ljava/lang/String;

    invoke-static {v5}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 160
    iget-object v5, p1, Lcom/fusepowered/m1/android/DTOCachedVideo;->preCacheFailedURL:Ljava/lang/String;

    invoke-static {v5}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 162
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 163
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 164
    const-string v5, "Pre cache worker interrupted: %s"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleVideoFile(Lcom/fusepowered/m1/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    .locals 3
    .param p1, "cachedVideo"    # Lcom/fusepowered/m1/android/DTOCachedVideo;
    .param p2, "httpEntity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 172
    iget-object v0, p1, Lcom/fusepowered/m1/android/DTOCachedVideo;->videoFileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p1, Lcom/fusepowered/m1/android/DTOCachedVideo;->preCacheStartURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 174
    iget-object v0, p1, Lcom/fusepowered/m1/android/DTOCachedVideo;->url:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/fusepowered/m1/android/DTOCachedVideo;->videoFileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->appContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/m1/android/AdCache;->downloadComponentToCache(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p1, Lcom/fusepowered/m1/android/DTOCachedVideo;->preCacheCompleteURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p1, Lcom/fusepowered/m1/android/DTOCachedVideo;->preCacheFailedURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static declared-synchronized preCacheVideos([Lcom/fusepowered/m1/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "cachedVideos"    # [Lcom/fusepowered/m1/android/DTOCachedVideo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "noVideosToCacheURL"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v1, Lcom/fusepowered/m1/android/PreCacheWorker;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/fusepowered/m1/android/PreCacheWorker;->busy:Z

    if-nez v2, :cond_0

    .line 35
    const/4 v2, 0x1

    sput-boolean v2, Lcom/fusepowered/m1/android/PreCacheWorker;->busy:Z

    .line 36
    new-instance v0, Lcom/fusepowered/m1/android/PreCacheWorker;

    invoke-direct {v0, p0, p1, p2}, Lcom/fusepowered/m1/android/PreCacheWorker;-><init>([Lcom/fusepowered/m1/android/DTOCachedVideo;Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    .local v0, "preCacheWorker":Lcom/fusepowered/m1/android/PreCacheWorker;
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/PreCacheWorker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v0    # "preCacheWorker":Lcom/fusepowered/m1/android/PreCacheWorker;
    :cond_0
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 12

    .prologue
    const-class v8, Lcom/fusepowered/m1/android/PreCacheWorker;

    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->cachedVideos:[Lcom/fusepowered/m1/android/DTOCachedVideo;

    if-eqz v8, :cond_4

    .line 55
    iget-object v0, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->cachedVideos:[Lcom/fusepowered/m1/android/DTOCachedVideo;

    .local v0, "arr$":[Lcom/fusepowered/m1/android/DTOCachedVideo;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v1, v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .local v1, "cachedVideo":Lcom/fusepowered/m1/android/DTOCachedVideo;
    :try_start_1
    new-instance v4, Lcom/fusepowered/m1/android/HttpGetRequest;

    invoke-direct {v4}, Lcom/fusepowered/m1/android/HttpGetRequest;-><init>()V

    .line 58
    .local v4, "httpGetRequest":Lcom/fusepowered/m1/android/HttpGetRequest;
    iget-object v8, v1, Lcom/fusepowered/m1/android/DTOCachedVideo;->url:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/fusepowered/m1/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 59
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    if-nez v5, :cond_0

    .line 60
    const-string v8, "Pre cache worker: HTTP response is null"

    invoke-static {v8}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 55
    .end local v4    # "httpGetRequest":Lcom/fusepowered/m1/android/HttpGetRequest;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 64
    .restart local v4    # "httpGetRequest":Lcom/fusepowered/m1/android/HttpGetRequest;
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 71
    .local v3, "httpEntity":Lorg/apache/http/HttpEntity;
    if-nez v3, :cond_2

    .line 72
    :try_start_2
    const-string v8, "Pre cache worker: Null HTTP entity"

    invoke-static {v8}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 85
    .end local v0    # "arr$":[Lcom/fusepowered/m1/android/DTOCachedVideo;
    .end local v1    # "cachedVideo":Lcom/fusepowered/m1/android/DTOCachedVideo;
    .end local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpGetRequest":Lcom/fusepowered/m1/android/HttpGetRequest;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catchall_0
    move-exception v8

    :try_start_3
    const-class v9, Lcom/fusepowered/m1/android/PreCacheWorker;

    monitor-enter v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    const/4 v10, 0x0

    :try_start_4
    sput-boolean v10, Lcom/fusepowered/m1/android/PreCacheWorker;->busy:Z

    .line 87
    iget-boolean v10, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->downloadedNewVideos:Z

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->noVideosToCacheURL:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->cachedVideos:[Lcom/fusepowered/m1/android/DTOCachedVideo;

    if-nez v10, :cond_1

    .line 90
    iget-object v10, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->noVideosToCacheURL:Ljava/lang/String;

    invoke-static {v10}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 92
    :cond_1
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 54
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 65
    .restart local v0    # "arr$":[Lcom/fusepowered/m1/android/DTOCachedVideo;
    .restart local v1    # "cachedVideo":Lcom/fusepowered/m1/android/DTOCachedVideo;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v8, "Pre cache worker HTTP error: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "httpGetRequest":Lcom/fusepowered/m1/android/HttpGetRequest;
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 77
    const-string v8, "Pre cache worker: Millennial ad return failed. Zero content length returned."

    invoke-static {v8}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/fusepowered/m1/android/PreCacheWorker;->handleContent(Lcom/fusepowered/m1/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 85
    .end local v0    # "arr$":[Lcom/fusepowered/m1/android/DTOCachedVideo;
    .end local v1    # "cachedVideo":Lcom/fusepowered/m1/android/DTOCachedVideo;
    .end local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpGetRequest":Lcom/fusepowered/m1/android/HttpGetRequest;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_4
    :try_start_7
    const-class v8, Lcom/fusepowered/m1/android/PreCacheWorker;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 86
    const/4 v9, 0x0

    :try_start_8
    sput-boolean v9, Lcom/fusepowered/m1/android/PreCacheWorker;->busy:Z

    .line 87
    iget-boolean v9, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->downloadedNewVideos:Z

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->noVideosToCacheURL:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->cachedVideos:[Lcom/fusepowered/m1/android/DTOCachedVideo;

    if-nez v9, :cond_5

    .line 90
    iget-object v9, p0, Lcom/fusepowered/m1/android/PreCacheWorker;->noVideosToCacheURL:Ljava/lang/String;

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 92
    :cond_5
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_2
    move-exception v9

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_3
    move-exception v8

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
.end method
