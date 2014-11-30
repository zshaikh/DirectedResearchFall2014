.class public Lcom/f/a/a/a;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field private a:I

.field private b:I

.field private final c:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final d:Lorg/apache/http/protocol/HttpContext;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/f/a/a/r;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-string v0, "http client (Android)"

    sput-object v0, Lcom/f/a/a/a;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/f/a/a/a;-><init>(ZII)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v4, p0, Lcom/f/a/a/a;->a:I

    .line 106
    const/16 v0, 0x2710

    iput v0, p0, Lcom/f/a/a/a;->b:I

    .line 113
    iput-boolean v3, p0, Lcom/f/a/a/a;->h:Z

    .line 197
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 199
    iget v1, p0, Lcom/f/a/a/a;->b:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 200
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v2, p0, Lcom/f/a/a/a;->a:I

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 201
    invoke-static {v0, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 203
    iget v1, p0, Lcom/f/a/a/a;->b:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 204
    iget v1, p0, Lcom/f/a/a/a;->b:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 205
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 206
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 208
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 209
    sget-object v1, Lcom/f/a/a/a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 211
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 213
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/f/a/a/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 214
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/f/a/a/a;->f:Ljava/util/Map;

    .line 215
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/f/a/a/a;->g:Ljava/util/Map;

    .line 217
    new-instance v2, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v2, p0, Lcom/f/a/a/a;->d:Lorg/apache/http/protocol/HttpContext;

    .line 218
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lcom/f/a/a/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 219
    iget-object v0, p0, Lcom/f/a/a/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/f/a/a/b;

    invoke-direct {v1, p0}, Lcom/f/a/a/b;-><init>(Lcom/f/a/a/a;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 231
    iget-object v0, p0, Lcom/f/a/a/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/f/a/a/c;

    invoke-direct {v1, p0}, Lcom/f/a/a/c;-><init>(Lcom/f/a/a/a;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 250
    iget-object v0, p0, Lcom/f/a/a/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/f/a/a/u;

    const/4 v2, 0x5

    const/16 v3, 0x5dc

    invoke-direct {v1, v2, v3}, Lcom/f/a/a/u;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 251
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1

    .prologue
    .line 150
    invoke-static {p1, p2, p3}, Lcom/f/a/a/a;->a(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/f/a/a/a;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 151
    return-void
.end method

.method public static a(ZLjava/lang/String;Lcom/f/a/a/s;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 950
    if-eqz p0, :cond_2

    .line 951
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 953
    :goto_0
    if-eqz p2, :cond_0

    .line 956
    invoke-virtual {p2}, Lcom/f/a/a/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 960
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 966
    :cond_0
    return-object v0

    .line 961
    :cond_1
    const-string v0, "?"

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/f/a/a/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/f/a/a/a;->g:Ljava/util/Map;

    return-object v0
.end method

.method private static a(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 161
    if-eqz p0, :cond_0

    .line 162
    const-string v0, "AsyncHttpClient"

    const-string v1, "Beware! Using the fix is insecure, as it doesn\'t verify SSL certificates."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    if-ge p1, v2, :cond_1

    .line 166
    const/16 p1, 0x50

    .line 167
    const-string v0, "AsyncHttpClient"

    const-string v1, "Invalid HTTP port number specified, defaulting to 80"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    if-ge p2, v2, :cond_2

    .line 171
    const/16 p2, 0x1bb

    .line 172
    const-string v0, "AsyncHttpClient"

    const-string v1, "Invalid HTTPS port number specified, defaulting to 443"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2
    if-eqz p0, :cond_3

    .line 179
    invoke-static {}, Lcom/f/a/a/p;->b()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 183
    :goto_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 184
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 185
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-direct {v2, v3, v0, p2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 187
    return-object v1

    .line 181
    :cond_3
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/f/a/a/s;Lcom/f/a/a/t;)Lcom/f/a/a/r;
    .locals 7

    .prologue
    .line 642
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-boolean v0, p0, Lcom/f/a/a/a;->h:Z

    invoke-static {v0, p2, p4}, Lcom/f/a/a/a;->a(ZLjava/lang/String;Lcom/f/a/a/s;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 643
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/f/a/a/a;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/f/a/a/a;->d:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/f/a/a/a;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/f/a/a/t;Landroid/content/Context;)Lcom/f/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/f/a/a/t;Landroid/content/Context;)Lcom/f/a/a/r;
    .locals 3

    .prologue
    .line 899
    if-eqz p4, :cond_0

    .line 900
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :cond_0
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/f/a/a/t;->a([Lorg/apache/http/Header;)V

    .line 904
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/f/a/a/t;->a(Ljava/net/URI;)V

    .line 906
    new-instance v0, Lcom/f/a/a/e;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/f/a/a/e;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/f/a/a/t;)V

    .line 907
    iget-object v1, p0, Lcom/f/a/a/a;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 908
    new-instance v1, Lcom/f/a/a/r;

    invoke-direct {v1, v0}, Lcom/f/a/a/r;-><init>(Lcom/f/a/a/e;)V

    .line 910
    if-eqz p6, :cond_3

    .line 912
    iget-object v0, p0, Lcom/f/a/a/a;->f:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 913
    if-nez v0, :cond_1

    .line 914
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 915
    iget-object v2, p0, Lcom/f/a/a/a;->f:Ljava/util/Map;

    invoke-interface {v2, p6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 921
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/f/a/a/r;

    invoke-virtual {v0}, Lcom/f/a/a/r;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 928
    :cond_3
    return-object v1
.end method
