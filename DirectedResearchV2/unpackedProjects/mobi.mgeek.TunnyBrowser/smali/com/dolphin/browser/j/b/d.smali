.class public Lcom/dolphin/browser/j/b/d;
.super Ljava/lang/Object;
.source "SSLCRLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# instance fields
.field private final a:Ljavax/net/ssl/SSLContext;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;

.field private final c:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private d:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/dolphin/browser/j/b/d;->d:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 63
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/dolphin/browser/j/b/a;

    invoke-direct {v2}, Lcom/dolphin/browser/j/b/a;-><init>()V

    aput-object v2, v0, v1

    .line 65
    const-string v1, "TLSv1.2"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/j/b/d;->a(Ljava/lang/String;[Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/j/b/d;->a:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/j/b/d;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/j/b/d;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 70
    iput-object v3, p0, Lcom/dolphin/browser/j/b/d;->c:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 71
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create default factory."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/j/b/e;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/dolphin/browser/j/b/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/j/b/d;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/dolphin/browser/j/b/f;->a()Lcom/dolphin/browser/j/b/d;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;[Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;
    .locals 2

    .prologue
    .line 250
    :try_start_0
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 254
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, p1, p2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 255
    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method a(Ljava/lang/String;I)Lcom/dolphin/browser/j/b/q;
    .locals 5

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/Network/d;->d()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/dolphin/browser/j/b/d;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 92
    invoke-static {v1}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    .line 93
    invoke-static {v1}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v3

    .line 96
    iget-object v1, p0, Lcom/dolphin/browser/j/b/d;->c:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v1, :cond_1

    .line 97
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/dolphin/browser/j/b/d;->c:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v4, p1}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v1, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 102
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 104
    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 107
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 108
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/dolphin/browser/j/b/q;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/dolphin/browser/j/b/q;-><init>(Ljava/security/cert/X509Certificate;Z)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v0, v2

    :goto_2
    return-object v0

    .line 99
    :cond_1
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 111
    :try_start_2
    invoke-virtual {v2}, Ljavax/net/ssl/SSLHandshakeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 112
    :goto_3
    if-eqz v1, :cond_3

    .line 113
    instance-of v3, v1, Lcom/dolphin/browser/j/b/c;

    if-eqz v3, :cond_2

    .line 114
    new-instance v2, Lcom/dolphin/browser/j/b/q;

    check-cast v1, Lcom/dolphin/browser/j/b/c;

    invoke-virtual {v1}, Lcom/dolphin/browser/j/b/c;->a()Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/dolphin/browser/j/b/q;-><init>(Ljava/security/cert/X509Certificate;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :try_start_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    move-object v0, v2

    goto :goto_2

    .line 116
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_3

    .line 118
    :cond_3
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    throw v1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 5

    .prologue
    .line 134
    if-nez p2, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    if-nez p6, :cond_1

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    if-eqz p1, :cond_5

    move-object v0, p1

    :goto_0
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 144
    if-nez p4, :cond_2

    if-lez p5, :cond_4

    .line 147
    :cond_2
    if-gez p5, :cond_3

    .line 148
    const/4 p5, 0x0

    .line 150
    :cond_3
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 152
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 155
    :cond_4
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    .line 156
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v3

    .line 159
    iget-object v1, p0, Lcom/dolphin/browser/j/b/d;->c:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v1, :cond_6

    .line 160
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/dolphin/browser/j/b/d;->c:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v4, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v1, v4, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 165
    :goto_1
    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 167
    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 169
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 170
    iget-object v1, p0, Lcom/dolphin/browser/j/b/d;->d:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    return-object v0

    .line 141
    :cond_5
    invoke-virtual {p0}, Lcom/dolphin/browser/j/b/d;->createSocket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_6
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 172
    :catch_0
    move-exception v1

    .line 174
    :try_start_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :goto_2
    throw v1

    .line 174
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/j/b/d;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/j/b/d;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 230
    iget-object v1, p0, Lcom/dolphin/browser/j/b/d;->d:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 232
    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 2

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
