.class Lorg/c/a/e/p;
.super Lorg/c/a/c/d;
.source "WebSocketClientFactory.java"

# interfaces
.implements Lorg/c/a/c/b/a;


# instance fields
.field final synthetic a:Lorg/c/a/e/o;

.field private final b:Lorg/c/a/c/e;

.field private final c:Lorg/c/a/e/n;

.field private final d:Ljava/lang/String;

.field private final e:Lorg/c/a/b/q;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lorg/c/a/c/o;


# direct methods
.method public constructor <init>(Lorg/c/a/e/o;Lorg/c/a/c/e;Lorg/c/a/e/n;)V
    .locals 4

    .prologue
    .line 377
    iput-object p1, p0, Lorg/c/a/e/p;->a:Lorg/c/a/e/o;

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lorg/c/a/c/d;-><init>(Lorg/c/a/c/s;J)V

    .line 379
    iput-object p2, p0, Lorg/c/a/e/p;->b:Lorg/c/a/c/e;

    .line 380
    iput-object p3, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    .line 382
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 383
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 384
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/c/a/d/b;->a([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lorg/c/a/e/p;->d:Ljava/lang/String;

    .line 386
    new-instance v0, Lorg/c/a/c/v;

    invoke-static {p1}, Lorg/c/a/e/o;->b(Lorg/c/a/e/o;)Lorg/c/a/e/k;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/e/k;->a()Lorg/c/a/c/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/c/a/c/v;-><init>(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 387
    new-instance v1, Lorg/c/a/b/q;

    iget-object v2, p0, Lorg/c/a/e/p;->b:Lorg/c/a/c/e;

    new-instance v3, Lorg/c/a/e/q;

    invoke-direct {v3, p0, p1}, Lorg/c/a/e/q;-><init>(Lorg/c/a/e/p;Lorg/c/a/e/o;)V

    invoke-direct {v1, v0, v2, v3}, Lorg/c/a/b/q;-><init>(Lorg/c/a/c/l;Lorg/c/a/c/s;Lorg/c/a/b/r;)V

    iput-object v1, p0, Lorg/c/a/e/p;->e:Lorg/c/a/b/q;

    .line 422
    return-void
.end method

.method static synthetic a(Lorg/c/a/e/p;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lorg/c/a/e/p;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lorg/c/a/e/p;)Lorg/c/a/c/e;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/c/a/e/p;->b:Lorg/c/a/c/e;

    return-object v0
.end method

.method private a()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lorg/c/a/e/p;->h:Lorg/c/a/c/o;

    if-nez v0, :cond_6

    .line 428
    iget-object v0, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v0}, Lorg/c/a/e/n;->d()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 430
    :cond_0
    const-string v0, "/"

    .line 432
    :cond_1
    iget-object v2, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v2}, Lorg/c/a/e/n;->d()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v2}, Lorg/c/a/e/n;->d()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    :cond_2
    iget-object v2, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v2}, Lorg/c/a/e/n;->f()Ljava/lang/String;

    move-result-object v2

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 438
    const-string v4, "GET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " HTTP/1.1\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Host: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v4}, Lorg/c/a/e/n;->d()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v4}, Lorg/c/a/e/n;->d()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Upgrade: websocket\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Connection: Upgrade\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Sec-WebSocket-Key: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/c/a/e/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    if-eqz v2, :cond_3

    .line 447
    const-string v0, "Origin: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_3
    const-string v0, "Sec-WebSocket-Version: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-object v0, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v0}, Lorg/c/a/e/n;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 452
    const-string v0, "Sec-WebSocket-Protocol: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v2}, Lorg/c/a/e/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_4
    iget-object v0, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v0}, Lorg/c/a/e/n;->a()Ljava/util/Map;

    move-result-object v2

    .line 455
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 457
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    const-string v5, "Cookie: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\\\n\r\t\u000c\u0008%+ ;="

    invoke-static {v0, v6}, Lorg/c/a/d/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "\"\\\n\r\t\u000c\u0008%+ ;="

    invoke-static {v0, v6}, Lorg/c/a/d/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 465
    :cond_5
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    new-instance v0, Lorg/c/a/c/o;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/c/a/c/o;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/c/a/e/p;->h:Lorg/c/a/c/o;

    .line 474
    :cond_6
    :try_start_0
    iget-object v0, p0, Lorg/c/a/e/p;->h:Lorg/c/a/c/o;

    invoke-virtual {v0}, Lorg/c/a/c/o;->m()I

    .line 475
    iget-object v0, p0, Lorg/c/a/e/p;->b:Lorg/c/a/c/e;

    iget-object v2, p0, Lorg/c/a/e/p;->h:Lorg/c/a/c/o;

    invoke-interface {v0, v2}, Lorg/c/a/c/e;->b(Lorg/c/a/c/f;)I

    move-result v0

    .line 476
    if-gez v0, :cond_7

    .line 477
    new-instance v0, Ljava/io/IOException;

    const-string v2, "incomplete handshake"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :catch_0
    move-exception v0

    .line 481
    iget-object v2, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v2, v0}, Lorg/c/a/e/n;->a(Ljava/lang/Throwable;)V

    .line 483
    :cond_7
    iget-object v0, p0, Lorg/c/a/e/p;->h:Lorg/c/a/c/o;

    invoke-virtual {v0}, Lorg/c/a/c/o;->m()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lorg/c/a/e/p;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/c/a/e/p;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lorg/c/a/e/p;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lorg/c/a/e/p;->f:Ljava/lang/String;

    return-object p1
