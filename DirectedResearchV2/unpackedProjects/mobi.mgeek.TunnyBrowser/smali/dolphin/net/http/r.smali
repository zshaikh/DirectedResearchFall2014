.class public Ldolphin/net/http/r;
.super Ldolphin/net/http/c;
.source "HttpsConnection.java"


# static fields
.field private static f:Ljavax/net/ssl/SSLSocketFactory;

.field private static g:Landroid/net/SSLCertificateSocketFactory;


# instance fields
.field private h:Ljava/lang/Object;

.field private i:Z

.field private j:Z

.field private k:Lorg/apache/http/HttpHost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    sput-object v1, Ldolphin/net/http/r;->f:Ljavax/net/ssl/SSLSocketFactory;

    .line 85
    sput-object v1, Ldolphin/net/http/r;->g:Landroid/net/SSLCertificateSocketFactory;

    .line 91
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/net/http/SslErrorJssePackagePlatformTry;->isSslJssePackageExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {v1}, Ldolphin/net/http/r;->a(Ljava/io/File;)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {v1}, Ldolphin/net/http/r;->b(Ljava/io/File;)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0, p1, p2}, Ldolphin/net/http/c;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;)V

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/net/http/r;->h:Ljava/lang/Object;

    .line 213
    iput-boolean v1, p0, Ldolphin/net/http/r;->i:Z

    .line 219
    iput-boolean v1, p0, Ldolphin/net/http/r;->j:Z

    .line 229
    iput-object p3, p0, Ldolphin/net/http/r;->k:Lorg/apache/http/HttpHost;

    .line 230
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 104
    .line 105
    if-eqz p0, :cond_0

    .line 106
    :try_start_0
    const-string v0, "HttpsConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching SSL sessions in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    move-result-object v0

    .line 111
    :cond_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;-><init>()V

    .line 114
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Ldolphin/net/http/s;

    invoke-direct {v4}, Ldolphin/net/http/s;-><init>()V

    aput-object v4, v2, v3

    .line 130
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 131
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->setPersistentCache(Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V

    .line 133
    const-class v3, Ldolphin/net/http/r;

    monitor-enter v3
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :try_start_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_JB_MR1:Z

    if-nez v0, :cond_1

    .line 135
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Ldolphin/net/http/r;->f:Ljavax/net/ssl/SSLSocketFactory;

    .line 140
    :goto_0
    monitor-exit v3

    .line 146
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/SSLCertificateSocketFactory;->getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    sput-object v0, Ldolphin/net/http/r;->g:Landroid/net/SSLCertificateSocketFactory;

    .line 138
    sget-object v0, Ldolphin/net/http/r;->g:Landroid/net/SSLCertificateSocketFactory;

    invoke-virtual {v0, v2}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 143
    :catch_1
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 156
    .line 157
    if-eqz p0, :cond_0

    .line 158
    :try_start_0
    const-string v0, "HttpsConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching SSL sessions in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {p0}, Lcom/android/org/conscrypt/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;

    move-result-object v0

    .line 163
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLContextImpl;

    invoke-direct {v1}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>()V

    .line 166
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Ldolphin/net/http/t;

    invoke-direct {v4}, Ldolphin/net/http/t;-><init>()V

    aput-object v4, v2, v3

    .line 182
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 183
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    .line 185
    const-class v1, Ldolphin/net/http/r;

    monitor-enter v1
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v0, v3}, Landroid/net/SSLCertificateSocketFactory;->getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    sput-object v0, Ldolphin/net/http/r;->g:Landroid/net/SSLCertificateSocketFactory;

    .line 187
    sget-object v0, Ldolphin/net/http/r;->g:Landroid/net/SSLCertificateSocketFactory;

    invoke-virtual {v0, v2}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    .line 188
    monitor-exit v1

    .line 194
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 191
    :catch_1
    move-exception v0

    .line 192
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static declared-synchronized k()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 197
    const-class v0, Ldolphin/net/http/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldolphin/net/http/r;->f:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized l()Landroid/net/SSLCertificateSocketFactory;
    .locals 2

    .prologue
    .line 201
    const-class v0, Ldolphin/net/http/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldolphin/net/http/r;->g:Landroid/net/SSLCertificateSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a([Lorg/apache/http/Header;Ldolphin/net/http/l;I)Ldolphin/net/http/a;
    .locals 11

    .prologue
    .line 249
    const-string v0, "Network"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HttpsConnection::openConnection]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Ldolphin/net/http/r;->k:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_d

    .line 263
    const/4 v2, 0x0

    .line 266
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    iget-object v0, p0, Ldolphin/net/http/r;->k:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldolphin/net/http/r;->k:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-direct {v4, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 267
    const v0, 0xea60

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 269
    new-instance v1, Ldolphin/net/http/a;

    invoke-direct {v1}, Ldolphin/net/http/a;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :try_start_1
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 271
    const/16 v2, 0x2000

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 273
    invoke-virtual {v1, v4, v0}, Ldolphin/net/http/a;->a(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 286
    new-instance v2, Ldolphin/net/http/m;

    invoke-direct {v2}, Ldolphin/net/http/m;-><init>()V

    .line 288
    :try_start_2
    new-instance v5, Lorg/apache/http/message/BasicHttpRequest;

    const-string v0, "CONNECT"

    iget-object v6, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    array-length v6, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_4

    aget-object v7, p1, v0

    .line 293
    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 294
    const-string v9, "proxy"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "keep-alive"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "host"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 295
    :cond_0
    invoke-virtual {v5, v7}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 275
    :goto_1
    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v1}, Ldolphin/net/http/a;->close()V

    .line 279
    :cond_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 280
    if-nez v0, :cond_3

    const-string v0, "failed to establish a connection to the proxy"

    .line 281
    :cond_3
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_4
    :try_start_3
    invoke-virtual {v1, v5}, Ldolphin/net/http/a;->a(Lorg/apache/http/HttpRequest;)V

    .line 300
    invoke-virtual {v1}, Ldolphin/net/http/a;->c()V

    .line 307
    :cond_5
    invoke-virtual {v1, v2}, Ldolphin/net/http/a;->a(Ldolphin/net/http/m;)Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 308
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_3
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    .line 309
    const/16 v6, 0xc8

    if-lt v5, v6, :cond_5

    .line 324
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_c

    .line 326
    :try_start_4
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_JB_MR1:Z

    if-nez v0, :cond_9

    .line 327
    invoke-static {}, Ldolphin/net/http/r;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v1, v2, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 384
    :goto_2
    invoke-static {}, Ldolphin/net/http/CertificateChainValidator;->a()Ldolphin/net/http/CertificateChainValidator;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ldolphin/net/http/CertificateChainValidator;->a(Ldolphin/net/http/r;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Ldolphin/net/http/SslError;

    move-result-object v1

    .line 388
    if-eqz v1, :cond_14

    .line 394
    iget-object v2, p0, Ldolphin/net/http/r;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 395
    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p0, Ldolphin/net/http/r;->i:Z

    .line 396
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 398
    invoke-interface {p2, v1}, Ldolphin/net/http/l;->a(Ldolphin/net/http/SslError;)Z

    move-result v2

    .line 399
    if-nez v2, :cond_11

    .line 400
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :catch_1
    move-exception v0

    .line 311
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 312
    if-nez v0, :cond_6

    const-string v0, "ParseException: failed to send a CONNECT request"

    .line 313
    :cond_6
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :catch_2
    move-exception v0

    .line 315
    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 316
    if-nez v0, :cond_7

    const-string v0, "HttpException: failed to send a CONNECT request"

    .line 317
    :cond_7
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :catch_3
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 320
    if-nez v0, :cond_8

    const-string v0, "IOException: failed to send a CONNECT request"

    .line 321
    :cond_8
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_9
    :try_start_6
    invoke-static {}, Ldolphin/net/http/r;->l()Landroid/net/SSLCertificateSocketFactory;

    move-result-object v0

    iget-object v1, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 332
    :try_start_7
    invoke-static {}, Ldolphin/net/http/r;->l()Landroid/net/SSLCertificateSocketFactory;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_2

    .line 334
    :catch_4
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 335
    :goto_3
    if-eqz v1, :cond_a

    .line 336
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 339
    :cond_a
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 340
    if-nez v0, :cond_b

    const-string v0, "failed to create an SSL socket"

    .line 341
    :cond_b
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_c
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    .line 347
    invoke-virtual {v3}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v4

    invoke-virtual {v3}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v3

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4, v3, v5, v0}, Ldolphin/net/http/l;->a(IIILjava/lang/String;)V

    .line 351
    invoke-interface {p2, v2}, Ldolphin/net/http/l;->a(Ldolphin/net/http/m;)V

    .line 352
    invoke-interface {p2}, Ldolphin/net/http/l;->a()V

    .line 354
    invoke-virtual {v1}, Ldolphin/net/http/a;->close()V

    .line 358
    const/4 v0, 0x0

    .line 443
    :goto_4
    return-object v0

    .line 363
    :cond_d
    :try_start_8
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_JB_MR1:Z

    if-nez v0, :cond_10

    .line 364
    invoke-static {}, Ldolphin/net/http/r;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 371
    :goto_5
    const v1, 0xea60

    :try_start_9
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_2

    .line 372
    :catch_5
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 373
    :goto_6
    if-eqz v3, :cond_e

    .line 374
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 377
    :cond_e
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 378
    if-nez v0, :cond_f

    const-string v0, "failed to create an SSL socket"

    .line 379
    :cond_f
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_10
    :try_start_a
    invoke-static {}, Ldolphin/net/http/r;->l()Landroid/net/SSLCertificateSocketFactory;

    move-result-object v0

    iget-object v1, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 369
    :try_start_b
    invoke-static {}, Ldolphin/net/http/r;->l()Landroid/net/SSLCertificateSocketFactory;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    .line 396
    :catchall_0
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0

    .line 402
    :cond_11
    iget-object v1, p0, Ldolphin/net/http/r;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_d
    iget-boolean v2, p0, Ldolphin/net/http/r;->i:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v2, :cond_12

    .line 411
    :try_start_e
    iget-object v2, p0, Ldolphin/net/http/r;->h:Ljava/lang/Object;

    const-wide/32 v3, 0x927c0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 412
    iget-boolean v2, p0, Ldolphin/net/http/r;->i:Z

    if-eqz v2, :cond_12

    .line 416
    const/4 v2, 0x0

    iput-boolean v2, p0, Ldolphin/net/http/r;->i:Z

    .line 417
    const/4 v2, 0x1

    iput-boolean v2, p0, Ldolphin/net/http/r;->j:Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 425
    :cond_12
    :goto_7
    :try_start_f
    iget-boolean v2, p0, Ldolphin/net/http/r;->j:Z

    if-eqz v2, :cond_13

    .line 428
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 429
    new-instance v0, Ldolphin/net/http/u;

    const-string v2, "connection closed by the user"

    invoke-direct {v0, p0, v2}, Ldolphin/net/http/u;-><init>(Ldolphin/net/http/r;Ljava/lang/String;)V

    throw v0

    .line 431
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw v0

    :cond_13
    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 435
    :cond_14
    new-instance v1, Ldolphin/net/http/a;

    invoke-direct {v1}, Ldolphin/net/http/a;-><init>()V

    .line 436
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 437
    const-string v3, "http.socket.buffer-size"

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 438
    invoke-virtual {v1, v0, v2}, Ldolphin/net/http/a;->a(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldolphin/net/http/r;->e:J

    move-object v0, v1

    .line 443
    goto/16 :goto_4

    .line 421
    :catch_6
    move-exception v2

    goto :goto_7

    .line 372
    :catch_7
    move-exception v0

    goto/16 :goto_6

    .line 334
    :catch_8
    move-exception v0

    move-object v1, v3

    goto/16 :goto_3

    .line 274
    :catch_9
    move-exception v0

    goto/16 :goto_1
.end method

.method public a(Landroid/net/http/SslCertificate;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Ldolphin/net/http/r;->c:Landroid/net/http/SslCertificate;

    .line 239
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 484
    iget-object v1, p0, Ldolphin/net/http/r;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-boolean v2, p0, Ldolphin/net/http/r;->i:Z

    if-eqz v2, :cond_1

    .line 486
    const/4 v2, 0x0

    iput-boolean v2, p0, Ldolphin/net/http/r;->i:Z

    .line 487
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ldolphin/net/http/r;->j:Z

    .line 488
    iget-object v0, p0, Ldolphin/net/http/r;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 490
    :cond_1
    monitor-exit v1

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()V
    .locals 3

    .prologue
    .line 456
    const-string v0, "Network"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HttpsConnection::closeConnection]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/http/r;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-boolean v0, p0, Ldolphin/net/http/r;->i:Z

    if-eqz v0, :cond_0

    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldolphin/net/http/r;->b(Z)V

    .line 467
    :cond_0
    :try_start_0
    iget-object v0, p0, Ldolphin/net/http/r;->b:Ldolphin/net/http/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/net/http/r;->b:Ldolphin/net/http/a;

    invoke-virtual {v0}, Ldolphin/net/http/a;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Ldolphin/net/http/r;->b:Ldolphin/net/http/a;

    invoke-virtual {v0}, Ldolphin/net/http/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 473
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
