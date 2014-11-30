.class public Lretrofit/RestAdapter$Builder;
.super Ljava/lang/Object;
.source "RestAdapter.java"


# instance fields
.field private callbackExecutor:Ljava/util/concurrent/Executor;

.field private clientProvider:Lretrofit/client/Client$Provider;

.field private converter:Lretrofit/converter/Converter;

.field private endpoint:Lretrofit/Endpoint;

.field private errorHandler:Lretrofit/ErrorHandler;

.field private httpExecutor:Ljava/util/concurrent/Executor;

.field private log:Lretrofit/RestAdapter$Log;

.field private logLevel:Lretrofit/RestAdapter$LogLevel;

.field private profiler:Lretrofit/Profiler;

.field private requestInterceptor:Lretrofit/RequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    sget-object v0, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->logLevel:Lretrofit/RestAdapter$LogLevel;

    return-void
.end method

.method private ensureSaneDefaults()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->converter:Lretrofit/converter/Converter;

    if-nez v0, :cond_0

    .line 721
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/Platform;->defaultConverter()Lretrofit/converter/Converter;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->converter:Lretrofit/converter/Converter;

    .line 723
    :cond_0
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->clientProvider:Lretrofit/client/Client$Provider;

    if-nez v0, :cond_1

    .line 724
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/Platform;->defaultClient()Lretrofit/client/Client$Provider;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->clientProvider:Lretrofit/client/Client$Provider;

    .line 726
    :cond_1
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->httpExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2

    .line 727
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/Platform;->defaultHttpExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 729
    :cond_2
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_3

    .line 730
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/Platform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 732
    :cond_3
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->errorHandler:Lretrofit/ErrorHandler;

    if-nez v0, :cond_4

    .line 733
    sget-object v0, Lretrofit/ErrorHandler;->DEFAULT:Lretrofit/ErrorHandler;

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->errorHandler:Lretrofit/ErrorHandler;

    .line 735
    :cond_4
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->log:Lretrofit/RestAdapter$Log;

    if-nez v0, :cond_5

    .line 736
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/Platform;->defaultLog()Lretrofit/RestAdapter$Log;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->log:Lretrofit/RestAdapter$Log;

    .line 738
    :cond_5
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->requestInterceptor:Lretrofit/RequestInterceptor;

    if-nez v0, :cond_6

    .line 739
    sget-object v0, Lretrofit/RequestInterceptor;->NONE:Lretrofit/RequestInterceptor;

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 741
    :cond_6
    return-void
.end method


# virtual methods
.method public build()Lretrofit/RestAdapter;
    .locals 12

    .prologue
    .line 711
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->endpoint:Lretrofit/Endpoint;

    if-nez v0, :cond_0

    .line 712
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Endpoint may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    invoke-direct {p0}, Lretrofit/RestAdapter$Builder;->ensureSaneDefaults()V

    .line 715
    new-instance v0, Lretrofit/RestAdapter;

    iget-object v1, p0, Lretrofit/RestAdapter$Builder;->endpoint:Lretrofit/Endpoint;

    iget-object v2, p0, Lretrofit/RestAdapter$Builder;->clientProvider:Lretrofit/client/Client$Provider;

    iget-object v3, p0, Lretrofit/RestAdapter$Builder;->httpExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lretrofit/RestAdapter$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lretrofit/RestAdapter$Builder;->requestInterceptor:Lretrofit/RequestInterceptor;

    iget-object v6, p0, Lretrofit/RestAdapter$Builder;->converter:Lretrofit/converter/Converter;

    iget-object v7, p0, Lretrofit/RestAdapter$Builder;->profiler:Lretrofit/Profiler;

    iget-object v8, p0, Lretrofit/RestAdapter$Builder;->errorHandler:Lretrofit/ErrorHandler;

    iget-object v9, p0, Lretrofit/RestAdapter$Builder;->log:Lretrofit/RestAdapter$Log;

    iget-object v10, p0, Lretrofit/RestAdapter$Builder;->logLevel:Lretrofit/RestAdapter$LogLevel;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lretrofit/RestAdapter;-><init>(Lretrofit/Endpoint;Lretrofit/client/Client$Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptor;Lretrofit/converter/Converter;Lretrofit/Profiler;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$Log;Lretrofit/RestAdapter$LogLevel;Lretrofit/RestAdapter$1;)V

    return-object v0
