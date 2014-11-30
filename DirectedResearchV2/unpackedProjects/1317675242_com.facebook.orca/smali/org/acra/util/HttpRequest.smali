.class public Lorg/acra/util/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field creds:Lorg/apache/http/auth/UsernamePasswordCredentials;

.field httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field httpGet:Lorg/apache/http/client/methods/HttpGet;

.field httpPost:Lorg/apache/http/client/methods/HttpPost;

.field localContext:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lorg/acra/util/HttpRequest;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 45
    iput-object v0, p0, Lorg/acra/util/HttpRequest;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 46
    iput-object v0, p0, Lorg/acra/util/HttpRequest;->creds:Lorg/apache/http/auth/UsernamePasswordCredentials;

    .line 49
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 50
    :cond_0
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/acra/util/HttpRequest;->creds:Lorg/apache/http/auth/UsernamePasswordCredentials;

    .line 52
    :cond_1
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 54
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->socketTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->socketTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 57
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 58
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    new-instance v4, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 59
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    new-instance v4, Lorg/acra/util/FakeSocketFactory;

    invoke-direct {v4}, Lorg/acra/util/FakeSocketFactory;-><init>()V

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 60
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lorg/acra/util/HttpRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 61
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lorg/acra/util/HttpRequest;->localContext:Lorg/apache/http/protocol/HttpContext;

    .line 62
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Abort HttpClient request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while aborting HttpClient request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearCookies()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 66
    return-void
.end method

.method public getHttpStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 149
    instance-of v1, p0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not an HTTP connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    :try_start_0
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 154
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 155
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 156
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 159
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 160
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 161
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    :cond_1
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error connecting"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/acra/util/HttpRequest;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 133
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lorg/acra/util/HttpRequest;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 140
    return-object v0
.end method

.method public sendPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/acra/util/HttpRequest;->sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.cookie-policy"

    const-string v2, "rfc2109"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 87
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/acra/util/HttpRequest;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 89
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Setting httpPost headers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->creds:Lorg/apache/http/auth/UsernamePasswordCredentials;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lorg/acra/util/HttpRequest;->creds:Lorg/apache/http/auth/UsernamePasswordCredentials;

    const-string v2, "UTF-8"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "User-Agent"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Accept"

    const-string v2, "text/html,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p3, :cond_2

    .line 98
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lorg/acra/util/HttpRequest;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 106
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending request to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lorg/acra/util/HttpRequest;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lorg/acra/util/HttpRequest;->localContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host returned error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    iget-object v0, p0, Lorg/acra/util/HttpRequest;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_1
    return-object v0

    .line 123
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
