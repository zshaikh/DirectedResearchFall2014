.class Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;
.super Ljava/lang/Object;
.source "SimpleNetworkDispatcher.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Dispatcher;


# static fields
.field private static final USER_AGENT_TEMPLATE:Ljava/lang/String; = "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final httpClientFactory:Lcom/google/analytics/tracking/android/HttpClientFactory;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsStore;Lcom/google/analytics/tracking/android/HttpClientFactory;Landroid/content/Context;)V
    .locals 0
    .param p1, "store"    # Lcom/google/analytics/tracking/android/AnalyticsStore;
    .param p2, "httpClientFactory"    # Lcom/google/analytics/tracking/android/HttpClientFactory;
    .param p3, "ctx"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p2, p3}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;-><init>(Lcom/google/analytics/tracking/android/HttpClientFactory;Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/HttpClientFactory;Landroid/content/Context;)V
    .locals 7
    .param p1, "httpClientFactory"    # Lcom/google/analytics/tracking/android/HttpClientFactory;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    .line 54
    const-string v1, "GoogleAnalytics"

    const-string v2, "2.0"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->userAgent:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->httpClientFactory:Lcom/google/analytics/tracking/android/HttpClientFactory;

    .line 63
    return-void
.end method

.method private buildRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;
    .locals 6
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const-string v3, "Empty hit, discarding."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    move-object v3, v5

    .line 174
    :goto_0
    return-object v3

    .line 160
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "full":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x7f4

    if-ge v3, v4, :cond_1

    .line 162
    new-instance v2, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v3, "GET"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v2, "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    :goto_1
    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->userAgent:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 174
    goto :goto_0

    .line 164
    .end local v2    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_1
    new-instance v2, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v3, "POST"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .restart local v2    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 169
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "Encoding error, discarding hit"

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    move-object v3, v5

    .line 170
    goto :goto_0
.end method

.method private getUrl(Lcom/google/analytics/tracking/android/Hit;)Ljava/net/URL;
    .locals 5
    .param p1, "hit"    # Lcom/google/analytics/tracking/android/Hit;

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Hit;->getHitUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v4

    .line 235
    :goto_0
    return-object v2

    .line 230
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Hit;->getHitUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 233
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_1
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://www.google-analytics.com/collect"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 234
    :catch_1
    move-exception v2

    move-object v1, v2

    .local v1, "e1":Ljava/net/MalformedURLException;
    move-object v2, v4

    .line 235
    goto :goto_0
.end method

