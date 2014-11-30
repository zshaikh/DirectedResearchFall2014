.class public Lcom/pocketchange/android/http/AsyncHttpRequestService;
.super Lcom/pocketchange/android/app/PersistentIntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/http/AsyncHttpRequestService$1;,
        Lcom/pocketchange/android/http/AsyncHttpRequestService$b;,
        Lcom/pocketchange/android/http/AsyncHttpRequestService$c;,
        Lcom/pocketchange/android/http/AsyncHttpRequestService$a;,
        Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;
    }
.end annotation


# static fields
.field public static final ACTION_PROCESS_REQUEST_QUEUE:Ljava/lang/String; = "com.pocketchange.android.http.AsyncHttpRequestService$ProcessRequestQueue"

.field public static final ACTION_QUEUE_REQUEST:Ljava/lang/String; = "com.pocketchange.android.http.AsyncHttpRequestService$SendRequest"


# instance fields
.field private volatile a:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

.field private b:Lcom/pocketchange/android/http/AsyncHttpRequestService$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 89
    new-instance v0, Lcom/pocketchange/android/http/AsyncHttpRequestService$c;

    const-string v1, "AsyncHttpRequestService"

    invoke-direct {v0, v1}, Lcom/pocketchange/android/http/AsyncHttpRequestService$c;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pocketchange/android/app/PersistentIntentService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->setStartMode(I)V

    .line 91
    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lorg/apache/http/HttpHost;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 199
    const-string v0, "scheme"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    const-string v1, "hostname"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string v2, "port"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 202
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method static a([Lorg/apache/http/Header;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/http/Header;",
            ">([TT;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 246
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 247
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 248
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 249
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 250
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-object v0
.end method

.method static a(Lorg/apache/http/HttpHost;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 189
    :try_start_0
    const-string v1, "scheme"

    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v1, "hostname"

    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v1, "port"

    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Lorg/apache/http/ProtocolVersion;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 228
    :try_start_0
    const-string v1, "protocol"

    invoke-virtual {p0}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v1, "major"

    invoke-virtual {p0}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string v1, "minor"

    invoke-virtual {p0}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Lorg/apache/http/RequestLine;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 208
    :try_start_0
    const-string v1, "method"

    invoke-interface {p0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v1, "uri"

    invoke-interface {p0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v1, "protocolVersion"

    invoke-interface {p0}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-static {v2}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(Lorg/apache/http/ProtocolVersion;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized a()V
    .locals 4

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(J)V

    .line 136
    invoke-direct {p0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    :try_start_1
    new-instance v0, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;

    iget-object v1, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    invoke-direct {v0, p0, v1}, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;-><init>(Lcom/pocketchange/android/http/AsyncHttpRequestService;Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;)V

    iput-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$a;

    .line 140
    iget-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$a;

    invoke-virtual {v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(J)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    const-string v1, "queueProcessingLastScheduledTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-static {v0}, Lcom/pocketchange/android/content/ContentUtils;->writeSharedPreferences(Landroid/content/SharedPreferences$Editor;)V

    .line 180
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "requestHostJson"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "requestLineJson"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v2, Lorg/json/JSONArray;

    const-string v3, "requestHeadersJson"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v3, "requestBody"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 130
    iget-object v4, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)J

    .line 131
    invoke-direct {p0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->c()V

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/pocketchange/android/http/AsyncHttpRequestService;)V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->shutdownIfIdle()V

    return-void
.end method

.method static a(Lorg/json/JSONArray;)[Lorg/apache/http/Header;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 256
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 257
    new-array v1, v0, [Lorg/apache/http/Header;

    move v2, v7

    .line 258
    :goto_0
    if-ge v2, v0, :cond_1

    .line 259
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 260
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 262
    :cond_1
    return-object v1
.end method

.method static b(Lorg/json/JSONObject;)Lorg/apache/http/RequestLine;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 218
    const-string v0, "method"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v1, "uri"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    const-string v2, "protocolVersion"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 221
    invoke-static {v2}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->c(Lorg/json/JSONObject;)Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    .line 222
    new-instance v3, Lorg/apache/http/message/BasicRequestLine;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v3
.end method

.method private declared-synchronized b()Z
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService;->b:Lcom/pocketchange/android/http/AsyncHttpRequestService$a;

    invoke-virtual {v0}, Lcom/pocketchange/android/http/AsyncHttpRequestService$a;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static c(Lorg/json/JSONObject;)Lorg/apache/http/ProtocolVersion;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 238
    const-string v0, "protocol"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    const-string v1, "major"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 240
    const-string v2, "minor"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 241
    new-instance v3, Lorg/apache/http/ProtocolVersion;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object v3
.end method

.method private c()V
    .locals 3

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/32 v1, 0xdbba0

    invoke-virtual {p0, v0, v1, v2}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(Landroid/content/SharedPreferences;J)V

    .line 149
    return-void
.end method

.method public static createIntentForRequest(Landroid/content/Context;Lorg/apache/http/client/methods/HttpUriRequest;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 266
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/pocketchange/android/http/AsyncHttpRequestService;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    const-string v1, "com.pocketchange.android.http.AsyncHttpRequestService$SendRequest"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 269
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    const-string v1, "requestHostJson"

    invoke-static {v3}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(Lorg/apache/http/HttpHost;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v1, "requestLineJson"

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-static {v3}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(Lorg/apache/http/RequestLine;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    instance-of v1, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_2

    .line 273
    move-object v0, p1

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_2

    .line 275
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v3

    .line 276
    if-eqz v3, :cond_0

    .line 277
    invoke-interface {p1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 279
    :cond_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    .line 280
    if-eqz v3, :cond_1

    .line 281
    invoke-interface {p1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 283
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 285
    :try_start_0
    invoke-interface {v1, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 286
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 287
    const-string v3, "requestBody"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_2
    const-string v1, "requestHeadersJson"

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a([Lorg/apache/http/Header;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    return-object v2

    .line 288
    :catch_0
    move-exception v1

    .line 289
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final d()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 183
    const-string v0, "com.pocketchange.android.http.AsyncHttpRequestExecutor"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/SharedPreferences;J)V
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 152
    const-string v0, "queueProcessingLastScheduledTime"

    invoke-interface {p1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 154
    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    sub-long v4, v0, v2

    cmp-long v4, v4, p2

    if-gtz v4, :cond_0

    sub-long v0, v2, v0

    const-wide/32 v4, 0xea60

    add-long/2addr v4, p2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_0
    add-long/2addr v2, p2

    .line 166
    invoke-direct {p0, v2, v3}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(J)V

    .line 167
    new-instance v4, Landroid/content/Intent;

    const-class v0, Lcom/pocketchange/android/http/AsyncHttpRequestService;

    invoke-direct {v4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const-string v0, "com.pocketchange.android.http.AsyncHttpRequestService$ProcessRequestQueue"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-static {p0}, Lcom/pocketchange/android/content/ContextUtils;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v6, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected handleCommand(Landroid/content/Intent;)V
    .locals 4
    .param p1, "command"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->c()V

    .line 123
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    if-nez v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->c()V

    goto :goto_0

    .line 116
    :cond_1
    const-string v1, "com.pocketchange.android.http.AsyncHttpRequestService$SendRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-direct {p0, p1}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v1, "com.pocketchange.android.http.AsyncHttpRequestService$ProcessRequestQueue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    invoke-direct {p0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a()V

    goto :goto_0

    .line 121
    :cond_3
    const-string v1, "AsyncHttpRequestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received command with unrecognized action ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/pocketchange/android/app/PersistentIntentService;->onCreate()V

    .line 96
    new-instance v0, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    invoke-direct {v0, p0}, Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pocketchange/android/http/AsyncHttpRequestService;->a:Lcom/pocketchange/android/http/AsyncHttpRequestService$RequestManager;

    .line 97
    return-void
.end method

.method protected shutdownEnabled()Z
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/pocketchange/android/http/AsyncHttpRequestService;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
