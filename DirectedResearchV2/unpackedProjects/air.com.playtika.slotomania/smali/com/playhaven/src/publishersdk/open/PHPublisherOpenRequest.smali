.class public Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;
.super Lcom/playhaven/src/common/PHAPIRequest;
.source "PHPublisherOpenRequest.java"

# interfaces
.implements Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;
    }
.end annotation


# instance fields
.field private prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;",
            ">;"
        }
    .end annotation
.end field

.field private prefetch_listener:Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;

.field private session:Lcom/playhaven/src/common/PHSession;

.field public startPrecachingImmediately:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 26
    iput-boolean v3, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->startPrecachingImmediately:Z

    .line 61
    const-class v2, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;

    monitor-enter v2

    .line 63
    :try_start_0
    sget-boolean v3, Lcom/playhaven/src/common/PHConfig;->precache:Z

    if-eqz v3, :cond_0

    .line 64
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v0

    .line 66
    .local v0, "cache":Lcom/jakewharton/DiskLruCache;
    if-nez v0, :cond_1

    .line 67
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "apicache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    sget-object v4, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->APP_CACHE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 69
    const/4 v5, 0x1

    .line 70
    sget v6, Lcom/playhaven/src/common/PHConfig;->precache_size:I

    int-to-long v6, v6

    .line 67
    invoke-static {v3, v4, v5, v6, v7}, Lcom/jakewharton/DiskLruCache;->createSharedDiskCache(Ljava/io/File;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v0    # "cache":Lcom/jakewharton/DiskLruCache;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {p1}, Lcom/playhaven/src/common/PHSession;->getInstance(Landroid/content/Context;)Lcom/playhaven/src/common/PHSession;

    move-result-object v2

    iput-object v2, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->session:Lcom/playhaven/src/common/PHSession;

    .line 82
    return-void

    .line 71
    .restart local v0    # "cache":Lcom/jakewharton/DiskLruCache;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->open()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 76
    .end local v0    # "cache":Lcom/jakewharton/DiskLruCache;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "PHPublisherOpenRequest - PHPublisherOpenRequest"

    sget-object v4, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v1, v3, v4}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    .line 56
    return-void
.end method


# virtual methods
.method public baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "/v3/publisher/open/"

    invoke-super {p0, v0}, Lcom/playhaven/src/common/PHAPIRequest;->createAPIURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalParams()Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 165
    .local v0, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ssum"

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->session:Lcom/playhaven/src/common/PHSession;

    invoke-virtual {v2}, Lcom/playhaven/src/common/PHSession;->getTotalTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "scount"

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->session:Lcom/playhaven/src/common/PHSession;

    invoke-virtual {v2}, Lcom/playhaven/src/common/PHSession;->getSessionCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-object v0
.end method

.method public getPrefetchListener()Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetch_listener:Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;

    return-object v0
.end method

.method public getPrefetchTasks()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public getSession()Lcom/playhaven/src/common/PHSession;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->session:Lcom/playhaven/src/common/PHSession;

    return-object v0
.end method

.method public handleRequestSuccess(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "res"    # Lorg/json/JSONObject;

    .prologue
    const-string v6, "precache"

    .line 99
    sget-boolean v5, Lcom/playhaven/src/common/PHConfig;->precache:Z

    if-eqz v5, :cond_1

    const-string v5, "precache"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 102
    const-string v5, "precache"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 103
    .local v2, "precached":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 119
    .end local v1    # "i":I
    :cond_0
    iget-boolean v5, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->startPrecachingImmediately:Z

    if-eqz v5, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->startNextPrefetch()V

    .line 123
    .end local v2    # "precached":Lorg/json/JSONArray;
    :cond_1
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 125
    :try_start_0
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jakewharton/DiskLruCache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->session:Lcom/playhaven/src/common/PHSession;

    invoke-virtual {v5}, Lcom/playhaven/src/common/PHSession;->startAndReset()V

    .line 134
    invoke-super {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;->handleRequestSuccess(Lorg/json/JSONObject;)V

    .line 135
    return-void

    .line 106
    .restart local v1    # "i":I
    .restart local v2    # "precached":Lorg/json/JSONArray;
    :cond_3
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "url":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 109
    new-instance v3, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;

    invoke-direct {v3}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;-><init>()V

    .line 110
    .local v3, "task":Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;
    invoke-virtual {v3, p0}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->setOnPrefetchDoneListener(Lcom/playhaven/src/publishersdk/open/PHPrefetchTask$Listener;)V

    .line 111
    invoke-virtual {v3, v4}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->setURL(Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v3    # "task":Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    .end local v2    # "precached":Lorg/json/JSONArray;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 127
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "PHPublisherOpenRequest - handleRequestSuccess"

    sget-object v6, Lcom/playhaven/src/common/PHCrashReport$Urgency;->high:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v5, v6}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_1
.end method

.method public prefetchDone(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->startPrecachingImmediately:Z

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->startNextPrefetch()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache;->close()V

    .line 152
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetch_listener:Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetch_listener:Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;

    invoke-interface {v1, p0}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;->prefetchFinished(Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHPublisherOpenRequest - prefetchDone"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->low:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public send()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->session:Lcom/playhaven/src/common/PHSession;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHSession;->start()V

    .line 93
    invoke-super {p0}, Lcom/playhaven/src/common/PHAPIRequest;->send()V

    .line 94
    return-void
.end method

.method public setPrefetchListener(Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetch_listener:Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;

    .line 39
    return-void
.end method

.method public startNextPrefetch()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;
    check-cast p0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    :cond_0
    return-void
.end method
