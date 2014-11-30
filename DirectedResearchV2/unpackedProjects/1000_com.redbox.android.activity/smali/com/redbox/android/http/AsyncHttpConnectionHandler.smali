.class public Lcom/redbox/android/http/AsyncHttpConnectionHandler;
.super Ljava/lang/Object;
.source "AsyncHttpConnectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CONDITIONAL_GET:I = 0x4

.field static final CONNECTION_TIME_OUT:I = 0x1d4c0

.field private static final DELETE:I = 0x3

.field public static final ERROR_CONNECTION_ERROR:I = 0x1

.field public static final ERROR_CONNECTION_TIMED_OUT:I = 0x2

.field public static final ERROR_JSON_ERROR:I = 0x3

.field public static final ERROR_NO_CONNECTIVITY:I = 0x0

.field public static final ERROR_NO_CONTENT:I = 0x5

.field public static final EVENT_CONNECTION_ERROR:I = 0x3

.field public static final EVENT_NO_CHANGE:I = 0x4

.field public static final EVENT_RECEIVING_DATA:I = 0x0

.field public static final EVENT_RESPONSE_OK:I = 0x1

.field public static final EVENT_TIMED_OUT:I = 0x2

.field private static final GET:I = 0x0

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final HEADER_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HTTP_RESPONSE_NOT_CHANGED:I = 0x130

.field private static final HTTP_RESPONSE_OK:I = 0xc8

.field private static final POST:I = 0x1

.field private static final PUT:I = 0x2


# instance fields
.field private contentLength:I

.field private data:Ljava/lang/String;

.field eTag:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private interrupted:Z

.field lastModified:Ljava/lang/String;

.field private listener:Lcom/redbox/android/http/ServerCommunicationListener;

.field private method:I

.field sizeRead:I

.field statusTimer:Ljava/util/Timer;

.field totalLength:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/redbox/android/http/ServerCommunicationListener;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 4
    .param p1, "listener"    # Lcom/redbox/android/http/ServerCommunicationListener;
    .param p2, "h"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->interrupted:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 86
    iput-object p1, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    .line 87
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 88
    iget-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 89
    const-string v1, "http.connection.timeout"

    .line 90
    new-instance v2, Ljava/lang/Integer;

    const v3, 0x1d4c0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 88
    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 91
    iget-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {}, Lcom/redbox/android/controller/Controller;->getController()Lcom/redbox/android/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/redbox/android/controller/Controller;->getCookieStore()Lcom/redbox/android/adapter/RBCookieStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->contentLength:I

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/http/AsyncHttpConnectionHandler;)Lcom/redbox/android/http/ServerCommunicationListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    return-object v0
.end method

