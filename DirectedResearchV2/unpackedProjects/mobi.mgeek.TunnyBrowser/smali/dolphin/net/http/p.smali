.class public Ldolphin/net/http/p;
.super Ldolphin/net/http/c;
.source "HttpConnection.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ldolphin/net/http/c;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;)V

    .line 48
    return-void
.end method


# virtual methods
.method public a([Lorg/apache/http/Header;Ldolphin/net/http/l;I)Ldolphin/net/http/a;
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/net/http/p;->c:Landroid/net/http/SslCertificate;

    .line 61
    if-eqz p2, :cond_0

    .line 62
    iget-object v0, p0, Ldolphin/net/http/p;->c:Landroid/net/http/SslCertificate;

    invoke-interface {p2, v0}, Ldolphin/net/http/l;->a(Landroid/net/http/SslCertificate;)V

    .line 64
    :cond_0
    const-string v0, "Network"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HttpConnection::openConnection]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/http/p;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openConnection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldolphin/net/http/p;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/util/q;->a(Ljava/lang/String;)Ldolphin/util/q;

    move-result-object v1

    .line 69
    new-instance v2, Ldolphin/net/http/a;

    invoke-direct {v2}, Ldolphin/net/http/a;-><init>()V

    .line 70
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 71
    const-string v0, "http.socket.buffer-size"

    const/16 v4, 0x2000

    invoke-virtual {v3, v0, v4}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 72
    const-string v0, "http.socket.linger"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 73
    const-string v0, "http.tcp.nodelay"

    invoke-virtual {v3, v0, v5}, Lorg/apache/http/params/BasicHttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 78
    invoke-static {}, Ldolphin/net/a/a;->a()Ldolphin/net/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/net/a/a;->b()I

    move-result v0

    .line 79
    if-ne p3, v5, :cond_2

    mul-int/lit8 v0, v0, 0x2

    .line 85
    :cond_1
    :goto_0
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    .line 86
    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Ldolphin/net/http/p;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ldolphin/net/http/p;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v7}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 89
    :try_start_0
    invoke-virtual {v4, v5, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 94
    invoke-static {}, Ldolphin/net/a/a;->a()Ldolphin/net/a/a;

    move-result-object v0

    sub-long v5, v8, v6

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ldolphin/net/a/a;->a(I)V

    .line 97
    invoke-virtual {v2, v4, v3}, Ldolphin/net/http/a;->a(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 98
    invoke-virtual {v1}, Ldolphin/util/q;->a()J

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldolphin/net/http/p;->e:J

    .line 103
    return-object v2

    .line 79
    :cond_2
    const/4 v4, 0x2

    if-lt p3, v4, :cond_1

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 94
    invoke-static {}, Ldolphin/net/a/a;->a()Ldolphin/net/a/a;

    move-result-object v3

    sub-long/2addr v1, v6

    long-to-int v1, v1

    invoke-virtual {v3, v1}, Ldolphin/net/a/a;->a(I)V

    throw v0
.end method

.method public i()V
    .locals 3

    .prologue
    .line 115
    const-string v0, "Network"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HttpConnection::closeConnection]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/http/p;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_0
    iget-object v0, p0, Ldolphin/net/http/p;->b:Ldolphin/net/http/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/net/http/p;->b:Ldolphin/net/http/a;

    invoke-virtual {v0}, Ldolphin/net/http/a;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Ldolphin/net/http/p;->b:Ldolphin/net/http/a;

    invoke-virtual {v0}, Ldolphin/net/http/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