.end method

.method public setClient(Lretrofit/client/Client$Provider;)Lretrofit/RestAdapter$Builder;
    .locals 2

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 626
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Client provider may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_0
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->clientProvider:Lretrofit/client/Client$Provider;

    .line 629
    return-object p0
.end method

.method public setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;
    .locals 2

    .prologue
    .line 613
    if-nez p1, :cond_0

    .line 614
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Client may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    new-instance v0, Lretrofit/RestAdapter$Builder$1;

    invoke-direct {v0, p0, p1}, Lretrofit/RestAdapter$Builder$1;-><init>(Lretrofit/RestAdapter$Builder;Lretrofit/client/Client;)V

    invoke-virtual {p0, v0}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client$Provider;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setConverter(Lretrofit/converter/Converter;)Lretrofit/RestAdapter$Builder;
    .locals 2

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 664
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Converter may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->converter:Lretrofit/converter/Converter;

    .line 667
    return-object p0
.end method

.method public setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;
    .locals 2

    .prologue
    .line 595
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 596
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Endpoint may not be blank."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1
    invoke-static {p1}, Lretrofit/Endpoints;->newFixedEndpoint(Ljava/lang/String;)Lretrofit/Endpoint;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->endpoint:Lretrofit/Endpoint;

    .line 599
    return-object p0
.end method

.method public setEndpoint(Lretrofit/Endpoint;)Lretrofit/RestAdapter$Builder;
    .locals 2

    .prologue
    .line 604
    if-nez p1, :cond_0

    .line 605
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Endpoint may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->endpoint:Lretrofit/Endpoint;

    .line 608
    return-object p0
.end method

.method public setErrorHandler(Lretrofit/ErrorHandler;)Lretrofit/RestAdapter$Builder;
    .locals 2

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 685
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->errorHandler:Lretrofit/ErrorHandler;

    .line 688
    return-object p0
.end method

.method public setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;
    .locals 2

    .prologue
    .line 641
    if-nez p1, :cond_0

    .line 642
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "HTTP executor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    if-nez p2, :cond_1

    .line 645
    new-instance p2, Lretrofit/Utils$SynchronousExecutor;

    invoke-direct {p2}, Lretrofit/Utils$SynchronousExecutor;-><init>()V

    .line 647
    :cond_1
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 648
    iput-object p2, p0, Lretrofit/RestAdapter$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 649
    return-object p0
.end method

.method public setLog(Lretrofit/RestAdapter$Log;)Lretrofit/RestAdapter$Builder;
    .locals 2

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 694
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Log may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->log:Lretrofit/RestAdapter$Log;

    .line 697
    return-object p0
.end method

.method public setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;
    .locals 2

    .prologue
    .line 702
    if-nez p1, :cond_0

    .line 703
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Log level may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->logLevel:Lretrofit/RestAdapter$LogLevel;

    .line 706
    return-object p0
.end method

.method public setProfiler(Lretrofit/Profiler;)Lretrofit/RestAdapter$Builder;
    .locals 2

    .prologue
    .line 672
    if-nez p1, :cond_0

    .line 673
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Profiler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_0
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->profiler:Lretrofit/Profiler;

    .line 676
    return-object p0
.end method

.method public setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;
    .locals 2

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Request interceptor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_0
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 658
    return-object p0
.end method

.method public setServer(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setServer(Lretrofit/Server;)Lretrofit/RestAdapter$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Lretrofit/Endpoint;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
