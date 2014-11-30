.class public Lcom/dolphin/browser/Network/d;
.super Ljava/lang/Object;
.source "HttpRequester.java"


# static fields
.field private static a:Lorg/apache/http/params/HttpParams;

.field private static b:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field private static c:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field private static d:Lorg/apache/http/conn/ClientConnectionManager;

.field private static e:Lcom/dolphin/browser/Network/j;

.field private static f:Lcom/dolphin/browser/Network/c;


# instance fields
.field private final g:Lcom/dolphin/browser/Network/i;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/Network/i;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    .line 297
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/Network/i;Lcom/dolphin/browser/Network/e;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dolphin/browser/Network/d;-><init>(Lcom/dolphin/browser/Network/i;)V

    return-void
.end method

.method private static final a(Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 382
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 383
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 386
    :goto_0
    return-object v0

    .line 385
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 386
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static final a()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 150
    :try_start_0
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(ZZ)Lorg/apache/http/client/HttpClient;
    .locals 3

    .prologue
    .line 279
    invoke-static {}, Lcom/dolphin/browser/Network/d;->d()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/dolphin/browser/Network/d;->a(Z)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 288
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/Network/d;->c()Lcom/dolphin/browser/Network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/Network/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 290
    return-object v0

    .line 282
    :cond_0
    if-eqz p0, :cond_1

    .line 283
    new-instance v0, Lcom/dolphin/browser/Network/f;

    invoke-static {}, Lcom/dolphin/browser/Network/d;->f()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/dolphin/browser/Network/f;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 285
    :cond_1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/dolphin/browser/Network/d;->a(Z)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    goto :goto_0
.end method

.method public static a(Z)Lorg/apache/http/conn/ClientConnectionManager;
    .locals 3

    .prologue
    .line 263
    invoke-static {}, Lcom/dolphin/browser/Network/d;->d()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 265
    if-eqz p0, :cond_0

    .line 266
    invoke-static {}, Lcom/dolphin/browser/Network/d;->e()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 270
    :goto_0
    new-instance v2, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 274
    return-object v2

    .line 268
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/Network/d;->m()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/dolphin/browser/Network/c;)V
    .locals 0

    .prologue
    .line 217
    sput-object p0, Lcom/dolphin/browser/Network/d;->f:Lcom/dolphin/browser/Network/c;

    .line 218
    return-void
.end method

.method static final b()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 7

    .prologue
    .line 159
    :try_start_0
    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    const-string v1, "TLSv1.2"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()Lcom/dolphin/browser/Network/c;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/dolphin/browser/Network/d;->f:Lcom/dolphin/browser/Network/c;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/dolphin/browser/Network/c;

    invoke-direct {v0}, Lcom/dolphin/browser/Network/c;-><init>()V

    sput-object v0, Lcom/dolphin/browser/Network/d;->f:Lcom/dolphin/browser/Network/c;

    .line 225
    :cond_0
    sget-object v0, Lcom/dolphin/browser/Network/d;->f:Lcom/dolphin/browser/Network/c;

    return-object v0
.end method

.method public static d()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/dolphin/browser/Network/d;->a:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 230
    invoke-static {}, Lcom/dolphin/browser/Network/d;->i()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/Network/d;->a:Lorg/apache/http/params/HttpParams;

    .line 232
    :cond_0
    sget-object v0, Lcom/dolphin/browser/Network/d;->a:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public static e()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/dolphin/browser/Network/d;->b:Lorg/apache/http/conn/scheme/SchemeRegistry;

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/dolphin/browser/Network/d;->j()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/Network/d;->b:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 239
    :cond_0
    sget-object v0, Lcom/dolphin/browser/Network/d;->b:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public static f()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/dolphin/browser/Network/d;->d:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v0, :cond_0

    .line 251
    invoke-static {}, Lcom/dolphin/browser/Network/d;->l()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 255
    sput-object v0, Lcom/dolphin/browser/Network/d;->d:Lorg/apache/http/conn/ClientConnectionManager;

    .line 257
    :cond_0
    sget-object v0, Lcom/dolphin/browser/Network/d;->d:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method private static i()Lorg/apache/http/params/HttpParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 169
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 173
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 176
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 177
    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 178
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 180
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 182
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 184
    return-object v0
.end method

.method private static j()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 5

    .prologue
    .line 188
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 189
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 190
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lcom/dolphin/browser/Network/d;->b()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 194
    return-object v0
.end method

.method private static k()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 5

    .prologue
    .line 198
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 199
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 200
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    new-instance v3, Lcom/dolphin/browser/Network/a;

    invoke-direct {v3}, Lcom/dolphin/browser/Network/a;-><init>()V

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 201
    return-object v0
