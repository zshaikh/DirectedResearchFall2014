.class Lcom/facebook/widget/ImageDownloader;
.super Ljava/lang/Object;


# static fields
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static cacheReadQueue:Lcom/facebook/widget/WorkQueue;

.field private static downloadQueue:Lcom/facebook/widget/WorkQueue;

.field private static final handler:Landroid/os/Handler;

.field private static final pendingRequests:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/facebook/widget/ImageDownloader;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/widget/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/widget/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/widget/ImageDownloader;->downloadQueue:Lcom/facebook/widget/WorkQueue;

    new-instance v0, Lcom/facebook/widget/WorkQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/widget/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/widget/ImageDownloader;->cacheReadQueue:Lcom/facebook/widget/WorkQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/widget/ImageDownloader;->readFromCache(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/widget/ImageDownloader;->download(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;)V

    return-void
.end method

.method static cancelRequest(Lcom/facebook/widget/ImageRequest;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/widget/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getImageUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/widget/ImageDownloader$RequestKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/widget/WorkQueue$WorkItem;

    invoke-interface {v0}, Lcom/facebook/widget/WorkQueue$WorkItem;->cancel()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v4

    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static download(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x80

    new-array v4, v4, [C

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    :goto_1
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    move-object v2, v0

    move v0, v1

    move-object v1, v9

    :goto_2
    if-eqz v0, :cond_0

    invoke-static {p0, v2, v1, v8}, Lcom/facebook/widget/ImageDownloader;->issueResponse(Lcom/facebook/widget/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_0
    return-void

    :sswitch_0
    :try_start_3
    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    invoke-static {p1, v1, v2}, Lcom/facebook/widget/UrlRedirectCache;->cacheUrlRedirect(Landroid/content/Context;Ljava/net/URL;Ljava/net/URL;)V

    invoke-static {p0}, Lcom/facebook/widget/ImageDownloader;->removePendingRequest(Lcom/facebook/widget/ImageDownloader$RequestKey;)Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v3, v1, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v3, :cond_1

    iget-object v1, v1, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->request:Lcom/facebook/widget/ImageRequest;

    new-instance v3, Lcom/facebook/widget/ImageDownloader$RequestKey;

    iget-object v4, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-direct {v3, v2, v4}, Lcom/facebook/widget/ImageDownloader$RequestKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Lcom/facebook/widget/ImageDownloader;->enqueueCacheRead(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    move v1, v8

    move-object v2, v9

    move-object v3, v9

    move-object v4, v9

    :goto_3
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :sswitch_1
    :try_start_4
    invoke-static {p1, v0}, Lcom/facebook/widget/ImageResponseCache;->interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    :try_start_5
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v9

    goto :goto_3

    :cond_2
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    new-instance v3, Lcom/facebook/FacebookException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v4, v2

    move-object v2, v9

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v9

    move-object v2, v9

    :goto_4
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v9

    move-object v3, v9

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v9

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v2, v9

    move-object v3, v0

    move-object v0, v1

    move v1, v8

    goto/16 :goto_1

    :cond_3
    move v1, v8

    move-object v2, v9

    move-object v3, v9

    move-object v4, v9

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method static downloadAsync(Lcom/facebook/widget/ImageRequest;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/facebook/widget/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getImageUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/widget/ImageDownloader$RequestKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    if-eqz v0, :cond_1

    iput-object p0, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->request:Lcom/facebook/widget/ImageRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->isCancelled:Z

    iget-object v0, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/widget/WorkQueue$WorkItem;

    invoke-interface {v0}, Lcom/facebook/widget/WorkQueue$WorkItem;->moveToFront()V

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->isCachedRedirectAllowed()Z

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/facebook/widget/ImageDownloader;->enqueueCacheRead(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static enqueueCacheRead(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Z)V
    .locals 3

    sget-object v0, Lcom/facebook/widget/ImageDownloader;->cacheReadQueue:Lcom/facebook/widget/WorkQueue;

    new-instance v1, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/widget/ImageDownloader$RequestKey;Z)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/widget/ImageDownloader;->enqueueRequest(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Lcom/facebook/widget/WorkQueue;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static enqueueDownload(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;)V
    .locals 3

    sget-object v0, Lcom/facebook/widget/ImageDownloader;->downloadQueue:Lcom/facebook/widget/WorkQueue;

    new-instance v1, Lcom/facebook/widget/ImageDownloader$DownloadImageWorkItem;

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/widget/ImageDownloader$DownloadImageWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/widget/ImageDownloader$RequestKey;)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/widget/ImageDownloader;->enqueueRequest(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Lcom/facebook/widget/WorkQueue;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static enqueueRequest(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Lcom/facebook/widget/WorkQueue;Ljava/lang/Runnable;)V
    .locals 3

    sget-object v0, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/widget/ImageDownloader$DownloaderContext;-><init>(Lcom/facebook/widget/ImageDownloader$1;)V

    iput-object p0, v1, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->request:Lcom/facebook/widget/ImageRequest;

    sget-object v2, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/facebook/widget/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/widget/WorkQueue$WorkItem;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/widget/WorkQueue$WorkItem;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static issueResponse(Lcom/facebook/widget/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 7

    invoke-static {p0}, Lcom/facebook/widget/ImageDownloader;->removePendingRequest(Lcom/facebook/widget/ImageDownloader$RequestKey;)Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->request:Lcom/facebook/widget/ImageRequest;

    invoke-virtual {v1}, Lcom/facebook/widget/ImageRequest;->getCallback()Lcom/facebook/widget/ImageRequest$Callback;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v6, Lcom/facebook/widget/ImageDownloader;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/widget/ImageDownloader$1;

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/ImageDownloader$1;-><init>(Lcom/facebook/widget/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/widget/ImageRequest$Callback;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static prioritizeRequest(Lcom/facebook/widget/ImageRequest;)V
    .locals 3

    new-instance v0, Lcom/facebook/widget/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getImageUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/widget/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/widget/ImageDownloader$RequestKey;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    sget-object v1, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/widget/WorkQueue$WorkItem;

    invoke-interface {v0}, Lcom/facebook/widget/WorkQueue$WorkItem;->moveToFront()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static readFromCache(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    invoke-static {p1, v0}, Lcom/facebook/widget/UrlRedirectCache;->getRedirectedUrl(Landroid/content/Context;Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0, p1}, Lcom/facebook/widget/ImageResponseCache;->getCachedImageStream(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    invoke-static {v1, p1}, Lcom/facebook/widget/ImageResponseCache;->getCachedImageStream(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0, v3, v2, v0}, Lcom/facebook/widget/ImageDownloader;->issueResponse(Lcom/facebook/widget/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {p0}, Lcom/facebook/widget/ImageDownloader;->removePendingRequest(Lcom/facebook/widget/ImageDownloader$RequestKey;)Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;->request:Lcom/facebook/widget/ImageRequest;

    invoke-static {v0, p0}, Lcom/facebook/widget/ImageDownloader;->enqueueDownload(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;)V

    goto :goto_1

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_0
.end method

.method private static removePendingRequest(Lcom/facebook/widget/ImageDownloader$RequestKey;)Lcom/facebook/widget/ImageDownloader$DownloaderContext;
    .locals 2

    sget-object v0, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/widget/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/ImageDownloader$DownloaderContext;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
