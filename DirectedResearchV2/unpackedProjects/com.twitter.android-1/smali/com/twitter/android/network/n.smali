.class public final Lcom/twitter/android/network/n;
.super Lcom/twitter/android/network/b;


# static fields
.field private static a:Lcom/twitter/android/network/n;


# instance fields
.field private final b:Lorg/apache/http/client/HttpClient;

.field private final c:Lorg/apache/http/conn/ClientConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/android/network/n;->a:Lcom/twitter/android/network/n;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/twitter/android/network/b;-><init>()V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v1, 0x15f90

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/network/n;->a(Landroid/content/Context;)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v2, p0, Lcom/twitter/android/network/n;->c:Lorg/apache/http/conn/ClientConnectionManager;

    iget-object v1, p0, Lcom/twitter/android/network/n;->c:Lorg/apache/http/conn/ClientConnectionManager;

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    const-class v0, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    const-class v0, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    new-instance v0, Lcom/twitter/android/network/j;

    invoke-direct {v0}, Lcom/twitter/android/network/j;-><init>()V

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    iput-object v2, p0, Lcom/twitter/android/network/n;->b:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/twitter/android/network/n;
    .locals 3

    const-class v1, Lcom/twitter/android/network/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/android/network/n;->a:Lcom/twitter/android/network/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/network/n;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/android/network/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/network/n;->a:Lcom/twitter/android/network/n;

    :cond_0
    sget-object v0, Lcom/twitter/android/network/n;->a:Lcom/twitter/android/network/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lorg/apache/http/client/HttpClient;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/network/n;->b:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method
