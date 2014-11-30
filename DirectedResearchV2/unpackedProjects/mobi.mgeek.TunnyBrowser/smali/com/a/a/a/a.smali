.class public Lcom/a/a/a/a;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static a:Lorg/apache/http/params/HttpParams;

.field private static b:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field private static c:Lorg/apache/http/conn/ClientConnectionManager;

.field private static d:Lcom/a/a/a/f;


# instance fields
.field private final e:Lcom/a/a/a/b;


# direct methods
.method private constructor <init>(Lcom/a/a/a/b;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    .line 222
    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/a/b;B)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/a/a/a/a;-><init>(Lcom/a/a/a/b;)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 146
    if-nez p0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string v0, "file.encoding"

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    :cond_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 154
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 155
    const/16 v0, 0x2000

    new-array v3, v0, [C

    .line 156
    invoke-virtual {v1, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v0

    .line 157
    :goto_0
    if-lez v0, :cond_2

    .line 158
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/StringWriter;->write([CII)V

    .line 159
    invoke-virtual {v1, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v0

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    return-object v0
.end method

.method private static a()Lorg/apache/http/params/HttpParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    sget-object v0, Lcom/a/a/a/a;->a:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v0, v3}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    sput-object v0, Lcom/a/a/a/a;->a:Lorg/apache/http/params/HttpParams;

    .line 189
    :cond_0
    sget-object v0, Lcom/a/a/a/a;->a:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public static a(Lcom/a/a/a/h;)V
    .locals 8

    .prologue
    .line 189
    invoke-static {p0}, Lcom/a/a/a/h;->b(Lcom/a/a/a/h;)Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 190
    invoke-static {p0}, Lcom/a/a/a/h;->b(Lcom/a/a/a/h;)Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {p0}, Lcom/a/a/a/h;->b(Lcom/a/a/a/h;)Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 192
    invoke-static {p0}, Lcom/a/a/a/h;->a(Lcom/a/a/a/h;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/a/a;->b(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 193
    const-string v3, "HttpUtils"

    const-string v4, "Http Error %d, content %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v2, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 197
    :cond_0
    return-void
.end method

.method public static a(Lorg/apache/http/HttpEntity;)V
    .locals 1

    .prologue
    .line 52
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 119
    .line 120
    if-eqz p0, :cond_1

    .line 121
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 122
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Response encoding = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Response encoding = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "HttpUtils"

    const-string v1, "Wrapping result with gzip encoding."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 125
    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Lcom/a/a/a/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_1
    invoke-static {p0}, Lcom/a/a/a/a;->a(Lorg/apache/http/HttpEntity;)V

    .line 130
    return-object v0

    .line 124
    :cond_2
    const-string v2, "deflate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "HttpUtils"

    const-string v1, "Wrapping result with deflate encoding."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)Lcom/a/a/a/h;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 240
    const-string v0, "HttpRequester"

    const-string v1, "[request] ... "

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/a/a/a/c;

    sget-object v1, Lcom/a/a/a/a;->c:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/a/a/a/a;->a()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/a;->b:Lorg/apache/http/conn/scheme/SchemeRegistry;

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    new-instance v6, Lcom/a/a/a/i;

    invoke-direct {v6}, Lcom/a/a/a/i;-><init>()V

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    sput-object v2, Lcom/a/a/a/a;->b:Lorg/apache/http/conn/scheme/SchemeRegistry;

    :cond_0
    sget-object v2, Lcom/a/a/a/a;->b:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v4, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v4, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sget-object v1, Lcom/a/a/a/a;->d:Lcom/a/a/a/f;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/a/a/a/a;->d:Lcom/a/a/a/f;

    invoke-virtual {v1}, Lcom/a/a/a/f;->a()V

    :cond_1
    new-instance v1, Lcom/a/a/a/f;

    invoke-direct {v1, v4}, Lcom/a/a/a/f;-><init>(Lorg/apache/http/conn/ClientConnectionManager;)V

    sput-object v1, Lcom/a/a/a/a;->d:Lcom/a/a/a/f;

    sput-object v4, Lcom/a/a/a/a;->c:Lorg/apache/http/conn/ClientConnectionManager;

    :cond_2
    sget-object v1, Lcom/a/a/a/a;->c:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-static {}, Lcom/a/a/a/a;->a()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/c;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    move-object v2, v0

    .line 244
    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    invoke-static {v0}, Lcom/a/a/a/b;->a(Lcom/a/a/a/b;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    invoke-static {v0}, Lcom/a/a/a/b;->b(Lcom/a/a/a/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    if-ne v0, v1, :cond_4

    .line 245
    :cond_3
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    invoke-static {v0}, Lcom/a/a/a/b;->c(Lcom/a/a/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v4, "http.protocol.expect-continue"

    invoke-interface {v0, v4, v3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-object v0, v1

    .line 249
    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    invoke-static {v4}, Lcom/a/a/a/b;->a(Lcom/a/a/a/b;)Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 253
    :goto_0
    const-string v0, "HttpRequester"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[request] method : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    invoke-static {v0}, Lcom/a/a/a/b;->d(Lcom/a/a/a/b;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    invoke-static {v0}, Lcom/a/a/a/b;->d(Lcom/a/a/a/b;)[Lorg/apache/http/Header;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_5

    .line 255
    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    invoke-static {v0}, Lcom/a/a/a/b;->d(Lcom/a/a/a/b;)[Lorg/apache/http/Header;

    move-result-object v4

    array-length v5, v4

    move v0, v3

    :goto_1
    if-ge v0, v5, :cond_5

    aget-object v3, v4, v0

    .line 256
    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_4
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    invoke-static {v0}, Lcom/a/a/a/b;->c(Lcom/a/a/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    invoke-static {v0}, Lcom/a/a/a/b;->e(Lcom/a/a/a/b;)Lcom/a/a/a/g;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 261
    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    invoke-static {v0}, Lcom/a/a/a/b;->e(Lcom/a/a/a/b;)Lcom/a/a/a/g;

    .line 264
    :cond_6
    const-string v0, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v1, v0, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/b;

    invoke-static {v0}, Lcom/a/a/a/b;->f(Lcom/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    const-string v0, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v1, v0, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_2
    :try_start_0
    const-string v0, "HttpRequester"

    const-string v3, "[request] start execute . "

    invoke-static {v0, v3}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 275
    const-string v1, "HttpRequester"

    const-string v2, "[request] response "

    invoke-static {v1, v2}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v1, Lcom/a/a/a/h;

    invoke-direct {v1, v0}, Lcom/a/a/a/h;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 269
    :cond_7
    const-string v0, "Connection"

    const-string v3, "Close"

    invoke-virtual {v1, v0, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :catch_0
    move-exception v0

    .line 279
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
