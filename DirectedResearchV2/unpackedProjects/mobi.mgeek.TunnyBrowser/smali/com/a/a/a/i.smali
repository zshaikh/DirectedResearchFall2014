.class public Lcom/a/a/a/i;
.super Ljava/lang/Object;
.source "MySSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field private static c:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# instance fields
.field private a:Ljavax/net/ssl/SSLContext;

.field private b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    .line 31
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcom/a/a/a/i;->c:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 32
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/i;->a:Ljavax/net/ssl/SSLContext;

    .line 27
    sget-object v0, Lcom/a/a/a/i;->c:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/a/a/a/i;->b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 144
    return-void
.end method

.method private static a()Ljavax/net/ssl/SSLContext;
    .locals 6

    .prologue
    .line 36
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/a/a/a/j;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/a/a/a/j;-><init>(Ljava/security/KeyStore;)V

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/a/a/a/i;->a:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/a/a/a/i;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i;->a:Ljavax/net/ssl/SSLContext;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i;->a:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 5

    .prologue
    .line 60
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    .line 61
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    .line 63
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 64
    if-eqz p1, :cond_3

    move-object v0, p1

    :goto_0
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 66
    if-nez p4, :cond_0

    if-lez p5, :cond_2

    .line 68
    :cond_0
    if-gez p5, :cond_1

    .line 69
    const/4 p5, 0x0

    .line 71
    :cond_1
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 73
    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 76
    :cond_2
    invoke-virtual {v0, v3, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 77
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/a/a/a/i;->b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-object v0

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/a/a/a/i;->createSocket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 84
    :try_start_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :goto_1
    throw v1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/a/a/a/i;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/a/a/a/i;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 116
    iget-object v1, p0, Lcom/a/a/a/i;->b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 117
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/a/a/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 132
    const-class v0, Lcom/a/a/a/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
