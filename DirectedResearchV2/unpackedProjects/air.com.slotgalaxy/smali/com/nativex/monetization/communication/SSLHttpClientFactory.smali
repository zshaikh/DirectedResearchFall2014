.class public Lcom/nativex/monetization/communication/SSLHttpClientFactory;
.super Ljava/lang/Object;
.source "SSLHttpClientFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSSLHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 21
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    :try_start_0
    const-string v7, "http"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 22
    const-string v5, "http"

    .line 28
    .local v5, "scheme":Ljava/lang/String;
    :goto_0
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 29
    .local v6, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v8

    const/16 v9, 0x1bb

    invoke-direct {v7, v5, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 31
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 33
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    new-instance v3, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v3, v4, v6}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 35
    .local v3, "mgr":Lorg/apache/http/impl/conn/SingleClientConnManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    move-object v0, v1

    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "mgr":Lorg/apache/http/impl/conn/SingleClientConnManager;
    .end local v4    # "params":Lorg/apache/http/params/HttpParams;
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    :goto_1
    move-object v7, v0

    .line 39
    :goto_2
    return-object v7

    .line 23
    :cond_0
    const-string v7, "https"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 24
    const-string v5, "https"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v5    # "scheme":Ljava/lang/String;
    goto :goto_0

    .line 26
    .end local v5    # "scheme":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    .line 36
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "Exception caught while building SSLHttpClient"

    invoke-static {v7, v2}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
