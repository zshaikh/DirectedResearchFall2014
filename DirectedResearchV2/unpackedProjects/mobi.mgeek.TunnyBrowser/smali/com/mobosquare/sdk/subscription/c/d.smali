.class public Lcom/mobosquare/sdk/subscription/c/d;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "HttpClient.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/http/HttpRequestInterceptor;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 60
    sput-object v0, Lcom/mobosquare/sdk/subscription/c/d;->a:Ljava/lang/ThreadLocal;

    .line 65
    new-instance v0, Lcom/mobosquare/sdk/subscription/c/e;

    invoke-direct {v0}, Lcom/mobosquare/sdk/subscription/c/e;-><init>()V

    .line 64
    sput-object v0, Lcom/mobosquare/sdk/subscription/c/d;->b:Lorg/apache/http/HttpRequestInterceptor;

    .line 74
    const-class v0, Lcom/mobosquare/sdk/subscription/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobosquare/sdk/subscription/c/d;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobosquare/sdk/subscription/c/d;->d:Z

    .line 353
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/mobosquare/sdk/subscription/c/d;
    .locals 6

    .prologue
    const/16 v2, 0x4e20

    .line 286
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 290
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 293
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 294
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 295
    const/16 v0, 0x2000

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 299
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 302
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string p0, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8 GTB6"

    .line 305
    :cond_0
    invoke-static {v1, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 306
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 307
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    .line 308
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 307
    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 309
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    if-eqz p1, :cond_1

    new-instance v0, Lcom/mobosquare/sdk/subscription/c/b;

    invoke-direct {v0}, Lcom/mobosquare/sdk/subscription/c/b;-><init>()V

    :goto_0
    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 312
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 317
    new-instance v2, Lcom/mobosquare/sdk/subscription/c/d;

    invoke-direct {v2, v0, v1}, Lcom/mobosquare/sdk/subscription/c/d;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v2

    .line 309
    :cond_1
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/mobosquare/sdk/subscription/c/d;->a:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 368
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 370
    const-string v1, "http.authscheme-registry"

    .line 371
    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/c/d;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    .line 369
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    const-string v1, "http.cookiespec-registry"

    .line 374
    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/c/d;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    .line 372
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    const-string v1, "http.auth.credentials-provider"

    .line 377
    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/c/d;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    .line 375
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    iget-boolean v1, p0, Lcom/mobosquare/sdk/subscription/c/d;->d:Z

    if-eqz v1, :cond_0

    .line 379
    const-string v1, "http.cookie-store"

    invoke-virtual {p0}, Lcom/mobosquare/sdk/subscription/c/d;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    :cond_0
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 359
    sget-object v1, Lcom/mobosquare/sdk/subscription/c/d;->b:Lorg/apache/http/HttpRequestInterceptor;

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 361
    return-object v0
.end method
