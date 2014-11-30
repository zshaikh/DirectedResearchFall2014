.class final Lcom/amazon/inapp/purchasing/ImplementationFactory;
.super Ljava/lang/Object;


# static fields
.field private static volatile IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;

.field private static volatile IS_SANDBOX_MODE:Z

.field private static volatile IS_SANDBOX_MODE_CHECKED:Z

.field private static volatile LOG_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/LogHandler;

.field private static volatile REQUEST_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/RequestHandler;

.field private static volatile RESPONSE_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/ResponseHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImplementationRegistry()Lcom/amazon/inapp/purchasing/ImplementationRegistry;
    .locals 2

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;

    if-nez v0, :cond_1

    const-class v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->isSandboxMode()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;

    invoke-direct {v1}, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;-><init>()V

    sput-object v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;

    return-object v0

    :cond_2
    :try_start_1
    new-instance v1, Lcom/amazon/inapp/purchasing/KiwiImplementationRegistry;

    invoke-direct {v1}, Lcom/amazon/inapp/purchasing/KiwiImplementationRegistry;-><init>()V

    sput-object v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IMPLEMENTATION_REGISTRY:Lcom/amazon/inapp/purchasing/ImplementationRegistry;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_1

    const-class v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getImplementationRegistry()Lcom/amazon/inapp/purchasing/ImplementationRegistry;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/amazon/inapp/purchasing/ImplementationRegistry;->getImplementation(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_1
    monitor-exit v0

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1
.end method

.method static getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;
    .locals 2

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->LOG_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/LogHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->LOG_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/LogHandler;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/amazon/inapp/purchasing/LogHandler;

    sget-object v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->LOG_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/LogHandler;

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/LogHandler;

    goto :goto_0
.end method

.method static getRequestHandler()Lcom/amazon/inapp/purchasing/RequestHandler;
    .locals 2

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->REQUEST_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/RequestHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->REQUEST_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/RequestHandler;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/amazon/inapp/purchasing/RequestHandler;

    sget-object v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->REQUEST_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/RequestHandler;

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/RequestHandler;

    goto :goto_0
.end method

.method static getResponseHandler()Lcom/amazon/inapp/purchasing/ResponseHandler;
    .locals 2

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->RESPONSE_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/ResponseHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->RESPONSE_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/ResponseHandler;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/amazon/inapp/purchasing/ResponseHandler;

    sget-object v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->RESPONSE_HANDLER_INSTANCE:Lcom/amazon/inapp/purchasing/ResponseHandler;

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/ResponseHandler;

    goto :goto_0
.end method

.method static isSandboxMode()Z
    .locals 3

    const-class v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;

    sget-boolean v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE_CHECKED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE:Z

    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;

    monitor-enter v1

    :try_start_0
    sget-boolean v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE_CHECKED:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    const-class v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.amazon.android.Kiwi"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE_CHECKED:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE:Z

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    :try_start_3
    sput-boolean v1, Lcom/amazon/inapp/purchasing/ImplementationFactory;->IS_SANDBOX_MODE:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
