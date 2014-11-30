.class public abstract Ldolphin/net/http/c;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field a:Landroid/content/Context;

.field protected b:Ldolphin/net/http/a;

.field protected c:Landroid/net/http/SslCertificate;

.field d:Lorg/apache/http/HttpHost;

.field e:J

.field private f:Z

.field private g:Lorg/apache/http/protocol/HttpContext;

.field private h:[B


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v2, p0, Ldolphin/net/http/c;->b:Ldolphin/net/http/a;

    .line 61
    iput-object v2, p0, Ldolphin/net/http/c;->c:Landroid/net/http/SslCertificate;

    .line 89
    iput-object p1, p0, Ldolphin/net/http/c;->a:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Ldolphin/net/http/c;->d:Lorg/apache/http/HttpHost;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldolphin/net/http/c;->e:J

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/net/http/c;->f:Z

    .line 94
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0, v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v0, p0, Ldolphin/net/http/c;->g:Lorg/apache/http/protocol/HttpContext;

    .line 95
    return-void
.end method

.method private a(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    const-string v0, "http.connection"

    invoke-interface {p4, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 159
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v2

    .line 163
    :cond_1
    if-eqz p1, :cond_2

    .line 164
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 165
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v0}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :cond_2
    if-eq p3, v1, :cond_0

    .line 175
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    move v2, v1

    .line 176
    goto :goto_0

    .line 179
    :cond_3
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v0}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public a()Ldolphin/net/http/a;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ldolphin/net/http/c;->b:Ldolphin/net/http/a;

    return-object v0
.end method

.method public abstract a([Lorg/apache/http/Header;Ldolphin/net/http/l;I)Ldolphin/net/http/a;
.end method

.method public a(Landroid/net/http/SslCertificate;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Ldolphin/net/http/c;->c:Landroid/net/http/SslCertificate;

    .line 127
    return-void
.end method

.method public a(Ldolphin/net/http/a;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Ldolphin/net/http/c;->b:Ldolphin/net/http/a;

    .line 103
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ldolphin/net/http/c;->g:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Ldolphin/net/http/c;->g:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public a(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ldolphin/net/http/c;->g:Lorg/apache/http/protocol/HttpContext;

    invoke-direct {p0, p1, p2, p3, v0}, Ldolphin/net/http/c;->a(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    iput-boolean v0, p0, Ldolphin/net/http/c;->f:Z

    .line 184
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 187
    iput-boolean p1, p0, Ldolphin/net/http/c;->f:Z

    .line 188
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ldolphin/net/http/c;->b:Ldolphin/net/http/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/net/http/c;->b:Ldolphin/net/http/a;

    invoke-virtual {v0}, Ldolphin/net/http/a;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ldolphin/net/http/c;->d:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ldolphin/net/http/c;->b:Ldolphin/net/http/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/net/http/c;->b:Ldolphin/net/http/a;

    invoke-virtual {v0}, Ldolphin/net/http/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ldolphin/net/http/c;->c:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Ldolphin/net/http/c;->e:J

    return-wide v0
.end method

.method public g()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ldolphin/net/http/c;->g:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Ldolphin/net/http/c;->f:Z

    return v0
.end method

.method public abstract i()V
.end method

.method public j()[B
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Ldolphin/net/http/c;->h:[B

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ldolphin/net/http/c;->h:[B

    .line 210
    :cond_0
    iget-object v0, p0, Ldolphin/net/http/c;->h:[B

    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/http/c;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
