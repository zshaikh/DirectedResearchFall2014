.class Lretrofit/RestAdapter$RestHandler;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final methodDetailsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lretrofit/RestAdapter;


# direct methods
.method constructor <init>(Lretrofit/RestAdapter;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    iput-object p1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Lretrofit/RestAdapter$RestHandler;->methodDetailsCache:Ljava/util/Map;

    .line 267
    return-void
.end method

.method static synthetic access$100(Lretrofit/RestAdapter$RestHandler;Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3}, Lretrofit/RestAdapter$RestHandler;->invokeRequest(Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private invokeRequest(Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 327
    invoke-virtual {p2}, Lretrofit/RestMethodInfo;->init()V

    .line 329
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->server:Lretrofit/Endpoint;

    invoke-interface {v0}, Lretrofit/Endpoint;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 332
    :try_start_0
    new-instance v0, Lretrofit/RequestBuilder;

    iget-object v2, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    invoke-direct {v0, v2, p2}, Lretrofit/RequestBuilder;-><init>(Lretrofit/converter/Converter;Lretrofit/RestMethodInfo;)V

    .line 333
    invoke-virtual {v0, v1}, Lretrofit/RequestBuilder;->setApiUrl(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, p3}, Lretrofit/RequestBuilder;->setArguments([Ljava/lang/Object;)V

    .line 336
    invoke-interface {p1, v0}, Lretrofit/RequestInterceptor;->intercept(Lretrofit/RequestInterceptor$RequestFacade;)V

    .line 338
    invoke-virtual {v0}, Lretrofit/RequestBuilder;->build()Lretrofit/client/Request;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 341
    :try_start_1
    iget-boolean v2, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_0

    .line 343
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrofit-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 346
    :cond_0
    iget-object v2, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    iget-object v2, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    const-string v3, "HTTP"

    invoke-virtual {v2, v3, v0}, Lretrofit/RestAdapter;->logAndReplaceRequest(Ljava/lang/String;Lretrofit/client/Request;)Lretrofit/client/Request;

    move-result-object v0

    .line 352
    :cond_1
    iget-object v2, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;
    invoke-static {v2}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 353
    iget-object v2, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;
    invoke-static {v2}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v2

    invoke-interface {v2}, Lretrofit/Profiler;->beforeCall()Ljava/lang/Object;

    move-result-object v5

    .line 356
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 357
    iget-object v4, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->clientProvider:Lretrofit/client/Client$Provider;
    invoke-static {v4}, Lretrofit/RestAdapter;->access$300(Lretrofit/RestAdapter;)Lretrofit/client/Client$Provider;

    move-result-object v4

    invoke-interface {v4}, Lretrofit/client/Client$Provider;->get()Lretrofit/client/Client;

    move-result-object v4

    invoke-interface {v4, v0}, Lretrofit/client/Client;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;

    move-result-object v7

    .line 358
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 360
    invoke-virtual {v7}, Lretrofit/client/Response;->getStatus()I

    move-result v4

    .line 361
    iget-object v8, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;
    invoke-static {v8}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 362
    # invokes: Lretrofit/RestAdapter;->getRequestInfo(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;
    invoke-static {v1, p2, v0}, Lretrofit/RestAdapter;->access$400(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;

    move-result-object v1

    .line 364
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;
    invoke-static {v0}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v0

    invoke-interface/range {v0 .. v5}, Lretrofit/Profiler;->afterCall(Lretrofit/Profiler$RequestInformation;JILjava/lang/Object;)V

    .line 367
    :cond_3
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 369
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # invokes: Lretrofit/RestAdapter;->logAndReplaceResponse(Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;
    invoke-static {v0, v6, v7, v2, v3}, Lretrofit/RestAdapter;->access$500(Lretrofit/RestAdapter;Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;

    move-result-object v0

    move-object v2, v0

    .line 372
    :goto_0
    iget-object v3, p2, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 374
    const/16 v0, 0xc8

    if-lt v4, v0, :cond_e

    const/16 v0, 0x12c

    if-ge v4, v0, :cond_e

    .line 376
    const-class v0, Lretrofit/client/Response;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 378
    invoke-static {v2}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Response;)Lretrofit/client/Response;

    move-result-object v0

    .line 380
    iget-boolean v1, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    .line 427
    iget-boolean v1, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v1, :cond_4

    .line 428
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Retrofit-Idle"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-object v0

    .line 383
    :cond_5
    :try_start_2
    new-instance v1, Lretrofit/ResponseWrapper;

    invoke-direct {v1, v0, v0}, Lretrofit/ResponseWrapper;-><init>(Lretrofit/client/Response;Ljava/lang/Object;)V
    :try_end_2
    .catch Lretrofit/RetrofitError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    iget-boolean v0, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v0, :cond_6

    .line 428
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v2, "Retrofit-Idle"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_6
    move-object v0, v1

    goto :goto_1

    .line 386
    :cond_7
    :try_start_3
    invoke-virtual {v2}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    .line 387
    if-nez v0, :cond_8

    .line 388
    new-instance v0, Lretrofit/ResponseWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lretrofit/ResponseWrapper;-><init>(Lretrofit/client/Response;Ljava/lang/Object;)V
    :try_end_3
    .catch Lretrofit/RetrofitError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 427
    iget-boolean v1, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v1, :cond_4

    .line 428
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Retrofit-Idle"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 391
    :cond_8
    :try_start_4
    new-instance v4, Lretrofit/ExceptionCatchingTypedInput;

    invoke-direct {v4, v0}, Lretrofit/ExceptionCatchingTypedInput;-><init>(Lretrofit/mime/TypedInput;)V
    :try_end_4
    .catch Lretrofit/RetrofitError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 393
    :try_start_5
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    invoke-interface {v0, v4, v3}, Lretrofit/converter/Converter;->fromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    iget-boolean v1, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z
    :try_end_5
    .catch Lretrofit/converter/ConversionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lretrofit/RetrofitError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_9

    .line 427
    iget-boolean v1, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v1, :cond_4

    .line 428
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Retrofit-Idle"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_9
    :try_start_6
    new-instance v1, Lretrofit/ResponseWrapper;

    invoke-direct {v1, v2, v0}, Lretrofit/ResponseWrapper;-><init>(Lretrofit/client/Response;Ljava/lang/Object;)V
    :try_end_6
    .catch Lretrofit/converter/ConversionException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lretrofit/RetrofitError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 427
    iget-boolean v0, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v0, :cond_a

    .line 428
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v2, "Retrofit-Idle"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_a
    move-object v0, v1

    goto :goto_1

    .line 398
    :catch_0
    move-exception v0

    .line 401
    :try_start_7
    invoke-virtual {v4}, Lretrofit/ExceptionCatchingTypedInput;->threwException()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 402
    invoke-virtual {v4}, Lretrofit/ExceptionCatchingTypedInput;->getThrownException()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_7
    .catch Lretrofit/RetrofitError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 414
    :catch_1
    move-exception v0

    .line 415
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 427
    :catchall_0
    move-exception v0

    iget-boolean v1, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v1, :cond_b

    .line 428
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Retrofit-Idle"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_b
    throw v0

    .line 406
    :cond_c
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v2, v1}, Lretrofit/Utils;->replaceResponseBody(Lretrofit/client/Response;Lretrofit/mime/TypedInput;)Lretrofit/client/Response;

    move-result-object v1

    .line 408
    iget-object v2, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    invoke-static {v6, v1, v2, v3, v0}, Lretrofit/RetrofitError;->conversionError(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;Lretrofit/converter/ConversionException;)Lretrofit/RetrofitError;

    move-result-object v0

    throw v0
    :try_end_9
    .catch Lretrofit/RetrofitError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 416
    :catch_2
    move-exception v0

    move-object v1, v6

    .line 417
    :goto_2
    :try_start_a
    iget-object v2, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 418
    iget-object v2, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-virtual {v2, v0, v1}, Lretrofit/RestAdapter;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 420
    :cond_d
    invoke-static {v1, v0}, Lretrofit/RetrofitError;->networkError(Ljava/lang/String;Ljava/io/IOException;)Lretrofit/RetrofitError;

    move-result-object v0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 412
    :cond_e
    :try_start_b
    invoke-static {v2}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Response;)Lretrofit/client/Response;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v1, v1, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    invoke-static {v6, v0, v1, v3}, Lretrofit/RetrofitError;->httpError(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;)Lretrofit/RetrofitError;

    move-result-object v0

    throw v0
    :try_end_b
    .catch Lretrofit/RetrofitError; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 421
    :catch_3
    move-exception v0

    .line 422
    :goto_3
    :try_start_c
    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v1, v1, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v1}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 423
    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-virtual {v1, v0, v6}, Lretrofit/RestAdapter;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 425
    :cond_f
    invoke-static {v6, v0}, Lretrofit/RetrofitError;->unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;

    move-result-object v0

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 421
    :catch_4
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 416
    :catch_5
    move-exception v0

    goto :goto_2

    :cond_10
    move-object v2, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 273
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 274
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 278
    :cond_0
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->methodDetailsCache:Ljava/util/Map;

    invoke-static {v0, p2}, Lretrofit/RestAdapter;->getMethodInfo(Ljava/util/Map;Ljava/lang/reflect/Method;)Lretrofit/RestMethodInfo;

    move-result-object v5

    .line 280
    iget-boolean v0, v5, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-eqz v0, :cond_2

    .line 282
    :try_start_0
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->requestInterceptor:Lretrofit/RequestInterceptor;

    invoke-direct {p0, v0, v5, p3}, Lretrofit/RestAdapter$RestHandler;->invokeRequest(Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v1, v1, Lretrofit/RestAdapter;->errorHandler:Lretrofit/ErrorHandler;

    invoke-interface {v1, v0}, Lretrofit/ErrorHandler;->handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;

    move-result-object v1

    .line 285
    if-nez v1, :cond_1

    .line 286
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error handler returned null for wrapped exception."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 289
    :cond_1
    throw v1

    .line 293
    :cond_2
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->httpExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_4

    .line 294
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asynchronous invocation requires calling setExecutors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_4
    new-instance v4, Lretrofit/RequestInterceptorTape;

    invoke-direct {v4}, Lretrofit/RequestInterceptorTape;-><init>()V

    .line 300
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->requestInterceptor:Lretrofit/RequestInterceptor;

    invoke-interface {v0, v4}, Lretrofit/RequestInterceptor;->intercept(Lretrofit/RequestInterceptor$RequestFacade;)V

    .line 302
    iget-boolean v0, v5, Lretrofit/RestMethodInfo;->isObservable:Z

    if-eqz v0, :cond_5

    .line 303
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->rxSupport:Lretrofit/RestAdapter$RxSupport;
    invoke-static {v0}, Lretrofit/RestAdapter;->access$000(Lretrofit/RestAdapter;)Lretrofit/RestAdapter$RxSupport;

    move-result-object v0

    new-instance v1, Lretrofit/RestAdapter$RestHandler$1;

    invoke-direct {v1, p0, v4, v5, p3}, Lretrofit/RestAdapter$RestHandler$1;-><init>(Lretrofit/RestAdapter$RestHandler;Lretrofit/RequestInterceptorTape;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$RxSupport;->createRequestObservable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    # getter for: Lretrofit/RestAdapter;->rxSupport:Lretrofit/RestAdapter$RxSupport;
    invoke-static {v1}, Lretrofit/RestAdapter;->access$000(Lretrofit/RestAdapter;)Lretrofit/RestAdapter$RxSupport;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/RestAdapter$RxSupport;->getScheduler()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_5
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v2, p3, v0

    check-cast v2, Lretrofit/Callback;

    .line 311
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v7, v0, Lretrofit/RestAdapter;->httpExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lretrofit/RestAdapter$RestHandler$2;

    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v3, v1, Lretrofit/RestAdapter;->callbackExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lretrofit/RestAdapter$RestHandler$2;-><init>(Lretrofit/RestAdapter$RestHandler;Lretrofit/Callback;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptorTape;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 316
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
