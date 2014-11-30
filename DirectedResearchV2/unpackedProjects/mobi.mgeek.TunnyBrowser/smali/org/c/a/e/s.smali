.class public Lorg/c/a/e/s;
.super Lorg/c/a/c/b/j;
.source "WebSocketClientFactory.java"


# instance fields
.field final synthetic a:Lorg/c/a/e/o;


# direct methods
.method public constructor <init>(Lorg/c/a/e/o;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lorg/c/a/e/s;->a:Lorg/c/a/e/o;

    invoke-direct {p0}, Lorg/c/a/c/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/e;Ljava/lang/Object;)Lorg/c/a/c/b/a;
    .locals 2

    .prologue
    .line 324
    check-cast p3, Lorg/c/a/e/n;

    .line 325
    new-instance v0, Lorg/c/a/e/p;

    iget-object v1, p0, Lorg/c/a/e/s;->a:Lorg/c/a/e/o;

    invoke-direct {v0, v1, p2, p3}, Lorg/c/a/e/p;-><init>(Lorg/c/a/e/o;Lorg/c/a/c/e;Lorg/c/a/e/n;)V

    return-object v0
.end method

.method protected a(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/b/n;Ljava/nio/channels/SelectionKey;)Lorg/c/a/c/b/g;
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/e/n;

    .line 299
    invoke-virtual {v0}, Lorg/c/a/e/n;->e()I

    move-result v1

    .line 300
    if-gez v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lorg/c/a/e/s;->a()J

    move-result-wide v1

    long-to-int v1, v1

    .line 302
    :cond_0
    new-instance v2, Lorg/c/a/c/b/g;

    invoke-direct {v2, p1, p2, p3, v1}, Lorg/c/a/c/b/g;-><init>(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/b/n;Ljava/nio/channels/SelectionKey;I)V

    .line 307
    const-string v1, "wss"

    invoke-virtual {v0}, Lorg/c/a/e/n;->d()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lorg/c/a/e/s;->a:Lorg/c/a/e/o;

    invoke-virtual {v1, p1}, Lorg/c/a/e/o;->a(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 310
    new-instance v3, Lorg/c/a/c/b/q;

    invoke-direct {v3, v1, v2}, Lorg/c/a/c/b/q;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/c/a/c/s;)V

    .line 311
    invoke-interface {v2, v3}, Lorg/c/a/c/e;->a(Lorg/c/a/c/r;)V

    .line 312
    invoke-virtual {v3}, Lorg/c/a/c/b/q;->d()Lorg/c/a/c/e;

    move-result-object v1

    .line 315
    :goto_0
    invoke-virtual {p2}, Lorg/c/a/c/b/n;->b()Lorg/c/a/c/b/j;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v0}, Lorg/c/a/c/b/j;->a(Ljava/nio/channels/SocketChannel;Lorg/c/a/c/e;Ljava/lang/Object;)Lorg/c/a/c/b/a;

    move-result-object v0

    .line 316
    invoke-interface {v1, v0}, Lorg/c/a/c/e;->a(Lorg/c/a/c/r;)V

    .line 318
    return-object v2

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method protected a(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 349
    instance-of v0, p3, Lorg/c/a/e/n;

    if-nez v0, :cond_0

    .line 350
    invoke-super {p0, p1, p2, p3}, Lorg/c/a/c/b/j;->a(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 358
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-static {}, Lorg/c/a/e/o;->f()Lorg/c/a/d/c/d;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/c/a/d/c/d;->b(Ljava/lang/Throwable;)V

    .line 354
    check-cast p3, Lorg/c/a/e/n;

    .line 356
    invoke-virtual {p3, p2}, Lorg/c/a/e/n;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Lorg/c/a/c/b/g;)V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method protected a(Lorg/c/a/c/q;Lorg/c/a/c/r;)V
    .locals 5

    .prologue
    .line 337
    sget-object v0, Lorg/c/a/e/s;->c:Lorg/c/a/d/c/d;

    const-string v1, "upgrade {} -> {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lorg/c/a/c/q;->b()Lorg/c/a/c/r;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/c/a/e/s;->a:Lorg/c/a/e/o;

    invoke-static {v0}, Lorg/c/a/e/o;->a(Lorg/c/a/e/o;)Lorg/c/a/d/g/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/c/a/d/g/c;->a(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method protected b(Lorg/c/a/c/b/g;)V
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p1}, Lorg/c/a/c/b/g;->b()Lorg/c/a/c/r;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/r;->c()V

    .line 344
    return-void
.end method
