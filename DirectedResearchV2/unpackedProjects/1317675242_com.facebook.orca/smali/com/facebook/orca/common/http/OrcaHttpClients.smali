.class public Lcom/facebook/orca/common/http/OrcaHttpClients;
.super Ljava/lang/Object;
.source "OrcaHttpClients.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaCookieStore;)Lcom/facebook/orca/common/http/OrcaHttpClient;
    .locals 3

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 33
    invoke-static {p0, p1, p2}, Lcom/facebook/orca/common/http/OrcaHttpClients;->b(Ljava/lang/String;Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaCookieStore;)Lcom/facebook/orca/common/http/OrcaHttpClient;

    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Lcom/facebook/orca/common/http/OrcaHttpClient;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/facebook/orca/common/http/OrcaHttpClients$1;

    invoke-direct {v2}, Lcom/facebook/orca/common/http/OrcaHttpClients$1;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V

    .line 51
    return-object v0

    .line 35
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/orca/common/http/OrcaHttpClients;->c(Ljava/lang/String;Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaCookieStore;)Lcom/facebook/orca/common/http/OrcaHttpClient;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 5

    .prologue
    .line 72
    :try_start_0
    const-class v0, Landroid/net/http/AndroidHttpClient;

    const-string v1, "newInstance"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/http/AndroidHttpClient;

    .line 74
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 77
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    :catch_2
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaCookieStore;)Lcom/facebook/orca/common/http/OrcaHttpClient;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpClients;->a(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;->a(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;Lcom/facebook/orca/common/http/OrcaCookieStore;)Lcom/facebook/orca/common/http/OrcaHttpClientFroyo;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 3

    .prologue
    .line 90
    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 94
    return-object v1
.end method

.method private static c(Ljava/lang/String;Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaCookieStore;)Lcom/facebook/orca/common/http/OrcaHttpClient;
    .locals 1

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpClients;->b(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair;->a(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;Lcom/facebook/orca/common/http/OrcaCookieStore;)Lcom/facebook/orca/common/http/OrcaHttpClientEclair;

    move-result-object v0

    return-object v0
.end method
