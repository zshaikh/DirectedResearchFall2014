.class public Lcom/dolphin/browser/test/a/d;
.super Ljava/lang/Object;
.source "MeasurableaClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# instance fields
.field private a:Lorg/apache/http/conn/ClientConnectionManager;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 2

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    if-nez p2, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionManager may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/test/a/d;->b:Ljava/lang/String;

    .line 272
    iput-object p2, p0, Lcom/dolphin/browser/test/a/d;->a:Lorg/apache/http/conn/ClientConnectionManager;

    .line 273
    return-void
.end method


# virtual methods
.method protected a(Lorg/apache/http/HttpConnectionMetrics;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 305
    invoke-static {}, Lcom/dolphin/browser/test/a/g;->a()Lcom/dolphin/browser/test/a/g;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/dolphin/browser/test/a/d;->b:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/test/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpConnectionMetrics;J)V

    .line 307
    return-void
.end method

.method protected a(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    .prologue
    .line 294
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v1

    .line 295
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 296
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 297
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {v2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/test/a/d;->a(Lorg/apache/http/HttpConnectionMetrics;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public closeExpiredConnections()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/dolphin/browser/test/a/d;->a:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 313
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/dolphin/browser/test/a/d;->a:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 318
    return-void
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/dolphin/browser/test/a/d;->a:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    .line 286
    const-string v0, "Metrics"

    const-string v1, "Release connection."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/test/a/d;->a(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 288
    iget-object v0, p0, Lcom/dolphin/browser/test/a/d;->a:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/ClientConnectionManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 289
    return-void
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 2

    .prologue
    .line 328
    new-instance v0, Lcom/dolphin/browser/test/a/e;

    iget-object v1, p0, Lcom/dolphin/browser/test/a/d;->a:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1, p1, p2}, Lorg/apache/http/conn/ClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/test/a/e;-><init>(Lcom/dolphin/browser/test/a/d;Lorg/apache/http/conn/ClientConnectionRequest;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/dolphin/browser/test/a/d;->a:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 334
    return-void
.end method
