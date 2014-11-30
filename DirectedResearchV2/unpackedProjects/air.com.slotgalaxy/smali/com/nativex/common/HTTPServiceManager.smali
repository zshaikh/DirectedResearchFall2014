.class public Lcom/nativex/common/HTTPServiceManager;
.super Ljava/lang/Object;
.source "HTTPServiceManager.java"

# interfaces
.implements Lcom/nativex/common/IHTTPServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/common/HTTPServiceManager$1;
    }
.end annotation


# static fields
.field public static final LOCATION_HEADER:Ljava/lang/String; = "location"

.field public static final RTSP_PORT:I = 0x22a

.field public static final RTSP_PROTOCOL:Ljava/lang/String; = "rtsp"

.field public static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"


# instance fields
.field private client:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/common/HTTPServiceManager;->client:Lorg/apache/http/client/HttpClient;

    .line 60
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/nativex/common/HTTPServiceManager;->client:Lorg/apache/http/client/HttpClient;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/common/HTTPServiceManager;->client:Lorg/apache/http/client/HttpClient;

    .line 70
    iput-object p1, p0, Lcom/nativex/common/HTTPServiceManager;->client:Lorg/apache/http/client/HttpClient;

    .line 71
    return-void
.end method

.method private static addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .param p0, "httpRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getRedirectLocation(Ljava/lang/String;Lorg/apache/http/client/HttpClient;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "client"    # Lorg/apache/http/client/HttpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v1, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "method":Lorg/apache/http/client/methods/HttpHead;
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpHead;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 214
    invoke-interface {p2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 215
    .local v2, "response":Lorg/apache/http/HttpResponse;
    const-string v3, "location"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 216
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/nativex/common/Request;)Lcom/nativex/common/Response;
    .locals 5
    .param p1, "request"    # Lcom/nativex/common/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v1, Lcom/nativex/common/Response;

    const/16 v2, -0xa

    const-string v3, "Request is null."

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/nativex/common/Response;-><init>(ILjava/lang/String;Ljava/io/InputStream;)V

    .line 107
    :goto_0
    return-object v1

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/nativex/common/Request;->generateResponse()Lcom/nativex/common/Response;

    move-result-object v0

    .line 81
    .local v0, "response":Lcom/nativex/common/Response;
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nativex/common/Response;->setUrl(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 84
    const/16 v1, -0xb

    invoke-virtual {v0, v1}, Lcom/nativex/common/Response;->setStatusCode(I)V

    .line 85
    const-string v1, "Request URL is null."

    invoke-virtual {v0, v1}, Lcom/nativex/common/Response;->setStatus(Ljava/lang/String;)V

    move-object v1, v0

    .line 86
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    :cond_2
    instance-of v1, p1, Lcom/nativex/common/GetImageRequest;

    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {p0, p1}, Lcom/nativex/common/HTTPServiceManager;->httpGetImage(Lcom/nativex/common/Request;)Lcom/nativex/common/Response;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_3
    sget-object v1, Lcom/nativex/common/HTTPServiceManager$1;->$SwitchMap$com$nativex$common$Request$HTTP_ACTION:[I

    invoke-virtual {p1}, Lcom/nativex/common/Request;->getHttpAction()Lcom/nativex/common/Request$HTTP_ACTION;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/common/Request$HTTP_ACTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 105
    :cond_4
    const/16 v1, -0xc

    invoke-virtual {v0, v1}, Lcom/nativex/common/Response;->setStatusCode(I)V

    .line 106
    const-string v1, "Request URL is invalid."

    invoke-virtual {v0, v1}, Lcom/nativex/common/Response;->setStatus(Ljava/lang/String;)V

    move-object v1, v0

    .line 107
    goto :goto_0

    .line 95
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/nativex/common/HTTPServiceManager;->httpGet(Lcom/nativex/common/Request;)Lcom/nativex/common/Response;

    move-result-object v1

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/nativex/common/HTTPServiceManager;->httpPost(Lcom/nativex/common/Request;)Lcom/nativex/common/Response;

    move-result-object v1

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected httpGet(Lcom/nativex/common/Request;)Lcom/nativex/common/Response;
    .locals 11
    .param p1, "request"    # Lcom/nativex/common/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v10, "gzip"

    .line 130
    invoke-virtual {p1}, Lcom/nativex/common/Request;->generateResponse()Lcom/nativex/common/Response;

    move-result-object v7

    .line 131
    .local v7, "response":Lcom/nativex/common/Response;
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nativex/common/Response;->setUrl(Ljava/lang/String;)V

    .line 133
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 134
    .local v3, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/nativex/common/HTTPServiceManager;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 135
    const-string v8, "Accept-Encoding"

    const-string v9, "gzip"

    invoke-virtual {v3, v8, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 138
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nativex/common/HTTPServiceManager;->client:Lorg/apache/http/client/HttpClient;

    .line 142
    :cond_0
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 143
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 144
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    const-string v8, "Content-Encoding"

    invoke-interface {v4, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 145
    .local v1, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v2, :cond_2

    .line 146
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 147
    .local v5, "inStream":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gzip"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5    # "inStream":Ljava/io/InputStream;
    .local v6, "inStream":Ljava/io/InputStream;
    move-object v5, v6

    .line 150
    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v7, v5}, Lcom/nativex/common/Response;->setResponse(Ljava/io/InputStream;)V

    .line 151
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 156
    .end local v5    # "inStream":Ljava/io/InputStream;
    :goto_0
    const-string v8, "Successfully received."

    invoke-virtual {v7, v8}, Lcom/nativex/common/Response;->setStatus(Ljava/lang/String;)V

    .line 157
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nativex/common/Response;->setStatusCode(I)V

    .line 158
    return-object v7

    .line 153
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/nativex/common/Response;->setResponse(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected httpGetImage(Lcom/nativex/common/Request;)Lcom/nativex/common/Response;
    .locals 14
    .param p1, "request"    # Lcom/nativex/common/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v13, "gzip"

    const-string v12, "Successfully received."

    .line 163
    invoke-virtual {p1}, Lcom/nativex/common/Request;->generateResponse()Lcom/nativex/common/Response;

    move-result-object v8

    .line 164
    .local v8, "response":Lcom/nativex/common/Response;
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/nativex/common/Response;->setUrl(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 167
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/nativex/common/HTTPServiceManager;->client:Lorg/apache/http/client/HttpClient;

    .line 171
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 172
    .local v3, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "redirectUrl":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 175
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 176
    .local v9, "statusCode":I
    const/16 v10, 0x12c

    if-ge v9, v10, :cond_2

    .line 178
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 180
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    const-string v10, "Successfully received."

    invoke-virtual {v8, v12}, Lcom/nativex/common/Response;->setStatus(Ljava/lang/String;)V

    .line 181
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/nativex/common/Response;->setStatusCode(I)V

    .line 183
    const-string v10, "Content-Encoding"

    invoke-interface {v4, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 184
    .local v1, "contentEncoding":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 185
    .local v5, "instream":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "gzip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 186
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5    # "instream":Ljava/io/InputStream;
    .local v6, "instream":Ljava/io/InputStream;
    move-object v5, v6

    .line 188
    .end local v6    # "instream":Ljava/io/InputStream;
    .restart local v5    # "instream":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v8, v5}, Lcom/nativex/common/Response;->setResponse(Ljava/io/InputStream;)V

    .line 190
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 206
    .end local v1    # "contentEncoding":Lorg/apache/http/Header;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "instream":Ljava/io/InputStream;
    :goto_1
    return-object v8

    .line 192
    :cond_2
    const/16 v10, 0x190

    if-ge v9, v10, :cond_3

    .line 194
    invoke-direct {p0, v7, v0}, Lcom/nativex/common/HTTPServiceManager;->getRedirectLocation(Ljava/lang/String;Lorg/apache/http/client/HttpClient;)Ljava/lang/String;

    move-result-object v7

    .line 195
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    .end local v3    # "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v3    # "get":Lorg/apache/http/client/methods/HttpGet;
    const-string v10, "Accept-Encoding"

    const-string v11, "gzip"

    invoke-virtual {v3, v10, v13}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/nativex/common/Response;->setResponse(Ljava/io/InputStream;)V

    .line 200
    const-string v10, "Successfully received."

    invoke-virtual {v8, v12}, Lcom/nativex/common/Response;->setStatus(Ljava/lang/String;)V

    .line 201
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/nativex/common/Response;->setStatusCode(I)V

    goto :goto_1
.end method

.method protected httpPost(Lcom/nativex/common/Request;)Lcom/nativex/common/Response;
    .locals 14
    .param p1, "request"    # Lcom/nativex/common/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const-string v13, "gzip"

    const-string v11, "application/json"

    .line 232
    invoke-virtual {p1}, Lcom/nativex/common/Request;->generateResponse()Lcom/nativex/common/Response;

    move-result-object v8

    .line 233
    .local v8, "response":Lcom/nativex/common/Response;
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nativex/common/Response;->setUrl(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getRequest()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 236
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RESTServiceManager.httpPost(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 237
    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Lcom/nativex/common/Response;->setStatusCode(I)V

    .line 238
    const-string v9, "Request body is null."

    invoke-virtual {v8, v9}, Lcom/nativex/common/Response;->setStatus(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v8, v12}, Lcom/nativex/common/Response;->setResponse(Ljava/io/InputStream;)V

    .line 281
    :goto_0
    return-object v8

    .line 243
    :cond_0
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 244
    .local v7, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v9, "Accept"

    const-string v10, "application/json"

    invoke-virtual {v7, v9, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v9, "Content-Type"

    const-string v10, "application/json"

    invoke-virtual {v7, v9, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v9, "Accept-Encoding"

    const-string v10, "gzip"

    invoke-virtual {v7, v9, v13}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :try_start_0
    new-instance v9, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p1}, Lcom/nativex/common/Request;->getRequest()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 260
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/nativex/common/HTTPServiceManager;->client:Lorg/apache/http/client/HttpClient;

    .line 263
    :cond_1
    invoke-virtual {p1}, Lcom/nativex/common/Request;->preExecuteJustBefore()V

    .line 264
    invoke-interface {v0, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 265
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p1}, Lcom/nativex/common/Request;->postExecuteImmediatelyAfter()V

    .line 267
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 269
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    const-string v9, "Content-Encoding"

    invoke-interface {v4, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 270
    .local v1, "contentEncoding":Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 271
    .local v5, "inStream":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 272
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5    # "inStream":Ljava/io/InputStream;
    .local v6, "inStream":Ljava/io/InputStream;
    move-object v5, v6

    .line 275
    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    :cond_2
    invoke-virtual {v8, v5}, Lcom/nativex/common/Response;->setResponse(Ljava/io/InputStream;)V

    .line 276
    const-string v9, "Successfully received."

    invoke-virtual {v8, v9}, Lcom/nativex/common/Response;->setStatus(Ljava/lang/String;)V

    .line 277
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nativex/common/Response;->setStatusCode(I)V

    .line 279
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_0

    .line 250
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v1    # "contentEncoding":Lorg/apache/http/Header;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 251
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "RESTServiceManager.httpPost(): UnsupportedEncodingException -> failed to request entity"

    invoke-static {v9}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 253
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/nativex/common/Response;->setStatusCode(I)V

    .line 254
    const-string v9, "Error converting the request body to UTF-8."

    invoke-virtual {v8, v9}, Lcom/nativex/common/Response;->setStatus(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v8, v12}, Lcom/nativex/common/Response;->setResponse(Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/nativex/common/HTTPServiceManager;->client:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/nativex/common/HTTPServiceManager;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/nativex/common/HTTPServiceManager;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 290
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/common/HTTPServiceManager;->client:Lorg/apache/http/client/HttpClient;

    .line 292
    :cond_1
    return-void
.end method
