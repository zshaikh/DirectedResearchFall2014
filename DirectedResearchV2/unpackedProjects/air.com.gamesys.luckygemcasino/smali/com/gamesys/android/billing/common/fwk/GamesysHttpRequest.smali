.class public Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;
.super Ljava/lang/Object;
.source "GamesysHttpRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private classicContentHandler:Lcom/gamesys/android/billing/common/fwk/GamesysContentHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static performRequest(Lcom/gamesys/android/billing/common/fwk/ClientUri;)Ljava/lang/Object;
    .locals 15
    .param p0, "uri"    # Lcom/gamesys/android/billing/common/fwk/ClientUri;

    .prologue
    const/16 v12, 0x2710

    .line 139
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 140
    .local v4, "myParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v4, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 141
    invoke-static {v4, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 142
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 143
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v6, 0x0

    .line 147
    .local v6, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :try_start_0
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->isPost()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 148
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->generateUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .local v7, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    const/4 v9, 0x0

    .line 150
    .local v9, "se":Lorg/apache/http/entity/StringEntity;
    const/4 v5, 0x0

    .line 153
    .local v5, "params":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->getPostJson()Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 154
    const-string v12, "Content-Type"

    const-string v13, "application/json"

    invoke-virtual {v7, v12, v13}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v12, "Accept"

    const-string v13, "application/json"

    invoke-virtual {v7, v12, v13}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->getPostJson()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    new-instance v9, Lorg/apache/http/entity/StringEntity;

    .end local v9    # "se":Lorg/apache/http/entity/StringEntity;
    invoke-direct {v9, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v9    # "se":Lorg/apache/http/entity/StringEntity;
    new-instance v12, Lorg/apache/http/message/BasicHeader;

    const-string v13, "Content-Type"

    const-string v14, "application/json"

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 168
    :goto_0
    move-object v0, v7

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v12, v0

    invoke-virtual {v12, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 169
    sget-object v12, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[POST] "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->generateUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " => params:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v6, v7

    .line 184
    .end local v5    # "params":Ljava/lang/String;
    .end local v7    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v9    # "se":Lorg/apache/http/entity/StringEntity;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_1
    :try_start_2
    invoke-virtual {v6, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 185
    invoke-interface {v3, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 186
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, "temp":Ljava/lang/String;
    sget-object v12, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->TAG:Ljava/lang/String;

    invoke-static {v12, v10}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v10

    .line 196
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "temp":Ljava/lang/String;
    :goto_2
    return-object v1

    .line 162
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v5    # "params":Ljava/lang/String;
    .restart local v7    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v9    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_0
    :try_start_3
    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded"

    invoke-virtual {v7, v12, v13}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->generateParameters()Ljava/lang/String;

    move-result-object v5

    .line 164
    new-instance v9, Lorg/apache/http/entity/StringEntity;

    .end local v9    # "se":Lorg/apache/http/entity/StringEntity;
    invoke-direct {v9, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v9    # "se":Lorg/apache/http/entity/StringEntity;
    new-instance v12, Lorg/apache/http/message/BasicHeader;

    const-string v13, "Content-Type"

    const-string v14, "application/x-www-form-urlencoded"

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Lorg/apache/http/Header;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 191
    .end local v5    # "params":Ljava/lang/String;
    .end local v9    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v1

    move-object v6, v7

    .line 192
    .end local v7    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_3
    sget-object v12, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unable to perform the request for "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->generateUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 173
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_1
    :try_start_4
    const-string v11, ""

    .line 174
    .local v11, "urlParams":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->useParamsForGET()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->generateParameters()Ljava/lang/String;

    move-result-object v11

    .line 177
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->generateUri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "fullUrl":Ljava/lang/String;
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 179
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v7    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :try_start_5
    const-string v12, "Accept"

    const-string v13, "application/json"

    invoke-virtual {v7, v12, v13}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v12, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[GET ] "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v6, v7

    .end local v7    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_1

    .line 194
    .end local v2    # "fullUrl":Ljava/lang/String;
    .end local v11    # "urlParams":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    sget-object v12, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unable to perform the request for "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->generateUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v7    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_2
    move-exception v1

    move-object v6, v7

    .end local v7    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_4

    .line 191
    :catch_3
    move-exception v1

    goto/16 :goto_3
.end method


# virtual methods
.method public HttpRequest(Lcom/gamesys/android/billing/common/fwk/ClientUri;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 17
    .param p1, "uri"    # Lcom/gamesys/android/billing/common/fwk/ClientUri;
    .param p2, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, "data":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 55
    .local v1, "connection":Ljava/net/URLConnection;
    if-nez p2, :cond_1

    .line 56
    const/4 v2, 0x0

    .line 129
    .end local v2    # "data":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 62
    .restart local v2    # "data":Ljava/lang/Object;
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->generateUri()Ljava/lang/String;

    move-result-object v12

    .line 63
    .local v12, "strUri":Ljava/lang/String;
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 64
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 65
    const-string v14, "Content-Type"

    const-string v15, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->getUserAgent()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 69
    const-string v14, "User-Agent"

    invoke-virtual/range {p1 .. p1}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->getUserAgent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_1
    const-string v14, "Connection"

    const-string v15, "Keep-Alive"

    invoke-virtual {v1, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    move-object v6, v12

    .line 77
    .local v6, "logMessage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->isPost()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 78
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 79
    instance-of v14, v1, Ljava/net/HttpURLConnection;

    if-eqz v14, :cond_2

    .line 80
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v14, v0

    const-string v15, "POST"

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->generateParameters()Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "postParameters":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 84
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "[POST] : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 85
    const/4 v8, 0x0

    .line 86
    .local v8, "output":Ljava/io/OutputStream;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-lez v14, :cond_3

    .line 88
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 89
    const-string v14, "UTF-8"

    invoke-virtual {v9, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    if-eqz v8, :cond_3

    .line 93
    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .end local v8    # "output":Ljava/io/OutputStream;
    .end local v9    # "postParameters":Ljava/lang/String;
    :cond_3
    :goto_2
    :try_start_3
    sget-object v14, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->TAG:Ljava/lang/String;

    invoke-static {v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->classicContentHandler:Lcom/gamesys/android/billing/common/fwk/GamesysContentHandler;

    if-nez v14, :cond_4

    .line 107
    new-instance v14, Lcom/gamesys/android/billing/common/fwk/GamesysContentHandler;

    invoke-direct {v14}, Lcom/gamesys/android/billing/common/fwk/GamesysContentHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->classicContentHandler:Lcom/gamesys/android/billing/common/fwk/GamesysContentHandler;

    .line 110
    :cond_4
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 111
    .local v4, "httpCon":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 113
    .local v10, "responseCode":I
    const/16 v14, 0x12c

    if-le v10, v14, :cond_9

    .line 114
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "responseMsg":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Failed with code "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " and message "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "msd":Ljava/lang/String;
    new-instance v14, Ljava/io/IOException;

    invoke-direct {v14, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    .end local v4    # "httpCon":Ljava/net/HttpURLConnection;
    .end local v6    # "logMessage":Ljava/lang/String;
    .end local v7    # "msd":Ljava/lang/String;
    .end local v10    # "responseCode":I
    .end local v11    # "responseMsg":Ljava/lang/String;
    .end local v12    # "strUri":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 122
    .local v5, "ioe":Ljava/lang/Exception;
    :try_start_4
    sget-object v14, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Request "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/gamesys/android/billing/common/fwk/ClientUri;->generateUri()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " call failed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    if-eqz v1, :cond_0

    instance-of v14, v1, Ljava/net/HttpURLConnection;

    if-eqz v14, :cond_0

    move-object v3, v1

    .line 125
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 126
    .local v3, "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 71
    .end local v3    # "http":Ljava/net/HttpURLConnection;
    .end local v5    # "ioe":Ljava/lang/Exception;
    .restart local v12    # "strUri":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_5
    :try_start_5
    sget-object v14, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "User-Agent null for :"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 123
    .end local v12    # "strUri":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v14

    .line 124
    if-eqz v1, :cond_6

    instance-of v15, v1, Ljava/net/HttpURLConnection;

    if-eqz v15, :cond_6

    move-object v3, v1

    .line 125
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 126
    .restart local v3    # "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 128
    .end local v3    # "http":Ljava/net/HttpURLConnection;
    :cond_6
    throw v14

    .line 90
    .restart local v6    # "logMessage":Ljava/lang/String;
    .restart local v8    # "output":Ljava/io/OutputStream;
    .restart local v9    # "postParameters":Ljava/lang/String;
    .restart local v12    # "strUri":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v14

    .line 91
    if-eqz v8, :cond_7

    .line 93
    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 97
    :cond_7
    :goto_3
    :try_start_7
    throw v14

    .line 100
    .end local v8    # "output":Ljava/io/OutputStream;
    .end local v9    # "postParameters":Ljava/lang/String;
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "[GET ] : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 119
    .restart local v4    # "httpCon":Ljava/net/HttpURLConnection;
    .restart local v10    # "responseCode":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->classicContentHandler:Lcom/gamesys/android/billing/common/fwk/GamesysContentHandler;

    invoke-virtual {v14, v1}, Lcom/gamesys/android/billing/common/fwk/GamesysContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    .line 124
    if-eqz v1, :cond_0

    instance-of v14, v1, Ljava/net/HttpURLConnection;

    if-eqz v14, :cond_0

    move-object v3, v1

    .line 125
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 126
    .restart local v3    # "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 94
    .end local v3    # "http":Ljava/net/HttpURLConnection;
    .end local v4    # "httpCon":Ljava/net/HttpURLConnection;
    .end local v10    # "responseCode":I
    .restart local v8    # "output":Ljava/io/OutputStream;
    .restart local v9    # "postParameters":Ljava/lang/String;
    :catch_1
    move-exception v15

    goto :goto_3

    :catch_2
    move-exception v14

    goto/16 :goto_2
.end method
