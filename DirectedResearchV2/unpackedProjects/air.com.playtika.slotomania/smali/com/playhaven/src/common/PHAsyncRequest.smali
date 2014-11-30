.class public Lcom/playhaven/src/common/PHAsyncRequest;
.super Landroid/os/AsyncTask;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/common/PHAsyncRequest$Delegate;,
        Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;,
        Lcom/playhaven/src/common/PHAsyncRequest$RequestType;
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
.field private client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

.field private delegate:Lcom/playhaven/src/common/PHAsyncRequest$Delegate;

.field private isDownloading:Z

.field private lastError:Ljava/lang/Exception;

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

.field public request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

.field private responseCode:I

.field public url:Landroid/net/Uri;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/common/PHAsyncRequest$Delegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/playhaven/src/common/PHAsyncRequest$Delegate;

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    .line 276
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->delegate:Lcom/playhaven/src/common/PHAsyncRequest$Delegate;

    .line 277
    new-instance v0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-direct {v0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    .line 278
    sget-object v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Get:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    .line 279
    return-void
.end method

.method private varargs execRequest([Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "urls"    # [Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v8, -0x1

    iput v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->responseCode:I

    .line 327
    iput-object v10, p0, Lcom/playhaven/src/common/PHAsyncRequest;->lastError:Ljava/lang/Exception;

    .line 329
    monitor-enter p0

    .line 331
    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->isDownloading:Z

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->requestStart:J

    .line 335
    iget-object v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v8}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->clearRedirects()V

    .line 337
    array-length v8, p1

    if-lez v8, :cond_6

    .line 338
    const/4 v8, 0x0

    aget-object v7, p1, v8

    .line 341
    .local v7, "url":Landroid/net/Uri;
    iget-object v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->url:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->url:Landroid/net/Uri;

    if-eqz v8, :cond_0

    .line 342
    iget-object v7, p0, Lcom/playhaven/src/common/PHAsyncRequest;->url:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_0
    const/4 v6, 0x0

    .line 346
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAsyncRequest;->isCancelled()Z
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

    .line 398
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "url":Landroid/net/Uri;
    :goto_0
    return-object v8

    .line 349
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "url":Landroid/net/Uri;
    :cond_1
    :try_start_3
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "net_uri":Ljava/lang/String;
    iget-object v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    sget-object v9, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Post:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    if-ne v8, v9, :cond_3

    .line 353
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 355
    .local v5, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v9, p0, Lcom/playhaven/src/common/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 357
    iget-object v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v8, v5}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->start(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 368
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 371
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    iput v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->responseCode:I

    .line 376
    iget v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->responseCode:I

    const/16 v9, 0x12e

    if-ne v8, v9, :cond_2

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAsyncRequest;->getLastRedirectURL()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 377
    const/16 v8, 0xc8

    iput v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->responseCode:I

    .line 379
    :cond_2
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAsyncRequest;->isCancelled()Z
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

    .line 359
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    :cond_3
    :try_start_5
    iget-object v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    sget-object v9, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Get:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    if-ne v8, v9, :cond_4

    .line 360
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 361
    .local v5, "request":Lorg/apache/http/client/methods/HttpGet;
    iget-object v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v8, v5}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->start(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    goto :goto_1

    .line 363
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    :cond_4
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 364
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    iget-object v8, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v8, v5}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->start(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    goto :goto_1

    .line 381
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    :cond_5
    if-eqz v2, :cond_6

    .line 382
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 384
    .local v3, "in_stream":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/playhaven/src/common/PHAsyncRequest;->readStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 386
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 329
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

    .line 398
    goto :goto_0

    .line 389
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "url":Landroid/net/Uri;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 390
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    iput-object v1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->lastError:Ljava/lang/Exception;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 393
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "url":Landroid/net/Uri;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v8, "PHAsyncRequest - doInBackground"

    sget-object v9, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v1, v8, v9}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_2

    .line 329
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
    .line 462
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 464
    .local v3, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    .line 465
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 467
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 468
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 473
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 474
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    return-object v4

    .line 470
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
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
    .line 478
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/playhaven/src/common/PHAsyncRequest;->readStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

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
    .line 294
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
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
    .line 298
    .local p1, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 306
    :cond_0
    return-void

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 302
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 303
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/playhaven/src/common/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 304
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/playhaven/src/common/PHAsyncRequest;->doInBackground([Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "urls"    # [Landroid/net/Uri;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAsyncRequest;->execRequest([Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getLastRedirectURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->getLastRedirect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRedirects()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->getMaxRedirects()I

    move-result v0

    return v0
.end method

.method public getPHHttpClient()Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->password:Ljava/lang/String;

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
    .line 290
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestType()Lcom/playhaven/src/common/PHAsyncRequest$RequestType;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->isDownloading:Z

    return v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->isDownloading:Z

    .line 457
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/playhaven/src/common/PHAsyncRequest;->onPostExecute(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "result"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 406
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/playhaven/src/common/PHAsyncRequest;->isDownloading:Z

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/playhaven/src/common/PHAsyncRequest;->requestStart:J

    sub-long v1, v4, v6

    .line 409
    .local v1, "elapsedTimeMillis":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PHAsyncRequest elapsed time (ms) = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "outTime":Ljava/lang/String;
    invoke-static {v3}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 412
    iget-object v4, p0, Lcom/playhaven/src/common/PHAsyncRequest;->lastError:Ljava/lang/Exception;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/playhaven/src/common/PHAsyncRequest;->delegate:Lcom/playhaven/src/common/PHAsyncRequest$Delegate;

    if-eqz v4, :cond_1

    .line 413
    iget-object v4, p0, Lcom/playhaven/src/common/PHAsyncRequest;->delegate:Lcom/playhaven/src/common/PHAsyncRequest$Delegate;

    iget-object v5, p0, Lcom/playhaven/src/common/PHAsyncRequest;->lastError:Ljava/lang/Exception;

    invoke-interface {v4, v5}, Lcom/playhaven/src/common/PHAsyncRequest$Delegate;->requestFailed(Ljava/lang/Exception;)V

    .line 421
    .end local v1    # "elapsedTimeMillis":J
    .end local v3    # "outTime":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 414
    .restart local v1    # "elapsedTimeMillis":J
    .restart local v3    # "outTime":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/playhaven/src/common/PHAsyncRequest;->delegate:Lcom/playhaven/src/common/PHAsyncRequest$Delegate;

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p0, Lcom/playhaven/src/common/PHAsyncRequest;->delegate:Lcom/playhaven/src/common/PHAsyncRequest$Delegate;

    iget v5, p0, Lcom/playhaven/src/common/PHAsyncRequest;->responseCode:I

    invoke-interface {v4, p1, v5}, Lcom/playhaven/src/common/PHAsyncRequest$Delegate;->requestFinished(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    .end local v1    # "elapsedTimeMillis":J
    .end local v3    # "outTime":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PHAsyncRequest - onPostExecute"

    sget-object v5, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v4, v5}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public setMaxRedirects(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->setMaxRedirect(I)V

    .line 283
    return-void
.end method

.method public setPHHttpClient(Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;)V
    .locals 0
    .param p1, "client"    # Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    .line 447
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->password:Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->setPassword(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->username:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->setUsername(Ljava/lang/String;)V

    .line 426
    return-void
.end method
