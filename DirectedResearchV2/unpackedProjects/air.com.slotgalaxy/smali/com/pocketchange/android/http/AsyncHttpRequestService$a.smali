.class Lcom/pocketchange/android/http/AsyncHttpRequestService$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/http/AsyncHttpRequestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/pocketchange/android/http/AsyncHttpRequestService;

.field private final b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/pocketchange/android/http/AsyncHttpRequestService;Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;)V
    .locals 2

    .prologue
    .line 430
    const-string v0, "AsyncHttpRequestService.RequestProcessor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 431
    new-instance v0, Lcom/pocketchange/android/http/AsyncHttpRequestService$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pocketchange/android/http/AsyncHttpRequestService$b;-><init>(Lcom/pocketchange/android/http/AsyncHttpRequestService$1;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 432
    iput-object p1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->a:Lcom/pocketchange/android/http/AsyncHttpRequestService;

    .line 433
    iput-object p2, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    .line 434
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->c:Z

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v0, "]"

    const-string v0, "AsyncHttpRequestService"

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->a:Lcom/pocketchange/android/http/AsyncHttpRequestService;

    invoke-static {v0}, Lcom/pocketchange/android/net/NetUtils;->isConnectedToNetwork(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iput-boolean v10, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->c:Z

    .line 516
    iget-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->a:Lcom/pocketchange/android/http/AsyncHttpRequestService;

    invoke-static {v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(Lcom/pocketchange/android/http/AsyncHttpRequestService;)V

    .line 518
    :goto_0
    return-void

    .line 446
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/pocketchange/android/http/HttpClientFactory;->createMultiConnectionClient()Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 447
    const-wide/16 v0, -0x1

    .line 449
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v6}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->a(JI)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 450
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 451
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 457
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    const-string v6, "host_json"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(Lorg/json/JSONObject;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 458
    new-instance v6, Lorg/json/JSONObject;

    const-string v7, "request_line_json"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->b(Lorg/json/JSONObject;)Lorg/apache/http/RequestLine;

    move-result-object v6

    .line 459
    new-instance v7, Lorg/json/JSONArray;

    const-string v8, "headers_json"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(Lorg/json/JSONArray;)[Lorg/apache/http/Header;

    move-result-object v7

    .line 460
    const-string v8, "body"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 467
    if-nez v8, :cond_2

    .line 468
    :try_start_4
    new-instance v8, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {v8, v6}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Lorg/apache/http/RequestLine;)V

    move-object v6, v8

    .line 474
    :goto_2
    invoke-interface {v6, v7}, Lorg/apache/http/HttpRequest;->setHeaders([Lorg/apache/http/Header;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 490
    :try_start_5
    new-instance v7, Lcom/pocketchange/android/http/StatusCodeResponseHandler;

    invoke-direct {v7}, Lcom/pocketchange/android/http/StatusCodeResponseHandler;-><init>()V

    invoke-interface {v2, v1, v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 491
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    const/16 v6, 0x12c

    if-ge v1, v6, :cond_3

    move v1, v10

    .line 499
    :goto_3
    if-eqz v1, :cond_5

    .line 500
    :try_start_6
    iget-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    invoke-virtual {v0, v4, v5}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->b(J)Z

    :goto_4
    move-wide v0, v4

    .line 509
    goto :goto_1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    const-string v1, "AsyncHttpRequestService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing JSON for request ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONException;

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    iget-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    invoke-virtual {v0, v4, v5}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->b(J)Z

    move-wide v0, v4

    .line 464
    goto/16 :goto_1

    .line 470
    :cond_2
    new-instance v9, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v9, v6}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Lorg/apache/http/RequestLine;)V

    .line 471
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, v8}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {v9, v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v6, v9

    .line 472
    goto :goto_2

    :cond_3
    move v1, v11

    .line 491
    goto :goto_3

    .line 492
    :catch_1
    move-exception v1

    .line 493
    const-string v6, "AsyncHttpRequestService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error executing request ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    iget-object v1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->a:Lcom/pocketchange/android/http/AsyncHttpRequestService;

    invoke-static {v1}, Lcom/pocketchange/android/net/NetUtils;->isConnectedToNetwork(Landroid/content/Context;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 512
    :try_start_7
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 515
    iput-boolean v10, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->c:Z

    .line 516
    iget-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->a:Lcom/pocketchange/android/http/AsyncHttpRequestService;

    invoke-static {v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(Lcom/pocketchange/android/http/AsyncHttpRequestService;)V

    goto/16 :goto_0

    :cond_4
    move v1, v11

    .line 497
    goto :goto_3

    .line 502
    :cond_5
    :try_start_8
    const-string v1, "failure_count"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 503
    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 504
    iget-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    invoke-virtual {v0, v4, v5}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->a(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    .line 512
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 515
    :catchall_1
    move-exception v0

    iput-boolean v10, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->c:Z

    .line 516
    iget-object v1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->a:Lcom/pocketchange/android/http/AsyncHttpRequestService;

    invoke-static {v1}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(Lcom/pocketchange/android/http/AsyncHttpRequestService;)V

    throw v0

    .line 506
    :cond_6
    :try_start_a
    iget-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    invoke-virtual {v0, v4, v5}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->b(J)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    .line 512
    :cond_7
    :try_start_b
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 515
    iput-boolean v10, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->c:Z

    .line 516
    iget-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->a:Lcom/pocketchange/android/http/AsyncHttpRequestService;

    invoke-static {v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(Lcom/pocketchange/android/http/AsyncHttpRequestService;)V

    goto/16 :goto_0
.end method
