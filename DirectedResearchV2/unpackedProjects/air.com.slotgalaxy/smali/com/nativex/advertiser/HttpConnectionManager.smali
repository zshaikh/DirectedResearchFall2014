.class public Lcom/nativex/advertiser/HttpConnectionManager;
.super Ljava/lang/Object;
.source "HttpConnectionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executePost(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/message/BasicHttpResponse;
    .locals 4
    .param p1, "mgr"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "httpPost"    # Lorg/apache/http/client/methods/HttpPost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 133
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 135
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicHttpResponse;

    .line 137
    .local v1, "httpResponse":Lorg/apache/http/message/BasicHttpResponse;
    return-object v1
.end method

.method private getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/nativex/advertiser/HttpConnectionManager;->getDefaultKeyStore()Ljava/security/KeyStore;

    move-result-object v6

    .line 191
    .local v6, "trustStore":Ljava/security/KeyStore;
    if-nez v6, :cond_0

    .line 192
    new-instance v7, Ljavax/net/ssl/SSLException;

    const-string v8, "Unable to access valid KeyStore. Aborting request."

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 195
    :cond_0
    invoke-direct {p0, v6}, Lcom/nativex/advertiser/HttpConnectionManager;->getSSLSocketFactory(Ljava/security/KeyStore;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    .line 196
    .local v5, "socketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    if-nez v5, :cond_1

    .line 197
    new-instance v7, Ljavax/net/ssl/SSLException;

    const-string v8, "Unable to initialize SocketFactory.  Aborting request."

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 203
    :cond_1
    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 204
    .local v3, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 205
    .local v4, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 207
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v0, v3

    check-cast v0, Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-object v7, v0

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 208
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 209
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    const/16 v9, 0x1bb

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 211
    new-instance v2, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-direct {v2, v7, v4}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 212
    .local v2, "connectionManager":Lorg/apache/http/impl/conn/SingleClientConnManager;
    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 213
    return-object v2
.end method

.method private getDefaultKeyStore()Ljava/security/KeyStore;
    .locals 4

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 61
    .local v1, "trustStore":Ljava/security/KeyStore;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 62
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getResponseAsString(Lorg/apache/http/message/BasicHttpResponse;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "response"    # Lorg/apache/http/message/BasicHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 167
    invoke-virtual {p1}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 168
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v3, "responseAsString":Ljava/lang/StringBuilder;
    const/16 v4, 0x200

    new-array v0, v4, [B

    .line 170
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 172
    .local v1, "bytes_read":I
    :goto_0
    array-length v4, v0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    .line 173
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v5, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    :cond_0
    return-object v3
.end method

.method private getSSLSocketFactory(Ljava/security/KeyStore;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 5
    .param p1, "keystore"    # Ljava/security/KeyStore;

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, "socketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_start_0
    new-instance v2, Lcom/nativex/advertiser/EasySSLSocketFactory;

    invoke-direct {v2, p1}, Lcom/nativex/advertiser/EasySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "socketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .local v2, "socketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    move-object v1, v2

    .line 85
    .end local v2    # "socketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .restart local v1    # "socketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private populatePost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "request"    # Ljava/lang/String;

    .prologue
    const-string v6, "application/json"

    .line 94
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v2, 0x0

    .line 97
    .local v2, "stringEntity":Lorg/apache/http/entity/StringEntity;
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, p2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "stringEntity":Lorg/apache/http/entity/StringEntity;
    .local v3, "stringEntity":Lorg/apache/http/entity/StringEntity;
    move-object v2, v3

    .line 105
    .end local v3    # "stringEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v2    # "stringEntity":Lorg/apache/http/entity/StringEntity;
    :goto_0
    if-eqz v2, :cond_0

    .line 107
    const-string v4, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v1, v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v1, v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 113
    :cond_0
    return-object v1

    .line 98
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 99
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public executeServerRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "request"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const-string v6, "Response is: "

    .line 227
    invoke-direct {p0}, Lcom/nativex/advertiser/HttpConnectionManager;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 228
    .local v0, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    invoke-direct {p0, p1, p2}, Lcom/nativex/advertiser/HttpConnectionManager;->populatePost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 229
    .local v1, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v0, v1}, Lcom/nativex/advertiser/HttpConnectionManager;->executePost(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/message/BasicHttpResponse;

    move-result-object v2

    .line 230
    .local v2, "response":Lorg/apache/http/message/BasicHttpResponse;
    invoke-direct {p0, v2}, Lcom/nativex/advertiser/HttpConnectionManager;->getResponseAsString(Lorg/apache/http/message/BasicHttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    .local v3, "responseAsString":Ljava/lang/StringBuilder;
    const-string v4, "==============Result=============="

    invoke-static {v4}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/http/message/BasicHttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 5

    .prologue
    .line 142
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 145
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/nativex/advertiser/HttpConnectionManager;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 146
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    const-string v3, "HttpConnectionManager: HttpClient created"

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 151
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    :goto_0
    return-object v3

    .line 148
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 149
    .local v1, "e":Ljavax/net/ssl/SSLException;
    const-string v3, "HttpConnectionManager: cannot create HttpClient"

    invoke-static {v3, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    const/4 v3, 0x0

    goto :goto_0
.end method
