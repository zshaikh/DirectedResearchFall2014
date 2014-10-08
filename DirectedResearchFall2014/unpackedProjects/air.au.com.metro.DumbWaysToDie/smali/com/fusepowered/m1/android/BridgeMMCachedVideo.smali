.class Lcom/fusepowered/m1/android/BridgeMMCachedVideo;
.super Lcom/fusepowered/m1/android/MMJSObject;
.source "BridgeMMCachedVideo.java"

# interfaces
.implements Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;


# instance fields
.field private success:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMJSObject;-><init>()V

    .line 22
    return-void
.end method

.method private getVPA()Lcom/fusepowered/m1/android/VideoPlayerActivity;
    .locals 6

    .prologue
    .line 293
    const/4 v3, 0x0

    .line 295
    .local v3, "vpa":Lcom/fusepowered/m1/android/VideoPlayerActivity;
    iget-object v5, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v5}, Lcom/fusepowered/m1/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/fusepowered/m1/android/MMActivity;

    if-eqz v5, :cond_0

    .line 297
    iget-object v5, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fusepowered/m1/android/MMWebView;

    .line 298
    .local v4, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v4, :cond_0

    .line 300
    invoke-virtual {v4}, Lcom/fusepowered/m1/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 301
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v5, v1, Lcom/fusepowered/m1/android/MMActivity;

    if-eqz v5, :cond_0

    .line 303
    move-object v0, v1

    check-cast v0, Lcom/fusepowered/m1/android/MMActivity;

    move-object v2, v0

    .line 304
    .local v2, "mmActivity":Lcom/fusepowered/m1/android/MMActivity;
    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMActivity;->getWrappedActivity()Lcom/fusepowered/m1/android/MMBaseActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMActivity;->getWrappedActivity()Lcom/fusepowered/m1/android/MMBaseActivity;

    move-result-object v5

    instance-of v5, v5, Lcom/fusepowered/m1/android/VideoPlayerActivity;

    if-eqz v5, :cond_0

    .line 306
    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMActivity;->getWrappedActivity()Lcom/fusepowered/m1/android/MMBaseActivity;

    move-result-object v3

    .end local v3    # "vpa":Lcom/fusepowered/m1/android/VideoPlayerActivity;
    check-cast v3, Lcom/fusepowered/m1/android/VideoPlayerActivity;

    .line 311
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "mmActivity":Lcom/fusepowered/m1/android/MMActivity;
    .end local v4    # "webView":Lcom/fusepowered/m1/android/MMWebView;
    .restart local v3    # "vpa":Lcom/fusepowered/m1/android/VideoPlayerActivity;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public availableCachedVideos(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 53
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 55
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 56
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x2

    new-instance v4, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$1;-><init>(Lcom/fusepowered/m1/android/BridgeMMCachedVideo;Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v1, v3, v4}, Lcom/fusepowered/m1/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/fusepowered/m1/android/AdCache$Iterator;)V

    .line 70
    new-instance v2, Lcom/fusepowered/m1/android/MMJSResponse;

    invoke-direct {v2}, Lcom/fusepowered/m1/android/MMJSResponse;-><init>()V

    .line 71
    .local v2, "response":Lcom/fusepowered/m1/android/MMJSResponse;
    const/4 v3, 0x1

    iput v3, v2, Lcom/fusepowered/m1/android/MMJSResponse;->result:I

    .line 72
    iput-object v0, v2, Lcom/fusepowered/m1/android/MMJSResponse;->response:Ljava/lang/Object;

    move-object v3, v2

    .line 75
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "response":Lcom/fusepowered/m1/android/MMJSResponse;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized cacheVideo(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    const-string v9, "Millennial ad return failed. Invalid response data."

    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 122
    .local v0, "context":Landroid/content/Context;
    const-string v9, "url"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .local v7, "url":Ljava/lang/String;
    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    .line 131
    :try_start_1
    new-instance v9, Lcom/fusepowered/m1/android/HttpGetRequest;

    invoke-direct {v9}, Lcom/fusepowered/m1/android/HttpGetRequest;-><init>()V

    invoke-virtual {v9, v7}, Lcom/fusepowered/m1/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 132
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    if-nez v5, :cond_0

    .line 134
    const-string v9, "HTTP response is null"

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v13

    .line 216
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    monitor-exit p0

    return-object v9

    .line 137
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 145
    .local v3, "httpEntity":Lorg/apache/http/HttpEntity;
    if-nez v3, :cond_1

    .line 147
    :try_start_3
    const-string v9, "Null HTTP entity"

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move-object v9, v13

    .line 148
    goto :goto_0

    .line 139
    .end local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move-object v9, v13

    .line 142
    goto :goto_0

    .line 151
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 153
    const-string v9, "Millennial ad return failed. Zero content length returned."

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move-object v9, v13

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    .line 158
    .local v4, "httpHeader":Lorg/apache/http/Header;
    if-eqz v4, :cond_4

    .line 160
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 162
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "application/json"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-eqz v9, :cond_4

    .line 164
    const/4 v8, 0x0

    .line 169
    .local v8, "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    :try_start_4
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lcom/fusepowered/m1/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "json":Ljava/lang/String;
    new-instance v8, Lcom/fusepowered/m1/android/VideoAd;

    .end local v8    # "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    invoke-direct {v8, v6}, Lcom/fusepowered/m1/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    .restart local v8    # "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    if-eqz v8, :cond_4

    :try_start_5
    invoke-virtual {v8}, Lcom/fusepowered/m1/android/VideoAd;->isValid()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 187
    const/4 v9, 0x3

    iput v9, v8, Lcom/fusepowered/m1/android/VideoAd;->downloadPriority:I

    .line 188
    const/4 v9, 0x0

    invoke-static {v0, v9, v8, p0}, Lcom/fusepowered/m1/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m1/android/CachedAd;Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v9

    if-eqz v9, :cond_5

    .line 192
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 193
    iget-boolean v9, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->success:Z

    if-eqz v9, :cond_3

    .line 194
    const-string v9, "Cached video(%s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v9

    .line 203
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 121
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpHeader":Lorg/apache/http/Header;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v6    # "json":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 172
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "httpHeader":Lorg/apache/http/Header;
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 174
    .local v2, "e1":Ljava/lang/IllegalStateException;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 175
    const-string v9, "Millennial ad return failed. Invalid response data."

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move-object v9, v13

    .line 176
    goto/16 :goto_0

    .line 178
    .end local v2    # "e1":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 180
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    const-string v9, "Millennial ad return failed. Invalid response data."

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move-object v9, v13

    .line 182
    goto/16 :goto_0

    .line 203
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v6    # "json":Ljava/lang/String;
    .restart local v8    # "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpHeader":Lorg/apache/http/Header;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v6    # "json":Ljava/lang/String;
    .end local v8    # "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    :cond_4
    :goto_1
    move-object v9, v13

    .line 216
    goto/16 :goto_0

    .line 196
    .restart local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "httpHeader":Lorg/apache/http/Header;
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v6    # "json":Ljava/lang/String;
    .restart local v8    # "videoAd":Lcom/fusepowered/m1/android/VideoAd;
    :catch_3
    move-exception v9

    move-object v1, v9

    .line 198
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_9
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

    .line 199
    const-string v9, "Caching interrupted: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 203
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v9

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v9

    .line 208
    :cond_5
    const-string v9, "Unable to start download for Cached video(%s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v9

    goto/16 :goto_0
.end method

.method public downloadCompleted(Lcom/fusepowered/m1/android/CachedAd;Z)V
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/m1/android/CachedAd;
    .param p2, "success"    # Z

    .prologue
    .line 105
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 108
    .local v0, "context":Landroid/content/Context;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {v0, p1}, Lcom/fusepowered/m1/android/AdCache;->save(Landroid/content/Context;Lcom/fusepowered/m1/android/CachedAd;)Z

    .line 110
    :cond_0
    iput-boolean p2, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->success:Z

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 112
    monitor-exit p0

    .line 113
    return-void

    .line 112
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public downloadStart(Lcom/fusepowered/m1/android/CachedAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/fusepowered/m1/android/CachedAd;

    .prologue
    .line 317
    return-void
.end method

.method public endVideo(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->getVPA()Lcom/fusepowered/m1/android/VideoPlayerActivity;

    move-result-object v0

    .line 240
    .local v0, "vpa":Lcom/fusepowered/m1/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 242
    new-instance v1, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$3;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$3;-><init>(Lcom/fusepowered/m1/android/BridgeMMCachedVideo;Lcom/fusepowered/m1/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    .line 252
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pauseVideo(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->getVPA()Lcom/fusepowered/m1/android/VideoPlayerActivity;

    move-result-object v0

    .line 258
    .local v0, "vpa":Lcom/fusepowered/m1/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 260
    new-instance v1, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$4;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$4;-><init>(Lcom/fusepowered/m1/android/BridgeMMCachedVideo;Lcom/fusepowered/m1/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playCachedVideo(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 84
    iget-object v5, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 85
    .local v3, "context":Landroid/content/Context;
    const-string v5, "videoId"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 87
    .local v4, "videoId":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 89
    invoke-static {v3, v4}, Lcom/fusepowered/m1/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/VideoAd;

    .line 90
    .local v0, "ad":Lcom/fusepowered/m1/android/VideoAd;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v6, v7}, Lcom/fusepowered/m1/android/VideoAd;->canShow(Landroid/content/Context;Lcom/fusepowered/m1/android/MMAdImpl;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    const-string v5, "PROPERTY_EXPANDING"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v1

    .line 93
    .local v1, "adImplId":J
    invoke-virtual {v0, v3, v1, v2}, Lcom/fusepowered/m1/android/VideoAd;->show(Landroid/content/Context;J)V

    .line 94
    const-string v5, "Playing Video(%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v5

    .line 97
    .end local v0    # "ad":Lcom/fusepowered/m1/android/VideoAd;
    .end local v1    # "adImplId":J
    :goto_0
    return-object v5

    :cond_0
    move-object v5, v6

    goto :goto_0
.end method

.method public playVideo(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->getVPA()Lcom/fusepowered/m1/android/VideoPlayerActivity;

    move-result-object v0

    .line 222
    .local v0, "vpa":Lcom/fusepowered/m1/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 224
    new-instance v1, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$2;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$2;-><init>(Lcom/fusepowered/m1/android/BridgeMMCachedVideo;Lcom/fusepowered/m1/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    .line 234
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public restartVideo(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->getVPA()Lcom/fusepowered/m1/android/VideoPlayerActivity;

    move-result-object v0

    .line 276
    .local v0, "vpa":Lcom/fusepowered/m1/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 278
    new-instance v1, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$5;

    invoke-direct {v1, p0, v0}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$5;-><init>(Lcom/fusepowered/m1/android/BridgeMMCachedVideo;Lcom/fusepowered/m1/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    .line 288
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public videoIdExists(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 33
    .local v1, "context":Landroid/content/Context;
    const-string v3, "videoId"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    .local v2, "videoId":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 37
    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/VideoAd;

    .line 38
    .local v0, "ad":Lcom/fusepowered/m1/android/VideoAd;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/VideoAd;->isExpired()Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    invoke-static {v2}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    .line 41
    .end local v0    # "ad":Lcom/fusepowered/m1/android/VideoAd;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
