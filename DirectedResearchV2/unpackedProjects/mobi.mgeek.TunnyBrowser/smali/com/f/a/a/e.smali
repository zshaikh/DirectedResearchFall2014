.class Lcom/f/a/a/e;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Lcom/f/a/a/t;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/f/a/a/t;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/f/a/a/e;->f:Z

    .line 43
    iput-boolean v0, p0, Lcom/f/a/a/e;->g:Z

    .line 44
    iput-boolean v0, p0, Lcom/f/a/a/e;->h:Z

    .line 47
    iput-object p1, p0, Lcom/f/a/a/e;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 48
    iput-object p2, p0, Lcom/f/a/a/e;->b:Lorg/apache/http/protocol/HttpContext;

    .line 49
    iput-object p3, p0, Lcom/f/a/a/e;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 50
    iput-object p4, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    .line 51
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/f/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/f/a/a/e;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "No valid URI scheme was provided"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/f/a/a/e;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/f/a/a/e;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/f/a/a/e;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/f/a/a/e;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    invoke-interface {v1, v0}, Lcom/f/a/a/t;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    iget-object v2, p0, Lcom/f/a/a/e;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v3

    move v2, v1

    .line 110
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/f/a/a/e;->c()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :cond_1
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 118
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownHostException exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    iget v0, p0, Lcom/f/a/a/e;->e:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/f/a/a/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/f/a/a/e;->e:I

    iget-object v4, p0, Lcom/f/a/a/e;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v2, v0, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 134
    :goto_2
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    if-eqz v4, :cond_0

    .line 135
    iget-object v4, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    iget v5, p0, Lcom/f/a/a/e;->e:I

    invoke-interface {v4, v5}, Lcom/f/a/a/t;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 140
    const-string v0, "AsyncHttpRequest"

    const-string v2, "Unhandled exception origin cause"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 145
    :cond_2
    throw v0

    .line 119
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 120
    :catch_2
    move-exception v2

    .line 124
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NPE in HttpClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 125
    iget v2, p0, Lcom/f/a/a/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/f/a/a/e;->e:I

    iget-object v4, p0, Lcom/f/a/a/e;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto :goto_2

    .line 126
    :catch_3
    move-exception v0

    .line 127
    invoke-virtual {p0}, Lcom/f/a/a/e;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    iget v2, p0, Lcom/f/a/a/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/f/a/a/e;->e:I

    iget-object v4, p0, Lcom/f/a/a/e;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_2
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/f/a/a/e;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/f/a/a/e;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/f/a/a/e;->g:Z

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/f/a/a/e;->g:Z

    .line 158
    iget-object v0, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    invoke-interface {v0}, Lcom/f/a/a/t;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/f/a/a/e;->f:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/f/a/a/e;->e()V

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/f/a/a/e;->f:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/f/a/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/f/a/a/e;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/f/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    invoke-interface {v0}, Lcom/f/a/a/t;->f()V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/f/a/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/f/a/a/e;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    invoke-virtual {p0}, Lcom/f/a/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    invoke-interface {v0}, Lcom/f/a/a/t;->g()V

    .line 85
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/f/a/a/e;->h:Z

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {p0}, Lcom/f/a/a/e;->a()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    if-eqz v1, :cond_4

    .line 71
    iget-object v1, p0, Lcom/f/a/a/e;->d:Lcom/f/a/a/t;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/f/a/a/t;->b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_1

    .line 73
    :cond_4
    const-string v1, "AsyncHttpRequest"

    const-string v2, "makeRequestWithRetries returned error, but handler is null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
