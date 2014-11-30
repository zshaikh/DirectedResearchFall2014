.class Lorg/c/a/a/y;
.super Lorg/c/a/c/b/j;
.source "SelectConnector.java"


# instance fields
.field a:Lorg/c/a/d/c/d;

.field final synthetic b:Lorg/c/a/a/w;


# direct methods
.method constructor <init>(Lorg/c/a/a/w;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lorg/c/a/a/y;->b:Lorg/c/a/a/w;

    invoke-direct {p0}, Lorg/c/a/c/b/j;-><init>()V

    .line 111
    invoke-static {}, Lorg/c/a/a/w;->a()Lorg/c/a/d/c/d;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/y;->a:Lorg/c/a/d/c/d;

    return-void
.end method

.method private declared-synchronized a(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;
    .locals 3

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/y;->b:Lorg/c/a/a/w;

    invoke-static {v0}, Lorg/c/a/a/w;->a(Lorg/c/a/a/w;)Lorg/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/k;->i()Lorg/c/a/d/f/b;

    move-result-object v0

    .line 181
    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    .line 185
    invoke-virtual {v0, v1, v2}, Lorg/c/a/d/f/b;->a(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 191
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 192
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-object v0

    .line 189
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/c/a/d/f/b;->i()Ljavax/net/ssl/SSLEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/e;Ljava/lang/Object;)Lorg/c/a/c/b/a;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lorg/c/a/a/g;

    iget-object v1, p0, Lorg/c/a/a/y;->b:Lorg/c/a/a/w;

    invoke-static {v1}, Lorg/c/a/a/w;->a(Lorg/c/a/a/w;)Lorg/c/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/k;->n()Lorg/c/a/c/l;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/y;->b:Lorg/c/a/a/w;

    invoke-static {v2}, Lorg/c/a/a/w;->a(Lorg/c/a/a/w;)Lorg/c/a/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/c/a/a/k;->o()Lorg/c/a/c/l;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lorg/c/a/a/g;-><init>(Lorg/c/a/c/l;Lorg/c/a/c/l;Lorg/c/a/c/s;)V

    return-object v0
.end method

.method protected a(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/b/n;Ljava/nio/channels/SelectionKey;)Lorg/c/a/c/b/g;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    iget-object v0, p0, Lorg/c/a/a/y;->b:Lorg/c/a/a/w;

    invoke-static {v0}, Lorg/c/a/a/w;->b(Lorg/c/a/a/w;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/g/f;

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lorg/c/a/d/g/f;->b()V

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/c/a/a/y;->a:Lorg/c/a/d/c/d;

    invoke-interface {v0}, Lorg/c/a/d/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/c/a/a/y;->a:Lorg/c/a/d/c/d;

    const-string v1, "Channels with connection pending: {}"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/c/a/a/y;->b:Lorg/c/a/a/w;

    invoke-static {v3}, Lorg/c/a/a/w;->b(Lorg/c/a/a/w;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_1
    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/o;

    .line 153
    new-instance v3, Lorg/c/a/c/b/g;

    iget-object v1, p0, Lorg/c/a/a/y;->b:Lorg/c/a/a/w;

    invoke-static {v1}, Lorg/c/a/a/w;->a(Lorg/c/a/a/w;)Lorg/c/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/k;->j()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v3, p1, p2, p3, v1}, Lorg/c/a/c/b/g;-><init>(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/b/n;Ljava/nio/channels/SelectionKey;I)V

    .line 157
    invoke-virtual {v0}, Lorg/c/a/a/o;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lorg/c/a/a/y;->a:Lorg/c/a/d/c/d;

    const-string v2, "secure to {}, proxied={}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0}, Lorg/c/a/a/o;->i()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v1, v2, v4}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    new-instance v2, Lorg/c/a/a/z;

    invoke-direct {p0, p1}, Lorg/c/a/a/y;->a(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/c/a/a/z;-><init>(Lorg/c/a/c/e;Ljavax/net/ssl/SSLEngine;)V

    .line 163
    :goto_0
    invoke-virtual {p2}, Lorg/c/a/c/b/n;->b()Lorg/c/a/c/b/j;

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v4}, Lorg/c/a/c/b/j;->a(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/e;Ljava/lang/Object;)Lorg/c/a/c/b/a;

    move-result-object v1

    .line 164
    invoke-interface {v2, v1}, Lorg/c/a/c/e;->a(Lorg/c/a/c/r;)V

    .line 166
    check-cast v1, Lorg/c/a/a/a;

    .line 167
    invoke-virtual {v1, v0}, Lorg/c/a/a/a;->a(Lorg/c/a/a/o;)V

    .line 169
    invoke-virtual {v0}, Lorg/c/a/a/o;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lorg/c/a/a/o;->i()Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    check-cast v2, Lorg/c/a/a/z;

    invoke-virtual {v2}, Lorg/c/a/a/z;->a()V

    .line 172
    :cond_2
    invoke-virtual {v0, v1}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;)V

    .line 174
    return-object v3

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method protected a(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/c/a/a/y;->b:Lorg/c/a/a/w;

    invoke-static {v0}, Lorg/c/a/a/w;->b(Lorg/c/a/a/w;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/g/f;

    .line 205
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lorg/c/a/d/g/f;->b()V

    .line 208
    :cond_0
    instance-of v0, p3, Lorg/c/a/a/o;

    if-eqz v0, :cond_1

    .line 209
    check-cast p3, Lorg/c/a/a/o;

    invoke-virtual {p3, p2}, Lorg/c/a/a/o;->a(Ljava/lang/Throwable;)V

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/c/a/c/b/j;->a(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Lorg/c/a/c/b/g;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method protected a(Lorg/c/a/c/q;Lorg/c/a/c/r;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/c/a/a/y;->b:Lorg/c/a/a/w;

    invoke-static {v0}, Lorg/c/a/a/w;->a(Lorg/c/a/a/w;)Lorg/c/a/a/k;

    move-result-object v0

    iget-object v0, v0, Lorg/c/a/a/k;->a:Lorg/c/a/d/g/c;

    invoke-interface {v0, p1}, Lorg/c/a/d/g/c;->a(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method protected b(Lorg/c/a/c/b/g;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
