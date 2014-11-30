.class public final Lcom/facebook/orca/common/http/OrcaHttpClientEclair;
.super Ljava/lang/Object;
.source "OrcaHttpClientEclair.java"

# interfaces
.implements Lcom/facebook/orca/common/http/OrcaHttpClient;


# static fields
.field public static a:J

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private final d:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final e:Lcom/facebook/orca/common/http/OrcaCookieStore;

.field private f:Ljava/lang/RuntimeException;

.field private volatile g:Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    const-wide/16 v0, 0x100

    sput-wide v0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->a:J

    .line 98
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->b:Ljava/lang/ThreadLocal;

    .line 104
    new-instance v0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$1;

    invoke-direct {v0}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->c:Lorg/apache/http/HttpRequestInterceptor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;Lcom/facebook/orca/common/http/OrcaCookieStore;)V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->f:Ljava/lang/RuntimeException;

    .line 163
    new-instance v0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$2;-><init>(Lcom/facebook/orca/common/http/OrcaHttpClientEclair;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;Lcom/facebook/orca/common/http/OrcaCookieStore;)V

    iput-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 195
    iput-object p3, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->e:Lcom/facebook/orca/common/http/OrcaCookieStore;

    .line 196
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/http/OrcaHttpClientEclair;)Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->g:Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;Lcom/facebook/orca/common/http/OrcaCookieStore;)Lcom/facebook/orca/common/http/OrcaHttpClientEclair;
    .locals 6

    .prologue
    const/16 v1, 0x4e20

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 127
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 130
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 131
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 132
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 136
    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 139
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 141
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 143
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, p1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 146
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 151
    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;

    invoke-direct {v1, v2, v0, p2}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;Lcom/facebook/orca/common/http/OrcaCookieStore;)V

    return-object v1
.end method

.method static synthetic a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->b(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    const-string v1, "curl "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 436
    if-nez p1, :cond_1

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Authorization"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cookie"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 435
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 441
    :cond_1
    const-string v6, "--header \""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v5, "\" "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 446
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    .line 451
    instance-of v1, p0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v1, :cond_5

    .line 452
    move-object v0, p0

    check-cast v0, Lorg/apache/http/impl/client/RequestWrapper;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v1

    .line 453
    instance-of v4, v1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v4, :cond_5

    .line 454
    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 458
    :goto_2
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    instance-of v1, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_3

    .line 463
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 465
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 466
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 467
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    .line 468
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 469
    invoke-interface {v1, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 470
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    const-string v3, " --data-ascii \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_3
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 477
    :cond_4
    const-string v1, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    move-object v1, v3

    goto :goto_2
.end method

.method static synthetic c()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->b:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic d()Lorg/apache/http/HttpRequestInterceptor;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->c:Lorg/apache/http/HttpRequestInterceptor;

    return-object v0
.end method


# virtual methods
.method public a()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->e:Lcom/facebook/orca/common/http/OrcaCookieStore;

    return-object v0
.end method

.method public b()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->f:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "AndroidHttpClient"

    const-string v1, "Leak found"

    iget-object v2, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->f:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->f:Ljava/lang/RuntimeException;

    .line 205
    :cond_0
    return-void
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
