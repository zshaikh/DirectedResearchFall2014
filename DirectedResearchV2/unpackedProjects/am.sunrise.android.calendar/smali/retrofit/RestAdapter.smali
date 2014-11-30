.class public Lretrofit/RestAdapter;
.super Ljava/lang/Object;
.source "RestAdapter.java"


# static fields
.field static final IDLE_THREAD_NAME:Ljava/lang/String; = "Retrofit-Idle"

.field static final THREAD_PREFIX:Ljava/lang/String; = "Retrofit-"


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final clientProvider:Lretrofit/client/Client$Provider;

.field final converter:Lretrofit/converter/Converter;

.field final errorHandler:Lretrofit/ErrorHandler;

.field final httpExecutor:Ljava/util/concurrent/Executor;

.field final log:Lretrofit/RestAdapter$Log;

.field volatile logLevel:Lretrofit/RestAdapter$LogLevel;

.field private final profiler:Lretrofit/Profiler;

.field final requestInterceptor:Lretrofit/RequestInterceptor;

.field private final rxSupport:Lretrofit/RestAdapter$RxSupport;

.field final server:Lretrofit/Endpoint;

.field private final serviceMethodInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lretrofit/Endpoint;Lretrofit/client/Client$Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptor;Lretrofit/converter/Converter;Lretrofit/Profiler;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$Log;Lretrofit/RestAdapter$LogLevel;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    .line 171
    iput-object p1, p0, Lretrofit/RestAdapter;->server:Lretrofit/Endpoint;

    .line 172
    iput-object p2, p0, Lretrofit/RestAdapter;->clientProvider:Lretrofit/client/Client$Provider;

    .line 173
    iput-object p3, p0, Lretrofit/RestAdapter;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 174
    sget-boolean v0, Lretrofit/Platform;->HAS_RX_JAVA:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 175
    new-instance v0, Lretrofit/RestAdapter$RxSupport;

    invoke-direct {v0, p3}, Lretrofit/RestAdapter$RxSupport;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lretrofit/RestAdapter;->rxSupport:Lretrofit/RestAdapter$RxSupport;

    .line 179
    :goto_0
    iput-object p4, p0, Lretrofit/RestAdapter;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 180
    iput-object p5, p0, Lretrofit/RestAdapter;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 181
    iput-object p6, p0, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    .line 182
    iput-object p7, p0, Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;

    .line 183
    iput-object p8, p0, Lretrofit/RestAdapter;->errorHandler:Lretrofit/ErrorHandler;

    .line 184
    iput-object p9, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    .line 185
    iput-object p10, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    .line 186
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lretrofit/RestAdapter;->rxSupport:Lretrofit/RestAdapter$RxSupport;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lretrofit/Endpoint;Lretrofit/client/Client$Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptor;Lretrofit/converter/Converter;Lretrofit/Profiler;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$Log;Lretrofit/RestAdapter$LogLevel;Lretrofit/RestAdapter$1;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct/range {p0 .. p10}, Lretrofit/RestAdapter;-><init>(Lretrofit/Endpoint;Lretrofit/client/Client$Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptor;Lretrofit/converter/Converter;Lretrofit/Profiler;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$Log;Lretrofit/RestAdapter$LogLevel;)V

    return-void
.end method

.method static synthetic access$000(Lretrofit/RestAdapter;)Lretrofit/RestAdapter$RxSupport;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lretrofit/RestAdapter;->rxSupport:Lretrofit/RestAdapter$RxSupport;

    return-object v0
.end method

.method static synthetic access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;

    return-object v0
.end method