.end method

.method private d()Lorg/c/a/e/t;
    .locals 12

    .prologue
    .line 532
    invoke-static {}, Lorg/c/a/e/o;->f()Lorg/c/a/d/c/d;

    move-result-object v0

    const-string v1, "newWebSocketConnection()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    new-instance v0, Lorg/c/a/e/r;

    iget-object v1, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    iget-object v1, v1, Lorg/c/a/e/n;->c:Lorg/c/a/e/l;

    invoke-virtual {v1}, Lorg/c/a/e/l;->a()Lorg/c/a/e/o;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v2}, Lorg/c/a/e/n;->c()Lorg/c/a/e/d;

    move-result-object v2

    iget-object v3, p0, Lorg/c/a/e/p;->b:Lorg/c/a/c/e;

    iget-object v4, p0, Lorg/c/a/e/p;->a:Lorg/c/a/e/o;

    invoke-static {v4}, Lorg/c/a/e/o;->b(Lorg/c/a/e/o;)Lorg/c/a/e/k;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v7}, Lorg/c/a/e/n;->e()I

    move-result v7

    iget-object v8, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v8}, Lorg/c/a/e/n;->b()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0xd

    iget-object v11, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v11}, Lorg/c/a/e/n;->g()Lorg/c/a/e/b;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lorg/c/a/e/r;-><init>(Lorg/c/a/e/o;Lorg/c/a/e/d;Lorg/c/a/c/s;Lorg/c/a/e/k;JILjava/lang/String;Ljava/util/List;ILorg/c/a/e/b;)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lorg/c/a/e/p;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    new-instance v1, Ljava/net/ProtocolException;

    iget-object v2, p0, Lorg/c/a/e/p;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/c/a/e/n;->a(Ljava/lang/Throwable;)V

    .line 567
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    invoke-virtual {v0, v1}, Lorg/c/a/e/n;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public j()Lorg/c/a/c/r;
    .locals 3

    .prologue
    .line 488
    :cond_0
    iget-object v0, p0, Lorg/c/a/e/p;->b:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/c/a/e/p;->e:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 490
    iget-object v0, p0, Lorg/c/a/e/p;->h:Lorg/c/a/c/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/e/p;->h:Lorg/c/a/c/o;

    invoke-virtual {v0}, Lorg/c/a/c/o;->m()I

    move-result v0

    if-lez v0, :cond_3

    .line 491
    :cond_1
    invoke-direct {p0}, Lorg/c/a/e/p;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 527
    :cond_2
    :goto_0
    return-object p0

    .line 494
    :cond_3
    iget-object v0, p0, Lorg/c/a/e/p;->e:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lorg/c/a/e/p;->b:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete handshake response"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/c/a/e/n;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 501
    :cond_4
    iget-object v0, p0, Lorg/c/a/e/p;->g:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 503
    iget-object v0, p0, Lorg/c/a/e/p;->f:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 505
    const-string v0, "No Sec-WebSocket-Accept"

    iput-object v0, p0, Lorg/c/a/e/p;->g:Ljava/lang/String;

    .line 526
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/c/a/e/p;->b:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->j()V

    goto :goto_0

    .line 507
    :cond_6
    iget-object v0, p0, Lorg/c/a/e/p;->d:Ljava/lang/String;

    invoke-static {v0}, Lorg/c/a/e/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/e/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 509
    const-string v0, "Bad Sec-WebSocket-Accept"

    iput-object v0, p0, Lorg/c/a/e/p;->g:Ljava/lang/String;

    goto :goto_1

    .line 513
    :cond_7
    invoke-direct {p0}, Lorg/c/a/e/p;->d()Lorg/c/a/e/t;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lorg/c/a/e/p;->e:Lorg/c/a/b/q;

    invoke-virtual {v1}, Lorg/c/a/b/q;->j()Lorg/c/a/c/f;

    move-result-object v1

    .line 516
    invoke-interface {v1}, Lorg/c/a/c/f;->i()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 517
    invoke-interface {v0, v1}, Lorg/c/a/e/t;->a(Lorg/c/a/c/f;)V

    .line 518
    :cond_8
    iget-object v2, p0, Lorg/c/a/e/p;->a:Lorg/c/a/e/o;

    invoke-static {v2}, Lorg/c/a/e/o;->b(Lorg/c/a/e/o;)Lorg/c/a/e/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/c/a/e/k;->a(Lorg/c/a/c/f;)V

    .line 520
    iget-object v1, p0, Lorg/c/a/e/p;->c:Lorg/c/a/e/n;

    invoke-virtual {v1, v0}, Lorg/c/a/e/n;->a(Lorg/c/a/e/t;)V

    move-object p0, v0

    .line 522
    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lorg/c/a/e/p;->b:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->j()V

    .line 549
    return-void
.end method