.method private logDebugInformation(ZLorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 12
    .param p1, "debug"    # Z
    .param p2, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;

    .prologue
    const-string v11, "\n"

    .line 184
    if-eqz p1, :cond_2

    .line 185
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v5, "httpHeaders":Ljava/lang/StringBuffer;
    invoke-interface {p2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v4, v0, v6

    .line 187
    .local v4, "header":Lorg/apache/http/Header;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 189
    .end local v4    # "header":Lorg/apache/http/Header;
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-interface {p2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 192
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 193
    .local v7, "is":Ljava/io/InputStream;
    if-eqz v7, :cond_1

    .line 194
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 195
    .local v1, "avail":I
    if-lez v1, :cond_1

    .line 196
    new-array v2, v1, [B

    .line 197
    .local v2, "b":[B
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    .line 198
    const-string v9, "POST:\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "avail":I
    .end local v2    # "b":[B
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)I

    .line 208
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v5    # "httpHeaders":Ljava/lang/StringBuffer;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    :cond_2
    return-void

    .line 202
    .restart local v0    # "arr$":[Lorg/apache/http/Header;
    .restart local v5    # "httpHeaders":Ljava/lang/StringBuffer;
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 203
    .local v3, "e":Ljava/io/IOException;
    const-string v9, "Error Writing hit to log..."

    invoke-static {v9}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method createUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "product"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "release"    # Ljava/lang/String;
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "model"    # Ljava/lang/String;
    .param p6, "id"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dispatchHits(Ljava/util/List;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/tracking/android/Hit;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "hits":Ljava/util/List;, "Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;"
    const/4 v7, 0x0

    .line 85
    .local v7, "hitsDispatched":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x28

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 86
    .local v9, "maxHits":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_6

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->httpClientFactory:Lcom/google/analytics/tracking/android/HttpClientFactory;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/google/analytics/tracking/android/HttpClientFactory;->newInstance()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 88
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/analytics/tracking/android/Hit;

    .line 89
    .local v6, "hit":Lcom/google/analytics/tracking/android/Hit;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->getUrl(Lcom/google/analytics/tracking/android/Hit;)Ljava/net/URL;

    move-result-object v15

    .line 91
    .local v15, "url":Ljava/net/URL;
    if-nez v15, :cond_1

    .line 92
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 93
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No destination: discarding hit: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 97
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 86
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const-string v16, "No destination: discarding hit."

    invoke-static/range {v16 .. v16}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_1

    .line 101
    :cond_1
    new-instance v14, Lorg/apache/http/HttpHost;

    invoke-virtual {v15}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v15}, Ljava/net/URL;->getPort()I

    move-result v17

    invoke-virtual {v15}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    .local v14, "targetHost":Lorg/apache/http/HttpHost;
    invoke-virtual {v15}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, "path":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    const-string v16, ""

    move-object/from16 v10, v16

    .line 114
    .local v10, "params":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;

    move-result-object v12

    .line 115
    .local v12, "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    if-nez v12, :cond_3

    .line 116
    add-int/lit8 v7, v7, 0x1

    .line 117
    goto :goto_2

    .line 111
    .end local v10    # "params":Ljava/lang/String;
    .end local v12    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v0, v6

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/google/analytics/tracking/android/HitBuilder;->postProcessHit(Lcom/google/analytics/tracking/android/Hit;J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, v16

    goto :goto_3

    .line 119
    .restart local v10    # "params":Ljava/lang/String;
    .restart local v12    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_3
    const-string v16, "Host"

    invoke-virtual {v14}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/google/analytics/tracking/android/Log;->isDebugEnabled()Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->logDebugInformation(ZLorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 121
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x2000

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 122
    const-string v16, "Hit too long (> 8192 bytes)--not sent"

    invoke-static/range {v16 .. v16}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 141
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 126
    :cond_5
    :try_start_0
    invoke-interface {v4, v14, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 127
    .local v13, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 128
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Bad response: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v6    # "hit":Lcom/google/analytics/tracking/android/Hit;
    .end local v10    # "params":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "targetHost":Lorg/apache/http/HttpHost;
    .end local v15    # "url":Ljava/net/URL;
    :cond_6
    :goto_5
    return v7

    .line 131
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "hit":Lcom/google/analytics/tracking/android/Hit;
    .restart local v10    # "params":Ljava/lang/String;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "request":Lorg/apache/http/HttpEntityEnclosingRequest;
    .restart local v14    # "targetHost":Lorg/apache/http/HttpHost;
    .restart local v15    # "url":Ljava/net/URL;
    :catch_0
    move-exception v16

    move-object/from16 v5, v16

    .line 134
    .local v5, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v16, "ClientProtocolException sending hit; discarding hit..."

    invoke-static/range {v16 .. v16}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_4

    .line 135
    .end local v5    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v16

    move-object/from16 v5, v16

    .line 136
    .local v5, "e":Ljava/io/IOException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception sending hit: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 137
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_5
.end method

.method public okToDispatch()Z
    .locals 4

    .prologue
    .line 67
    iget-object v2, p0, Lcom/google/analytics/tracking/android/SimpleNetworkDispatcher;->ctx:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 69
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 74
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    :cond_0
    const-string v2, "...no network connectivity"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->vDebug(Ljava/lang/String;)I

    .line 76
    const/4 v2, 0x0

    .line 78
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
