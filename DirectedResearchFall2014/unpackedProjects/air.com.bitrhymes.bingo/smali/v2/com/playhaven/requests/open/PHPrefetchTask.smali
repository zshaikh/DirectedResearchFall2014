.class public Lv2/com/playhaven/requests/open/PHPrefetchTask;
.super Landroid/os/AsyncTask;
.source "PHPrefetchTask.java"


# annotations
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
.field private static final GZIP_ENCODING:Ljava/lang/String; = "gzip"


# instance fields
.field public listener:Lv2/com/playhaven/listeners/PHPrefetchTaskListener;

.field public url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 12
    .parameter "dummys"

    .prologue
    const-string v8, "gzip"

    .line 58
    const/16 v7, 0x190

    .line 60
    .local v7, responseCode:I
    invoke-static {}, Lv2/com/playhaven/cache/PHCache;->hasBeenInstalled()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 104
    :goto_0
    return-object v8

    .line 67
    :cond_0
    :try_start_0
    invoke-static {}, Lv2/com/playhaven/cache/PHCache;->getSharedCache()Lv2/com/playhaven/cache/PHCache;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    iget-object v9, p0, Lv2/com/playhaven/requests/open/PHPrefetchTask;->url:Ljava/net/URL;

    if-nez v9, :cond_1

    .line 69
    const/16 v9, 0x190

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    monitor-exit v8

    move-object v8, v9

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 73
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v9, p0, Lv2/com/playhaven/requests/open/PHPrefetchTask;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 74
    .local v5, request:Lorg/apache/http/client/methods/HttpGet;
    const-string v9, "Accept-Encoding"

    const-string v10, "gzip"

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 78
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 79
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_2

    .line 80
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    monitor-exit v8

    move-object v8, v9

    goto :goto_0

    .line 83
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 86
    .local v3, entity:Lorg/apache/http/HttpEntity;
    const/4 v1, 0x0

    .line 88
    .local v1, contentEncoding:Lorg/apache/http/Header;
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 93
    :goto_1
    if-nez v1, :cond_3

    const/4 v9, 0x0

    move v4, v9

    .line 96
    .local v4, isCompressed:Z
    :goto_2
    :try_start_3
    const-string v9, "Prefetch done....caching file"

    invoke-static {v9}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lv2/com/playhaven/cache/PHCache;->getSharedCache()Lv2/com/playhaven/cache/PHCache;

    move-result-object v9

    iget-object v10, p0, Lv2/com/playhaven/requests/open/PHPrefetchTask;->url:Ljava/net/URL;

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v4}, Lv2/com/playhaven/cache/PHCache;->cacheFile(Ljava/net/URL;Ljava/io/InputStream;Z)V

    .line 99
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .end local v0           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1           #contentEncoding:Lorg/apache/http/Header;
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #isCompressed:Z
    .end local v5           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    .line 93
    .restart local v0       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1       #contentEncoding:Lorg/apache/http/Header;
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v4, v9

    goto :goto_2

    .line 99
    .end local v0           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1           #contentEncoding:Lorg/apache/http/Header;
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 100
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 101
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "PHPrefetchTask - doInBackground"

    sget-object v9, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->low:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v2, v8, v9}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_3

    .line 89
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1       #contentEncoding:Lorg/apache/http/Header;
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/open/PHPrefetchTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPrefetchListener()Lv2/com/playhaven/listeners/PHPrefetchTaskListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHPrefetchTask;->listener:Lv2/com/playhaven/listeners/PHPrefetchTaskListener;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHPrefetchTask;->url:Ljava/net/URL;

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 116
    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHPrefetchTask;->listener:Lv2/com/playhaven/listeners/PHPrefetchTaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHPrefetchTask;->listener:Lv2/com/playhaven/listeners/PHPrefetchTaskListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lv2/com/playhaven/listeners/PHPrefetchTaskListener;->onPrefetchDone(I)V

    .line 117
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/open/PHPrefetchTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 110
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/open/PHPrefetchTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setPrefetchListener(Lv2/com/playhaven/listeners/PHPrefetchTaskListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 33
    iput-object p1, p0, Lv2/com/playhaven/requests/open/PHPrefetchTask;->listener:Lv2/com/playhaven/listeners/PHPrefetchTaskListener;

    .line 34
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 48
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lv2/com/playhaven/requests/open/PHPrefetchTask;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 50
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Lv2/com/playhaven/requests/open/PHPrefetchTask;->url:Ljava/net/URL;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL in PHPrefetchTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
