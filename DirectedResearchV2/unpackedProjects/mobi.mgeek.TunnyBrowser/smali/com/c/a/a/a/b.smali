.class public Lcom/c/a/a/a/b;
.super Lorg/apache/c/c/b;
.source "TEvernoteHttpClient.java"


# instance fields
.field private a:Ljava/net/URL;

.field private b:Ljava/lang/String;

.field private final c:Lcom/c/a/a/a/a;

.field private d:Ljava/io/InputStream;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/apache/http/client/methods/HttpRequestBase;

.field private g:Lorg/apache/http/params/HttpParams;

.field private h:Lorg/apache/http/conn/ClientConnectionManager;

.field private i:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lorg/apache/c/c/b;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/c/a/a/a/b;->a:Ljava/net/URL;

    .line 65
    iput-object v0, p0, Lcom/c/a/a/a/b;->b:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/c/a/a/a/b;->d:Ljava/io/InputStream;

    .line 68
    iput-object v0, p0, Lcom/c/a/a/a/b;->e:Ljava/util/Map;

    .line 69
    iput-object v0, p0, Lcom/c/a/a/a/b;->f:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 70
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/b;->g:Lorg/apache/http/params/HttpParams;

    .line 87
    invoke-direct {p0}, Lcom/c/a/a/a/b;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 89
    iput-object p2, p0, Lcom/c/a/a/a/b;->b:Ljava/lang/String;

    .line 91
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/c/a/a/a/b;->a:Ljava/net/URL;

    .line 92
    new-instance v0, Lcom/c/a/a/a/a;

    const-string v1, "http"

    const/high16 v2, 0x80000

    invoke-direct {v0, p3, v1, v2}, Lcom/c/a/a/a/a;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/c/a/a/a/b;->c:Lcom/c/a/a/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lorg/apache/c/c/c;

    invoke-direct {v1, v0}, Lorg/apache/c/c/c;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/a/b;->h:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/c/a/a/a/b;->h:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 165
    iget-object v0, p0, Lcom/c/a/a/a/b;->h:Lorg/apache/http/conn/ClientConnectionManager;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/c/a/a/a/b;->i:Lorg/apache/http/impl/client/DefaultHttpClient;

    :goto_1
    return-object v0

    .line 167
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 169
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 170
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 172
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 173
    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 175
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 176
    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 178
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 179
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 182
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 185
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v2, p0, Lcom/c/a/a/a/b;->h:Lorg/apache/http/conn/ClientConnectionManager;

    .line 186
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/c/a/a/a/b;->h:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 187
    new-instance v0, Lcom/c/a/a/a/c;

    invoke-direct {v0, p0}, Lcom/c/a/a/a/c;-><init>(Lcom/c/a/a/a/b;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    .line 195
    new-instance v0, Lcom/c/a/a/a/d;

    invoke-direct {v0, p0}, Lcom/c/a/a/a/d;-><init>(Lcom/c/a/a/a/b;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V

    .line 201
    iput-object v1, p0, Lcom/c/a/a/a/b;->i:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a([BII)I
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/c/a/a/a/b;->d:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lorg/apache/c/c/c;

    const-string v1, "Response buffer is empty, no request."

    invoke-direct {v0, v1}, Lorg/apache/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/a/b;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 148
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 149
    new-instance v0, Lorg/apache/c/c/c;

    const-string v1, "No more data available."

    invoke-direct {v0, v1}, Lorg/apache/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Lorg/apache/c/c/c;

    invoke-direct {v1, v0}, Lorg/apache/c/c/c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :cond_1
    return v0
.end method

.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 222
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/c/a/a/a/b;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 223
    iput-object v2, p0, Lcom/c/a/a/a/b;->f:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 224
    const-string v0, "Content-Type"

    const-string v1, "application/x-thrift"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "Cache-Control"

    const-string v1, "no-transform"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/c/a/a/a/b;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/c/a/a/a/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    :try_start_1
    new-instance v1, Lorg/apache/c/c/c;

    invoke-direct {v1, v0}, Lorg/apache/c/c/c;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    :try_start_2
    iget-object v1, p0, Lcom/c/a/a/a/b;->c:Lcom/c/a/a/a/a;

    invoke-virtual {v1}, Lcom/c/a/a/a/a;->f()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 264
    :goto_1
    iput-object v5, p0, Lcom/c/a/a/a/b;->f:Lorg/apache/http/client/methods/HttpRequestBase;

    throw v0

    .line 231
    :cond_0
    :try_start_3
    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    iget-object v1, p0, Lcom/c/a/a/a/b;->c:Lcom/c/a/a/a/a;

    invoke-virtual {v1}, Lcom/c/a/a/a/a;->e()Ljava/io/InputStream;

    move-result-object v1

    iget-object v3, p0, Lcom/c/a/a/a/b;->c:Lcom/c/a/a/a/a;

    invoke-virtual {v3}, Lcom/c/a/a/a/a;->d()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 234
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 235
    const-string v0, "Accept"

    const-string v1, "application/x-thrift"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "User-Agent"

    iget-object v0, p0, Lcom/c/a/a/a/b;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "Java/THttpClient"

    :goto_2
    invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 241
    invoke-direct {p0}, Lcom/c/a/a/a/b;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 245
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 246
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    .line 247
    if-eqz v1, :cond_1

    .line 248
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 250
    :cond_1
    new-instance v0, Lorg/apache/c/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP Response code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    :catch_1
    move-exception v0

    .line 258
    :try_start_4
    new-instance v1, Lorg/apache/c/c/c;

    invoke-direct {v1, v0}, Lorg/apache/c/c/c;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/c/a/a/a/b;->b:Ljava/lang/String;

    goto :goto_2

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/c/a/a/a/b;->c:Lcom/c/a/a/a/a;

    invoke-virtual {v1}, Lcom/c/a/a/a/a;->f()V

    .line 254
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/a/b;->d:Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    :try_start_6
    iget-object v0, p0, Lcom/c/a/a/a/b;->c:Lcom/c/a/a/a/a;

    invoke-virtual {v0}, Lcom/c/a/a/a/a;->f()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 264
    :goto_3
    iput-object v5, p0, Lcom/c/a/a/a/b;->f:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 266
    return-void

    .line 262
    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method public b([BII)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/c/a/a/a/b;->c:Lcom/c/a/a/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/c/a/a/a/a;->write([BII)V

    .line 212
    return-void
.end method
