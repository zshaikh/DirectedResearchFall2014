.class public Lv2/com/playhaven/requests/base/PHAsyncRequest;
.super Landroid/os/AsyncTask;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/requests/base/PHAsyncRequest$1;,
        Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;,
        Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Integer;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INFINITE_REDIRECTS:I = 0x7fffffff


# instance fields
.field private client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

.field private isDownloading:Z

.field private lastError:Lv2/com/playhaven/model/PHError;

.field private listener:Lv2/com/playhaven/listeners/PHHttpRequestListener;

.field public params:Lorg/apache/http/params/HttpParams;

.field private password:Ljava/lang/String;

.field private postParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private requestStart:J

.field public request_type:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

.field private responseCode:I

.field public url:Landroid/net/Uri;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lv2/com/playhaven/listeners/PHHttpRequestListener;)V
    .locals 1
    .param p1, "delegate"    # Lv2/com/playhaven/listeners/PHHttpRequestListener;

    .prologue
    .line 269
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    .line 270
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->listener:Lv2/com/playhaven/listeners/PHHttpRequestListener;

    .line 271
    new-instance v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-direct {v0}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    .line 272
    sget-object v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Get:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    iput-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->request_type:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    .line 273
    return-void
.end method

.method private varargs execRequest([Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "urls"    # [Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v8, -0x1

    iput v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->responseCode:I

    .line 322
    iput-object v10, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->lastError:Lv2/com/playhaven/model/PHError;

    .line 324
    monitor-enter p0

    .line 326
    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->isDownloading:Z

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->requestStart:J

    .line 330
    iget-object v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v8}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->clearRedirects()V

    .line 332
    array-length v8, p1

    if-lez v8, :cond_6

    .line 333
    const/4 v8, 0x0

    aget-object v7, p1, v8

    .line 336
    .local v7, "url":Landroid/net/Uri;
    iget-object v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->url:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->url:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 337
    iget-object v7, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->url:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_0
    const/4 v6, 0x0

    .line 341
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual {p0}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->isCancelled()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v10

    .line 393
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "url":Landroid/net/Uri;
    :goto_0
    return-object v8

    .line 344
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "url":Landroid/net/Uri;
    :cond_1
    :try_start_3
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "net_uri":Ljava/lang/String;
    iget-object v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->request_type:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    sget-object v9, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Post:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    if-ne v8, v9, :cond_3

    .line 348
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 350
    .local v5, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v9, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 352
    iget-object v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v8, v5}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->start(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 363
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 366
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    iput v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->responseCode:I

    .line 371
    iget v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->responseCode:I

    const/16 v9, 0x12e

    if-ne v8, v9, :cond_2

    invoke-virtual {p0}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->getLastRedirectURL()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 372
    const/16 v8, 0xc8

    iput v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->responseCode:I

    .line 374
    :cond_2
    invoke-virtual {p0}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->isCancelled()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    if-eqz v8, :cond_5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v8, v10

    goto :goto_0

    .line 354
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    :cond_3
    :try_start_5
    iget-object v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->request_type:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    sget-object v9, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Get:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    if-ne v8, v9, :cond_4

    .line 355
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 356
    .local v5, "request":Lorg/apache/http/client/methods/HttpGet;
    iget-object v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v8, v5}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->start(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 357
    goto :goto_1

    .line 358
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    :cond_4
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 359
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    iget-object v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v8, v5}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->start(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    goto :goto_1

    .line 376
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    :cond_5
    if-eqz v2, :cond_6

    .line 377
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 379
    .local v3, "in_stream":Ljava/io/InputStream;
    invoke-static {v3}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->readStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 381
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 391
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "in_stream":Ljava/io/InputStream;
    .end local v4    # "net_uri":Ljava/lang/String;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "url":Landroid/net/Uri;
    :cond_6
    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v8, v0

    .line 393
    goto :goto_0

    .line 384
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "url":Landroid/net/Uri;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 385
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v8, Lv2/com/playhaven/model/PHError;

    invoke-direct {v8, v1}, Lv2/com/playhaven/model/PHError;-><init>(Ljava/lang/Exception;)V

    iput-object v8, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->lastError:Lv2/com/playhaven/model/PHError;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 388
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "url":Landroid/net/Uri;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v8, "PHAsyncRequest - doInBackground"

    sget-object v9, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v1, v8, v9}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_2

    .line 391
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v8
.end method

.method private static readStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 459
    .local v3, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    .line 460
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 462
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 463
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 465
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 469
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    return-object v4
.end method

.method public static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->readStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addPostParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public addPostParams(Ljava/util/Hashtable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 300
    :cond_0
    return-void

    .line 294
    :cond_1
    iget-object v2, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 296
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 297
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->doInBackground([Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "urls"    # [Landroid/net/Uri;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->execRequest([Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getLastRedirectURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->getLastRedirect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRedirects()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->getMaxRedirects()I

    move-result v0

    return v0
.end method

.method public getPHHttpClient()Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPostParams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestType()Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->request_type:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->isDownloading:Z

    return v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->isDownloading:Z

    .line 452
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Ljava/nio/ByteBuffer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lv2/com/playhaven/requests/base/PHAsyncRequest;->onPostExecute(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "result"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 398
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 401
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->isDownloading:Z

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->requestStart:J

    sub-long v1, v4, v6

    .line 404
    .local v1, "elapsedTimeMillis":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHAsyncRequest elapsed time (ms) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "outTime":Ljava/lang/String;
    invoke-static {v3}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 407
    iget-object v4, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->lastError:Lv2/com/playhaven/model/PHError;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->listener:Lv2/com/playhaven/listeners/PHHttpRequestListener;

    if-eqz v4, :cond_1

    .line 408
    iget-object v4, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->listener:Lv2/com/playhaven/listeners/PHHttpRequestListener;

    iget-object v5, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->lastError:Lv2/com/playhaven/model/PHError;

    invoke-interface {v4, v5}, Lv2/com/playhaven/listeners/PHHttpRequestListener;->onHttpRequestFailed(Lv2/com/playhaven/model/PHError;)V

    .line 416
    .end local v1    # "elapsedTimeMillis":J
    .end local v3    # "outTime":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 409
    .restart local v1    # "elapsedTimeMillis":J
    .restart local v3    # "outTime":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->listener:Lv2/com/playhaven/listeners/PHHttpRequestListener;

    if-eqz v4, :cond_0

    .line 410
    iget-object v4, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->listener:Lv2/com/playhaven/listeners/PHHttpRequestListener;

    iget v5, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->responseCode:I

    invoke-interface {v4, p1, v5}, Lv2/com/playhaven/listeners/PHHttpRequestListener;->onHttpRequestSucceeded(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    .end local v1    # "elapsedTimeMillis":J
    .end local v3    # "outTime":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PHAsyncRequest - onPostExecute"

    sget-object v5, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v4, v5}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public setMaxRedirects(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->setMaxRedirect(I)V

    .line 277
    return-void
.end method

.method public setPHHttpClient(Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;)V
    .locals 0
    .param p1, "client"    # Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    .prologue
    .line 441
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    .line 442
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 428
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->password:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->setPassword(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->username:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lv2/com/playhaven/requests/base/PHAsyncRequest;->client:Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lv2/com/playhaven/requests/base/PHAsyncRequest$PHHttpConn;->setUsername(Ljava/lang/String;)V

    .line 421
    return-void
.end method