.method static synthetic access$300(Lretrofit/RestAdapter;)Lretrofit/client/Client$Provider;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lretrofit/RestAdapter;->clientProvider:Lretrofit/client/Client$Provider;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;
    .locals 1

    .prologue
    .line 115
    invoke-static {p0, p1, p2}, Lretrofit/RestAdapter;->getRequestInfo(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lretrofit/RestAdapter;Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lretrofit/RestAdapter;->logAndReplaceResponse(Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method

.method static getMethodInfo(Ljava/util/Map;Ljava/lang/reflect/Method;)Lretrofit/RestMethodInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lretrofit/RestMethodInfo;"
        }
    .end annotation

    .prologue
    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/RestMethodInfo;

    .line 223
    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lretrofit/RestMethodInfo;

    invoke-direct {v0, p1}, Lretrofit/RestMethodInfo;-><init>(Ljava/lang/reflect/Method;)V

    .line 225
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    monitor-exit p0

    return-object v0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getRequestInfo(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;
    .locals 7

    .prologue
    .line 530
    const-wide/16 v4, 0x0

    .line 531
    const/4 v6, 0x0

    .line 533
    invoke-virtual {p2}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v4

    .line 536
    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v6

    .line 539
    :cond_0
    new-instance v0, Lretrofit/Profiler$RequestInformation;

    iget-object v1, p1, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    iget-object v3, p1, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lretrofit/Profiler$RequestInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method private logAndReplaceResponse(Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 482
    iget-object v0, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v1, "<--- HTTP %s %s (%sms)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lretrofit/client/Response;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->HEADERS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v1}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 485
    invoke-virtual {p2}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/client/Header;

    .line 486
    iget-object v2, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    invoke-virtual {v0}, Lretrofit/client/Header;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_0
    const-wide/16 v2, 0x0

    .line 490
    invoke-virtual {p2}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v1

    .line 491
    if-eqz v1, :cond_3

    .line 492
    invoke-interface {v1}, Lretrofit/mime/TypedInput;->length()J

    move-result-wide v2

    .line 494
    iget-object v0, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v0

    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v4}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 495
    invoke-virtual {p2}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v2, ""

    invoke-interface {v0, v2}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 499
    :cond_1
    instance-of v0, v1, Lretrofit/mime/TypedByteArray;

    if-nez v0, :cond_2

    .line 501
    invoke-static {p2}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Response;)Lretrofit/client/Response;

    move-result-object p2

    .line 502
    invoke-virtual {p2}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v1

    :cond_2
    move-object v0, v1

    .line 505
    check-cast v0, Lretrofit/mime/TypedByteArray;

    invoke-virtual {v0}, Lretrofit/mime/TypedByteArray;->getBytes()[B

    move-result-object v0

    .line 506
    array-length v2, v0

    int-to-long v2, v2

    .line 507
    invoke-interface {v1}, Lretrofit/mime/TypedInput;->mimeType()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-static {v1}, Lretrofit/mime/MimeUtil;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    iget-object v4, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v4, v5}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    :cond_3
    move-wide v0, v2

    .line 513
    iget-object v2, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v3, "<--- END HTTP (%s-byte body)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 516
    :cond_4
    return-object p2
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {p1}, Lretrofit/Utils;->validateServiceClass(Ljava/lang/Class;)V

    .line 205
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lretrofit/RestAdapter$RestHandler;

    invoke-virtual {p0, p1}, Lretrofit/RestAdapter;->getMethodInfoCache(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lretrofit/RestAdapter$RestHandler;-><init>(Lretrofit/RestAdapter;Ljava/util/Map;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()Lretrofit/RestAdapter$LogLevel;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    return-object v0
.end method

.method getMethodInfoCache(Ljava/lang/Class;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v1, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 212
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 214
    iget-object v2, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    monitor-exit v1

    return-object v0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method logAndReplaceRequest(Ljava/lang/String;Lretrofit/client/Request;)Lretrofit/client/Request;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 436
    iget-object v0, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v1, "---> %s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v7

    invoke-virtual {p2}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p2}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->HEADERS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v1}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 439
    invoke-virtual {p2}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/client/Header;

    .line 440
    iget-object v2, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    invoke-virtual {v0}, Lretrofit/client/Header;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_0
    const-wide/16 v1, 0x0

    .line 444
    invoke-virtual {p2}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_6

    .line 446
    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v1

    .line 447
    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v3

    .line 449
    if-eqz v3, :cond_1

    .line 450
    iget-object v4, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 452
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_2

    .line 453
    iget-object v4, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 456
    :cond_2
    iget-object v4, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v4}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v4

    sget-object v5, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v5}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v5

    if-lt v4, v5, :cond_6

    .line 457
    invoke-virtual {p2}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 458
    iget-object v1, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v2, ""

    invoke-interface {v1, v2}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 460
    :cond_3
    instance-of v1, v0, Lretrofit/mime/TypedByteArray;

    if-nez v1, :cond_4

    .line 462
    invoke-static {p2}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Request;)Lretrofit/client/Request;

    move-result-object p2

    .line 463
    invoke-virtual {p2}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v0

    .line 466
    :cond_4
    check-cast v0, Lretrofit/mime/TypedByteArray;

    invoke-virtual {v0}, Lretrofit/mime/TypedByteArray;->getBytes()[B

    move-result-object v2

    .line 467
    array-length v0, v2

    int-to-long v0, v0

    .line 468
    invoke-static {v3}, Lretrofit/mime/MimeUtil;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    iget-object v4, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v4, v5}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 473
    :goto_1
    iget-object v2, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v3, "---> END %s (%s-byte body)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 476
    :cond_5
    return-object p2

    :cond_6
    move-wide v0, v1

    goto :goto_1
.end method

.method logException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v1, "---- ERROR %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 523
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 524
    iget-object v1, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v1, "---- END ERROR"

    invoke-interface {v0, v1}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public setLogLevel(Lretrofit/RestAdapter$LogLevel;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Log level may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iput-object p1, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    .line 194
    return-void
.end method