.method public static getMessage(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 310
    packed-switch p0, :pswitch_data_0

    .line 318
    const-string v0, "Unexpected network error occured"

    :goto_0
    return-object v0

    .line 312
    :pswitch_0
    const-string v0, "Network unavailable.Please check network connectivity"

    goto :goto_0

    .line 314
    :pswitch_1
    const-string v0, "Connection timed out.Please try again"

    goto :goto_0

    .line 316
    :pswitch_2
    const-string v0, "Unable to connect to the server.Try again later"

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private processEntity(Lorg/apache/http/HttpEntity;)V
    .locals 13
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x0

    .line 264
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 265
    .local v10, "stream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 266
    .local v9, "size":I
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->totalLength:J

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size of data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->totalLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iput v11, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->sizeRead:I

    .line 269
    const/16 v8, 0x400

    .line 270
    .local v8, "bufferSize":I
    new-array v7, v8, [B

    .line 271
    .local v7, "buffer":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 272
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->statusTimer:Ljava/util/Timer;

    .line 273
    iget-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->statusTimer:Ljava/util/Timer;

    new-instance v1, Lcom/redbox/android/http/AsyncHttpConnectionHandler$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/http/AsyncHttpConnectionHandler$1;-><init>(Lcom/redbox/android/http/AsyncHttpConnectionHandler;)V

    .line 281
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    .line 273
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 282
    :goto_0
    invoke-virtual {v10, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    iget-boolean v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->interrupted:Z

    if-eqz v0, :cond_2

    .line 287
    :cond_0
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 288
    iget-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    invoke-interface {v0, v11, v12}, Lcom/redbox/android/http/ServerCommunicationListener;->status(II)V

    .line 289
    iget-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->statusTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->statusTimer:Ljava/util/Timer;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Running? = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/redbox/android/utils/RuntimeCache;->isRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-boolean v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->interrupted:Z

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    invoke-interface {v0, v11, v12}, Lcom/redbox/android/http/ServerCommunicationListener;->status(II)V

    .line 294
    iget-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/redbox/android/http/ServerCommunicationListener;->dataReceived([B)V

    .line 296
    :cond_1
    return-void

    .line 283
    :cond_2
    invoke-virtual {v6, v7, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 284
    iget v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->sizeRead:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->sizeRead:I

    .line 285
    new-array v7, v8, [B

    goto :goto_0
.end method


# virtual methods
.method public abortConnection()V
    .locals 1

    .prologue
    .line 299
    const-string v0, "----------Connections killed----------"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->interrupted:Z

    .line 301
    iget-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    invoke-interface {v0}, Lcom/redbox/android/http/ServerCommunicationListener;->connectionAborted()V

    .line 303
    iget-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->statusTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->statusTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 307
    :cond_0
    return-void
.end method

.method public conditionalGet(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "str"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LastModified: setting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ETag : setting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    aget-object v0, p2, v2

    iput-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->lastModified:Ljava/lang/String;

    .line 114
    aget-object v0, p2, v3

    iput-object v0, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->eTag:Ljava/lang/String;

    .line 115
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->create(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public create(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 96
    iput p1, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->method:I

    .line 97
    iput-object p2, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->url:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->data:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/redbox/android/http/ConnectionManager;->getInstance()Lcom/redbox/android/http/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/redbox/android/http/ConnectionManager;->push(Lcom/redbox/android/http/AsyncHttpConnectionHandler;)V

    .line 100
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->create(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public get(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->create(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->create(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->create(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public run()V
    .locals 18

    .prologue
    .line 131
    const-string v14, "Starting connection"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->interrupted:Z

    move v14, v0

    if-nez v14, :cond_1

    .line 135
    const/4 v9, 0x0

    .line 136
    .local v9, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 137
    .local v12, "startTime":J
    const-string v14, "Start http execution:"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->method:I

    move v14, v0

    packed-switch v14, :pswitch_data_0

    .line 192
    :goto_0
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 193
    .local v10, "responseCode":I
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Response code: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    .line 197
    .local v6, "headers":[Lorg/apache/http/Header;
    if-eqz v6, :cond_0

    .line 199
    array-length v14, v6

    const/4 v15, 0x0

    :goto_1
    if-lt v15, v14, :cond_2

    .line 220
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Finished execution.Time taken:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v12

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 220
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->contentLength:I

    move v14, v0

    if-nez v14, :cond_6

    .line 225
    const-string v14, "No Data Recieved"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    move-object v14, v0

    const/4 v15, 0x5

    invoke-interface {v14, v15}, Lcom/redbox/android/http/ServerCommunicationListener;->connectionError(I)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    .end local v6    # "headers":[Lorg/apache/http/Header;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "responseCode":I
    .end local v12    # "startTime":J
    :cond_1
    :goto_2
    invoke-static {}, Lcom/redbox/android/http/ConnectionManager;->getInstance()Lcom/redbox/android/http/ConnectionManager;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/redbox/android/http/ConnectionManager;->didComplete(Ljava/lang/Runnable;)V

    .line 256
    return-void

    .line 140
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "startTime":J
    :pswitch_0
    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->url:Ljava/lang/String;

    move-object v14, v0

    invoke-direct {v2, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "cgetJob":Lorg/apache/http/client/methods/HttpGet;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "LastModified:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->lastModified:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ETag :"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->eTag:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const-string v14, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->lastModified:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v2, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v14, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->eTag:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v2, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v14, v0

    invoke-virtual {v14, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 150
    goto/16 :goto_0

    .line 152
    .end local v2    # "cgetJob":Lorg/apache/http/client/methods/HttpGet;
    :pswitch_1
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->url:Ljava/lang/String;

    move-object v14, v0

    invoke-direct {v4, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 154
    .local v4, "getJob":Lorg/apache/http/client/methods/HttpGet;
    const-string v14, "Content-Type"

    const-string v15, "html/text;charset=UTF-8"

    invoke-virtual {v4, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v14, "Referer"

    const-string v15, "http://redbox.mobile.com"

    invoke-virtual {v4, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v14, "User-Agent"

    .line 157
    const-string v15, "Mozilla/5.0 Safari/534.3 AndroidNative/200"

    .line 156
    invoke-virtual {v4, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v14, v0

    invoke-virtual {v14, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 160
    goto/16 :goto_0

    .line 162
    .end local v4    # "getJob":Lorg/apache/http/client/methods/HttpGet;
    :pswitch_2
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->url:Ljava/lang/String;

    move-object v14, v0

    invoke-direct {v7, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 167
    .local v7, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "post data: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->data:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "post url: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->url:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v11, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->data:Ljava/lang/String;

    move-object v14, v0

    const-string v15, "UTF-8"

    invoke-direct {v11, v14, v15}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v11, "se":Lorg/apache/http/entity/StringEntity;
    const-string v14, "application/json"

    invoke-virtual {v11, v14}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v7, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 174
    const-string v14, "Content-Type"

    .line 175
    const-string v15, "application/json;charset=UTF-8"

    .line 174
    invoke-virtual {v7, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v14, "Referer"

    const-string v15, "http://redbox.mobile.com"

    invoke-virtual {v7, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v14, "User-Agent"

    .line 178
    const-string v15, "Mozilla/5.0 Safari/534.3 AndroidNative/200"

    .line 177
    invoke-virtual {v7, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v14, v0

    invoke-virtual {v14, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 181
    goto/16 :goto_0

    .line 183
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "se":Lorg/apache/http/entity/StringEntity;
    :pswitch_3
    new-instance v8, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->url:Ljava/lang/String;

    move-object v14, v0

    invoke-direct {v8, v14}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 184
    .local v8, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    new-instance v14, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->data:Ljava/lang/String;

    move-object v15, v0

    invoke-direct {v14, v15}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v14, v0

    invoke-virtual {v14, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 186
    goto/16 :goto_0

    .line 188
    .end local v8    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v14, v0

    new-instance v15, Lorg/apache/http/client/methods/HttpDelete;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    goto/16 :goto_0

    .line 199
    .restart local v6    # "headers":[Lorg/apache/http/Header;
    .restart local v10    # "responseCode":I
    :cond_2
    aget-object v5, v6, v15

    .line 200
    .local v5, "header":Lorg/apache/http/Header;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Header name :"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 201
    const-string v17, " : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "ETag"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 203
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "ETAG :"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v16

    .line 205
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 204
    invoke-virtual/range {v16 .. v17}, Lcom/redbox/android/adapter/LocalDataStore;->setEtag(Ljava/lang/String;)V

    .line 208
    :cond_3
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Last-Modified"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 209
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Last modified:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v16

    .line 212
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 211
    invoke-virtual/range {v16 .. v17}, Lcom/redbox/android/adapter/LocalDataStore;->setLastModified(Ljava/lang/String;)V

    .line 214
    :cond_4
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Content-Length"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 215
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->contentLength:I

    .line 199
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 228
    .end local v5    # "header":Lorg/apache/http/Header;
    :cond_6
    const/16 v14, 0xc8

    if-ne v10, v14, :cond_7

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    move-object v14, v0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/redbox/android/http/ServerCommunicationListener;->status(II)V

    .line 230
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->interrupted:Z

    move v14, v0

    if-nez v14, :cond_1

    .line 231
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->processEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 240
    .end local v6    # "headers":[Lorg/apache/http/Header;
    .end local v10    # "responseCode":I
    .end local v12    # "startTime":J
    :catch_0
    move-exception v14

    move-object v3, v14

    .line 241
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->interrupted:Z

    move v14, v0

    if-nez v14, :cond_1

    .line 243
    const-string v14, "ClientProtocolException"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/redbox/android/http/ServerCommunicationListener;->connectionError(I)V

    goto/16 :goto_2

    .line 234
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v6    # "headers":[Lorg/apache/http/Header;
    .restart local v10    # "responseCode":I
    .restart local v12    # "startTime":J
    :cond_7
    const/16 v14, 0x130

    if-ne v10, v14, :cond_8

    .line 235
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    move-object v14, v0

    const/4 v15, 0x4

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/redbox/android/http/ServerCommunicationListener;->status(II)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 246
    .end local v6    # "headers":[Lorg/apache/http/Header;
    .end local v10    # "responseCode":I
    .end local v12    # "startTime":J
    :catch_1
    move-exception v14

    move-object v3, v14

    .line 247
    .local v3, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->interrupted:Z

    move v14, v0

    if-nez v14, :cond_1

    .line 248
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 249
    const-string v14, "IOException"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/redbox/android/http/ServerCommunicationListener;->connectionError(I)V

    goto/16 :goto_2

    .line 237
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "headers":[Lorg/apache/http/Header;
    .restart local v10    # "responseCode":I
    .restart local v12    # "startTime":J
    :cond_8
    :try_start_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/redbox/android/http/ServerCommunicationListener;->connectionError(I)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
