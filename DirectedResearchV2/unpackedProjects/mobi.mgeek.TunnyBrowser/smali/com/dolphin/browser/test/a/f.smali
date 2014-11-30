.class final Lcom/dolphin/browser/test/a/f;
.super Ljava/lang/Object;
.source "MeasurableaClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ManagedClientConnection;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/test/a/d;

.field private b:Lorg/apache/http/conn/ManagedClientConnection;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/test/a/d;Lorg/apache/http/conn/ManagedClientConnection;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/test/a/f;->a:Lcom/dolphin/browser/test/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    .line 49
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    .line 35
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v1

    .line 36
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 37
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 38
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->a:Lcom/dolphin/browser/test/a/d;

    invoke-virtual {v2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/test/a/d;->a(Lorg/apache/http/HttpConnectionMetrics;Ljava/lang/String;Ljava/lang/String;J)V

    .line 42
    invoke-interface {v1}, Lorg/apache/http/HttpConnectionMetrics;->reset()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public abortConnection()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/dolphin/browser/test/a/f;->a()V

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V

    .line 146
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/dolphin/browser/test/a/f;->a()V

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    .line 89
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->flush()V

    .line 54
    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isMarkedReusable()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isMarkedReusable()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isResponseAvailable(I)Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedClientConnection;->isResponseAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isStale()Z

    move-result v0

    return v0
.end method

.method public layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/conn/ManagedClientConnection;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 183
    return-void
.end method

.method public markReusable()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V

    .line 188
    return-void
.end method

.method public open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/ManagedClientConnection;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 194
    return-void
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 65
    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnection()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/dolphin/browser/test/a/f;->a()V

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    .line 152
    return-void
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 77
    return-void
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 83
    return-void
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 199
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V

    .line 114
    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/dolphin/browser/test/a/f;->a()V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->shutdown()V

    .line 120
    return-void
.end method

.method public tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 210
    return-void
.end method

.method public tunnelTarget(ZLorg/apache/http/params/HttpParams;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/conn/ManagedClientConnection;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    .line 216
    return-void
.end method

.method public unmarkReusable()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dolphin/browser/test/a/f;->b:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->unmarkReusable()V

    .line 221
    return-void
.end method
