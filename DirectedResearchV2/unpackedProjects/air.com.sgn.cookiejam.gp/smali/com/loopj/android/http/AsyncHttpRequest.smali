.class Lcom/loopj/android/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private isBinaryRequest:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "client"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p4, "responseHandler"    # Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 41
    iput-object p2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 42
    iput-object p3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 43
    iput-object p4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 44
    instance-of v0, p4, Lcom/loopj/android/http/BinaryHttpResponseHandler;

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isBinaryRequest:Z

    .line 47
    :cond_0
    return-void
.end method

.method private makeRequest()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 75
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v1, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 83
    .end local v0    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    return-void
.end method

.method private makeRequestWithRetries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v3, 0x1

    .line 89
    .local v3, "retry":Z
    const/4 v0, 0x0

    .line 90
    .local v0, "cause":Ljava/io/IOException;
    iget-object v5, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v4

    .line 91
    .local v4, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    :goto_0
    if-eqz v3, :cond_1

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 99
    :cond_0
    :goto_1
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/net/UnknownHostException;
    iget-object v5, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v5, :cond_0

    .line 97
    iget-object v5, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    const-string v6, "can\'t resolve host"

    invoke-virtual {v5, v1, v6}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 100
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 102
    iget v5, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v6, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 109
    goto :goto_0

    .line 103
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NPE in HttpClient"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v0    # "cause":Ljava/io/IOException;
    iget v5, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v6, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    .line 109
    goto :goto_0

    .line 113
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2}, Ljava/net/ConnectException;-><init>()V

    .line 114
    .local v2, "ex":Ljava/net/ConnectException;
    invoke-virtual {v2, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 115
    throw v2
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 51
    :try_start_0
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendStartMessage()V

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->makeRequestWithRetries()V

    .line 57
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFinishMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local p0    # "this":Lcom/loopj/android/http/AsyncHttpRequest;
    :cond_1
    :goto_0
    return-void

    .line 60
    .restart local p0    # "this":Lcom/loopj/android/http/AsyncHttpRequest;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 61
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-eqz v3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFinishMessage()V

    .line 63
    iget-boolean v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isBinaryRequest:Z

    if-eqz v3, :cond_2

    .line 64
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-object v0, v2

    check-cast v0, [B

    move-object p0, v0

    .end local p0    # "this":Lcom/loopj/android/http/AsyncHttpRequest;
    invoke-virtual {v3, v1, p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 66
    .restart local p0    # "this":Lcom/loopj/android/http/AsyncHttpRequest;
    :cond_2
    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