.end method

.method private static l()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lcom/dolphin/browser/Network/d;->d()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/dolphin/browser/Network/d;->e()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    .line 207
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 208
    sget-object v0, Lcom/dolphin/browser/Network/d;->e:Lcom/dolphin/browser/Network/j;

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/dolphin/browser/Network/d;->e:Lcom/dolphin/browser/Network/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/j;->a()V

    .line 211
    :cond_0
    new-instance v0, Lcom/dolphin/browser/Network/j;

    invoke-direct {v0, v2}, Lcom/dolphin/browser/Network/j;-><init>(Lorg/apache/http/conn/ClientConnectionManager;)V

    sput-object v0, Lcom/dolphin/browser/Network/d;->e:Lcom/dolphin/browser/Network/j;

    .line 212
    return-object v2
.end method

.method private static m()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/dolphin/browser/Network/d;->c:Lorg/apache/http/conn/scheme/SchemeRegistry;

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Lcom/dolphin/browser/Network/d;->k()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/Network/d;->c:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 246
    :cond_0
    sget-object v0, Lcom/dolphin/browser/Network/d;->c:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method


# virtual methods
.method public b(Z)Lcom/dolphin/browser/Network/n;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->a(Lcom/dolphin/browser/Network/i;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/dolphin/browser/Network/d;->a(ZZ)Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 317
    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->b(Lcom/dolphin/browser/Network/i;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->c(Lcom/dolphin/browser/Network/i;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    if-ne v0, v1, :cond_1

    .line 318
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->d(Lcom/dolphin/browser/Network/i;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v4, "http.protocol.expect-continue"

    invoke-interface {v0, v4, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-object v0, v1

    .line 321
    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v4}, Lcom/dolphin/browser/Network/i;->b(Lcom/dolphin/browser/Network/i;)Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->e(Lcom/dolphin/browser/Network/i;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->e(Lcom/dolphin/browser/Network/i;)[Lorg/apache/http/Header;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->e(Lcom/dolphin/browser/Network/i;)[Lorg/apache/http/Header;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v2, v4, v0

    .line 335
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    :cond_1
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->d(Lcom/dolphin/browser/Network/i;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->f(Lcom/dolphin/browser/Network/i;)Lcom/dolphin/browser/Network/k;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->f(Lcom/dolphin/browser/Network/i;)Lcom/dolphin/browser/Network/k;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/Network/k;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 343
    :cond_3
    const-string v0, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->g(Lcom/dolphin/browser/Network/i;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 347
    const-string v0, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_2
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 354
    iget-object v2, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v2}, Lcom/dolphin/browser/Network/i;->h(Lcom/dolphin/browser/Network/i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 355
    iget-object v2, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v2}, Lcom/dolphin/browser/Network/i;->h(Lcom/dolphin/browser/Network/i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 358
    :cond_4
    iget-object v2, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v2}, Lcom/dolphin/browser/Network/i;->i(Lcom/dolphin/browser/Network/i;)I

    move-result v2

    if-eq v2, v6, :cond_5

    .line 359
    iget-object v2, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v2}, Lcom/dolphin/browser/Network/i;->i(Lcom/dolphin/browser/Network/i;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 362
    :cond_5
    iget-object v2, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v2}, Lcom/dolphin/browser/Network/i;->j(Lcom/dolphin/browser/Network/i;)I

    move-result v2

    if-eq v2, v6, :cond_6

    .line 363
    iget-object v2, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v2}, Lcom/dolphin/browser/Network/i;->j(Lcom/dolphin/browser/Network/i;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 366
    :cond_6
    iget-object v2, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v2}, Lcom/dolphin/browser/Network/i;->k(Lcom/dolphin/browser/Network/i;)Z

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 369
    :try_start_0
    const-string v0, "HttpRequester"

    const-string v2, "HTTP %s to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v2, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 370
    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 371
    new-instance v1, Lcom/dolphin/browser/Network/n;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/Network/n;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 349
    :cond_7
    const-string v0, "Connection"

    const-string v2, "Close"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 372
    :catch_0
    move-exception v0

    .line 374
    invoke-static {v0}, Lcom/dolphin/browser/Network/d;->a(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 375
    :catch_1
    move-exception v0

    .line 376
    invoke-static {v0}, Lcom/dolphin/browser/Network/d;->a(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final g()Lcom/dolphin/browser/Network/n;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/dolphin/browser/Network/d;->g:Lcom/dolphin/browser/Network/i;

    invoke-static {v0}, Lcom/dolphin/browser/Network/i;->d(Lcom/dolphin/browser/Network/i;)Ljava/lang/String;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
