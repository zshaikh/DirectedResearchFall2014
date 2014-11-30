.class public Lcom/voxel/api/ApiClient;
.super Ljava/lang/Object;
.source "ApiClient.java"

# interfaces
.implements Lcom/voxel/api/ApiKeystore;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/api/ApiClient$2;,
        Lcom/voxel/api/ApiClient$HTTPMethod;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field public static final DEFAULT_CONNECTION_TIMEOUT:I = 0x1388

.field public static final DEFAULT_HOST:Ljava/lang/String; = "voxel.com"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private defaultParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private port:I

.field private secretKey:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private useSSL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/voxel/api/ApiClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/api/ApiClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "voxel.com"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/voxel/api/ApiClient;-><init>(Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "useSSL"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/voxel/api/ApiClient;->host:Ljava/lang/String;

    .line 86
    iput p2, p0, Lcom/voxel/api/ApiClient;->port:I

    .line 87
    iput-boolean p3, p0, Lcom/voxel/api/ApiClient;->useSSL:Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/api/ApiClient;->defaultParams:Ljava/util/Map;

    .line 89
    iget-object v0, p0, Lcom/voxel/api/ApiClient;->defaultParams:Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-direct {p0}, Lcom/voxel/api/ApiClient;->initHttpClient()V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "useSSL"    # Z

    .prologue
    .line 81
    if-eqz p2, :cond_0

    const/16 v0, 0x1bb

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/voxel/api/ApiClient;-><init>(Ljava/lang/String;IZ)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/16 v0, 0x50

    goto :goto_0
.end method

.method private declared-synchronized initHttpClient()V
    .locals 10

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 348
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v7, 0x5

    invoke-direct {v0, v7}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 349
    .local v0, "connPerRoute":Lorg/apache/http/conn/params/ConnPerRouteBean;
    invoke-static {v3, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 350
    const/16 v7, 0x1388

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 352
    const/16 v7, 0x1388

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 353
    const/16 v7, 0x4000

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 354
    const-string v7, "Voxel Android Client"

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 356
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 357
    .local v6, "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v1, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 359
    .local v1, "http":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v6, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 360
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    .line 361
    .local v5, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 362
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v2, v7, v5, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 363
    .local v2, "https":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v6, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 366
    iget-object v7, p0, Lcom/voxel/api/ApiClient;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v7, :cond_0

    .line 367
    iget-object v7, p0, Lcom/voxel/api/ApiClient;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 368
    sget-object v7, Lcom/voxel/api/ApiClient;->TAG:Ljava/lang/String;

    const-string v8, "Shutting down ClientConnectionManager."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    new-instance v7, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v7, v3, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v7, p0, Lcom/voxel/api/ApiClient;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 372
    const/4 v7, 0x1

    invoke-static {v3, v7}, Lorg/apache/http/client/params/HttpClientParams;->setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V

    .line 373
    const/4 v7, 0x1

    invoke-static {v3, v7}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 374
    const/4 v7, 0x0

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 375
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v8, p0, Lcom/voxel/api/ApiClient;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {v7, v8, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v7, p0, Lcom/voxel/api/ApiClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 376
    new-instance v4, Lcom/voxel/api/ApiClient$1;

    invoke-direct {v4, p0}, Lcom/voxel/api/ApiClient$1;-><init>(Lcom/voxel/api/ApiClient;)V

    .line 396
    .local v4, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    iget-object v7, p0, Lcom/voxel/api/ApiClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    .line 347
    .end local v0    # "connPerRoute":Lorg/apache/http/conn/params/ConnPerRouteBean;
    .end local v1    # "http":Lorg/apache/http/conn/scheme/Scheme;
    .end local v2    # "https":Lorg/apache/http/conn/scheme/Scheme;
    .end local v3    # "params":Lorg/apache/http/params/HttpParams;
    .end local v4    # "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    .end local v5    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v6    # "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public callJSONAPI(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/voxel/api/model/ServerResponse;
    .locals 1
    .param p1, "method"    # Lcom/voxel/api/ApiClient$HTTPMethod;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/api/ApiClient$HTTPMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/voxel/api/model/ServerResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/voxel/api/ApiClient;->callJSONAPI(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;Z)Lcom/voxel/api/model/ServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public callJSONAPI(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;Z)Lcom/voxel/api/model/ServerResponse;
    .locals 11
    .param p1, "method"    # Lcom/voxel/api/ApiClient$HTTPMethod;
    .param p2, "path"    # Ljava/lang/String;
    .param p4, "signed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/api/ApiClient$HTTPMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/voxel/api/model/ServerResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/voxel/api/ApiClient;->sendRequest(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;Z)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 264
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 265
    .local v7, "statusCode":I
    const/16 v9, 0x190

    if-lt v7, v9, :cond_0

    .line 266
    new-instance v9, Lcom/voxel/api/model/ServerResponse;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lcom/voxel/api/model/ServerResponse;-><init>(ILorg/json/JSONObject;)V

    .line 290
    :goto_0
    return-object v9

    .line 269
    :cond_0
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 270
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-nez v2, :cond_1

    .line 271
    new-instance v9, Lcom/voxel/api/model/ServerResponse;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lcom/voxel/api/model/ServerResponse;-><init>(ILorg/json/JSONObject;)V

    goto :goto_0

    .line 273
    :cond_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    .local v8, "stringBuffer":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 277
    .local v5, "reader":Ljava/io/BufferedReader;
    const/16 v9, 0x2800

    new-array v0, v9, [C

    .line 279
    .local v0, "buf":[C
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    .local v1, "charsRead":I
    if-ltz v1, :cond_2

    .line 280
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 283
    .end local v0    # "buf":[C
    .end local v1    # "charsRead":I
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v9

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v9

    .restart local v0    # "buf":[C
    .restart local v1    # "charsRead":I
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 287
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 288
    .local v4, "object":Lorg/json/JSONObject;
    new-instance v9, Lcom/voxel/api/model/ServerResponse;

    invoke-direct {v9, v7, v4}, Lcom/voxel/api/model/ServerResponse;-><init>(ILorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 289
    .end local v4    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 290
    .local v3, "ex":Lorg/json/JSONException;
    new-instance v9, Lcom/voxel/api/model/ServerResponse;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lcom/voxel/api/model/ServerResponse;-><init>(ILorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public createSession(Lcom/voxel/sdk/VoxelAppConfig;)Lcom/voxel/api/model/CreateSessionResponse;
    .locals 4
    .param p1, "appConfig"    # Lcom/voxel/sdk/VoxelAppConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->hasCampaignId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "campaign_id"

    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getCampaignId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    const-string v1, "app_id"

    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getEndUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 158
    const-string v1, "end_user_id"

    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getEndUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_2
    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getDatacenters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 160
    const-string v1, "datacenter"

    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getDatacenters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/voxel/api/ApiClient;->getStringFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_3
    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getFormFactor()Lcom/voxel/sdk/VoxelAppConfig$FormFactor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 163
    const-string v1, "form_factor"

    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getFormFactor()Lcom/voxel/sdk/VoxelAppConfig$FormFactor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_4
    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->hasSaveAppData()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    const-string v1, "save_app_data"

    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getSaveAppData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_5
    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->hasRecordTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    const-string v1, "record_touch_event"

    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getRecordTouchEvent()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_6
    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->hasDisplayPlayback()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 169
    const-string v1, "display_playback"

    invoke-virtual {p1}, Lcom/voxel/sdk/VoxelAppConfig;->getDisplayPlayback()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_7
    new-instance v1, Lcom/voxel/api/model/CreateSessionResponse;

    sget-object v2, Lcom/voxel/api/ApiClient$HTTPMethod;->POST:Lcom/voxel/api/ApiClient$HTTPMethod;

    const-string v3, "/app_sessions.json"

    invoke-virtual {p0, v2, v3, v0}, Lcom/voxel/api/ApiClient;->callJSONAPI(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/voxel/api/model/ServerResponse;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/voxel/api/model/CreateSessionResponse;-><init>(Lcom/voxel/api/model/ServerResponse;)V

    return-object v1
.end method

.method public getCheckCapacity([Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/api/model/CheckCapacityResponse;
    .locals 4
    .param p1, "datacenters"    # [Ljava/lang/String;
    .param p2, "formFactor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 198
    const-string v1, "datacenter"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_0
    if-eqz p2, :cond_1

    .line 201
    const-string v1, "form_factor"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_1
    new-instance v1, Lcom/voxel/api/model/CheckCapacityResponse;

    sget-object v2, Lcom/voxel/api/ApiClient$HTTPMethod;->GET:Lcom/voxel/api/ApiClient$HTTPMethod;

    const-string v3, "/api/machines/check_capacity"

    invoke-virtual {p0, v2, v3, v0}, Lcom/voxel/api/ApiClient;->callJSONAPI(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/voxel/api/model/ServerResponse;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/voxel/api/model/CheckCapacityResponse;-><init>(Lcom/voxel/api/model/ServerResponse;)V

    return-object v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/voxel/api/ApiClient;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/voxel/api/ApiClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/voxel/api/ApiClient;->port:I

    return v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/voxel/api/ApiClient;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getStringFromList(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v3, ""

    .line 337
    .local v3, "sep":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 338
    .local v2, "item":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    const-string v3, ","

    .line 341
    goto :goto_0

    .line 342
    .end local v2    # "item":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getTestMachines()Lcom/voxel/api/model/TestMachinesResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/voxel/api/model/TestMachinesResponse;

    sget-object v1, Lcom/voxel/api/ApiClient$HTTPMethod;->GET:Lcom/voxel/api/ApiClient$HTTPMethod;

    const-string v2, "/api/machines/test_machines"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/voxel/api/ApiClient;->callJSONAPI(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/voxel/api/model/ServerResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/api/model/TestMachinesResponse;-><init>(Lcom/voxel/api/model/ServerResponse;)V

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/voxel/api/ApiClient;->token:Ljava/lang/String;

    return-object v0
.end method

.method protected getURLBase()Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    iget-boolean v1, p0, Lcom/voxel/api/ApiClient;->useSSL:Z

    if-eqz v1, :cond_0

    const-string v1, "https"

    move-object v0, v1

    .line 331
    .local v0, "scheme":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/api/ApiClient;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voxel/api/ApiClient;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 330
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_0
    const-string v1, "http"

    move-object v0, v1

    goto :goto_0
.end method

.method public isUseSSL()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/voxel/api/ApiClient;->useSSL:Z

    return v0
.end method

.method public logSessionEvent(JLjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "sessionId"    # J
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p4, :cond_0

    .line 252
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "session_token"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v2, "data"

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v2, "/app_sessions/%d/log_event"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/voxel/api/ApiClient$HTTPMethod;->PUT:Lcom/voxel/api/ApiClient$HTTPMethod;

    invoke-virtual {p0, v2, v1, v0}, Lcom/voxel/api/ApiClient;->callJSONAPI(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/voxel/api/model/ServerResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/util/Map;)Lcom/voxel/api/model/ServerResponse;
    .locals 3
    .param p1, "machineId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/voxel/api/model/ServerResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "machine_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "machine"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/voxel/api/ApiClient$HTTPMethod;->POST:Lcom/voxel/api/ApiClient$HTTPMethod;

    const-string v2, "/api/machines/register"

    invoke-virtual {p0, v1, v2, v0}, Lcom/voxel/api/ApiClient;->callJSONAPI(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/voxel/api/model/ServerResponse;

    move-result-object v1

    return-object v1
.end method

.method public reportEvent(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    sget-object v2, Lcom/voxel/api/ApiClient$HTTPMethod;->POST:Lcom/voxel/api/ApiClient$HTTPMethod;

    const-string v3, "/ad_server/report"

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, p1, v4}, Lcom/voxel/api/ApiClient;->sendRequest(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 230
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 231
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 234
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/voxel/api/ApiClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestAd()Lcom/voxel/api/model/CampaignInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/voxel/api/ApiClient;->requestAd(Ljava/util/Map;)Lcom/voxel/api/model/CampaignInfo;

    move-result-object v0

    return-object v0
.end method

.method public requestAd(Ljava/util/Map;)Lcom/voxel/api/model/CampaignInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/voxel/api/model/CampaignInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 215
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 216
    .restart local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v1, "store"

    invoke-static {}, Lcom/voxel/sdk/Config;->getStore()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lcom/voxel/api/ApiClient$HTTPMethod;->GET:Lcom/voxel/api/ApiClient$HTTPMethod;

    const-string v2, "/ad_server/request_ad"

    invoke-virtual {p0, v1, v2, p1}, Lcom/voxel/api/ApiClient;->callJSONAPI(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/voxel/api/model/ServerResponse;

    move-result-object v0

    .line 219
    .local v0, "response":Lcom/voxel/api/model/ServerResponse;
    invoke-virtual {v0}, Lcom/voxel/api/model/ServerResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    new-instance v1, Lcom/voxel/api/model/CampaignInfo;

    invoke-virtual {v0}, Lcom/voxel/api/model/ServerResponse;->getData()Lcom/voxel/util/JSONWrapper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/voxel/api/model/CampaignInfo;-><init>(Lcom/voxel/util/JSONWrapper;)V

    .line 223
    :goto_0
    return-object v1

    .line 221
    :cond_1
    sget-object v1, Lcom/voxel/api/ApiClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve ad, status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/voxel/api/model/ServerResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendRequest(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;Z)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "method"    # Lcom/voxel/api/ApiClient$HTTPMethod;
    .param p2, "path"    # Ljava/lang/String;
    .param p4, "signed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/api/ApiClient$HTTPMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/voxel/api/ApiClient;->defaultParams:Ljava/util/Map;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 298
    .local v0, "paramsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_0

    .line 299
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/api/ApiClient;->getURLBase()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2, v0}, Lcom/voxel/api/AuthHelper;->getSignedUrl(Lcom/voxel/api/ApiKeystore;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "url":Ljava/lang/String;
    sget-object v3, Lcom/voxel/api/ApiClient$2;->$SwitchMap$com$voxel$api$ApiClient$HTTPMethod:[I

    invoke-virtual {p1}, Lcom/voxel/api/ApiClient$HTTPMethod;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 317
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    :pswitch_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 319
    .local v1, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_0
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 321
    iget-object v3, p0, Lcom/voxel/api/ApiClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3

    .line 308
    .end local v1    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :pswitch_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpPut;-><init>()V

    .line 309
    .restart local v1    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_0

    .line 311
    .end local v1    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :pswitch_2
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 312
    .restart local v1    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_0

    .line 314
    .end local v1    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :pswitch_3
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>()V

    .line 315
    .restart local v1    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setBundleId(Ljava/lang/String;)V
    .locals 2
    .param p1, "bundleId"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/voxel/api/ApiClient;->defaultParams:Ljava/util/Map;

    const-string v1, "client_bundle_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/voxel/api/ApiClient;->defaultParams:Ljava/util/Map;

    const-string v1, "device_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public setFormFactor(I)V
    .locals 3
    .param p1, "formFactor"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/voxel/api/ApiClient;->defaultParams:Ljava/util/Map;

    const-string v1, "form_factor"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/voxel/api/ApiClient;->secretKey:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/voxel/api/ApiClient;->token:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/voxel/api/ApiClient;->defaultParams:Ljava/util/Map;

    const-string v1, "version"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public updateSessionMetrics(JLjava/lang/String;ZLjava/util/Map;)V
    .locals 4
    .param p1, "sessionId"    # J
    .param p3, "sessionToken"    # Ljava/lang/String;
    .param p4, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    .local p5, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 178
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "session_token"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "success"

    if-eqz p4, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/voxel/api/ApiClient$HTTPMethod;->PUT:Lcom/voxel/api/ApiClient$HTTPMethod;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/app_sessions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/update_metric"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/voxel/api/ApiClient;->callJSONAPI(Lcom/voxel/api/ApiClient$HTTPMethod;Ljava/lang/String;Ljava/util/Map;)Lcom/voxel/api/model/ServerResponse;

    .line 183
    return-void

    .line 179
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method
