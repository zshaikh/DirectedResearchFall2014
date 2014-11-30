.class public Lorg/b/d/a/a;
.super Lorg/b/b/a/b;
.source "WebSocketTransport.java"

# interfaces
.implements Lorg/b/b/a/i;


# instance fields
.field private final b:Lorg/c/a/e/d;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/b/d/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lorg/c/a/e/o;

.field private volatile e:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile f:Z

.field private volatile g:Ljava/lang/String;

.field private volatile h:J

.field private volatile i:J

.field private volatile j:I

.field private volatile k:I

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Lorg/c/a/e/e;

.field private volatile q:Lorg/b/b/a/j;

.field private volatile r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lorg/c/a/e/o;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/c/a/e/o;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    const-string v0, "websocket"

    invoke-direct {p0, v0, p1}, Lorg/b/b/a/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    new-instance v0, Lorg/b/d/a/c;

    invoke-direct {v0, p0}, Lorg/b/d/a/c;-><init>(Lorg/b/d/a/a;)V

    iput-object v0, p0, Lorg/b/d/a/a;->b:Lorg/c/a/e/d;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/b/d/a/a;->c:Ljava/util/Map;

    .line 89
    const-string v0, "cometd"

    iput-object v0, p0, Lorg/b/d/a/a;->g:Ljava/lang/String;

    .line 90
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lorg/b/d/a/a;->h:J

    .line 91
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/b/d/a/a;->i:J

    .line 92
    const v0, 0xea60

    iput v0, p0, Lorg/b/d/a/a;->j:I

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/b/d/a/a;->o:Z

    .line 105
    iput-object p2, p0, Lorg/b/d/a/a;->d:Lorg/c/a/e/o;

    .line 106
    iput-object p3, p0, Lorg/b/d/a/a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 107
    const-string v0, "ws"

    invoke-virtual {p0, v0}, Lorg/b/d/a/a;->e(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method static synthetic a(Lorg/b/d/a/a;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lorg/b/d/a/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Lorg/c/a/e/o;)Lorg/b/d/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/c/a/e/o;",
            ")",
            "Lorg/b/d/a/a;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/b/d/a/a;->a(Ljava/util/Map;Lorg/c/a/e/o;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/b/d/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Lorg/c/a/e/o;Ljava/util/concurrent/ScheduledExecutorService;)Lorg/b/d/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/c/a/e/o;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lorg/b/d/a/a;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lorg/b/d/a/a;

    invoke-direct {v0, p0, p1, p2}, Lorg/b/d/a/a;-><init>(Ljava/util/Map;Lorg/c/a/e/o;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 70
    invoke-virtual {p1}, Lorg/c/a/e/o;->r()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lorg/c/a/e/o;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lorg/b/a/d;)Lorg/b/d/a/d;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 356
    iget-object v0, p0, Lorg/b/d/a/a;->c:Ljava/util/Map;

    invoke-interface {p1}, Lorg/b/a/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d/a/d;

    .line 357
    const-string v1, "/meta/connect"

    invoke-interface {p1}, Lorg/b/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    iput-boolean v3, p0, Lorg/b/d/a/a;->l:Z

    .line 362
    :cond_0
    :goto_0
    const-string v1, "Deregistering {} for message {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {p0, v1, v2}, Lorg/b/d/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    if-eqz v0, :cond_1

    .line 365
    invoke-static {v0}, Lorg/b/d/a/d;->a(Lorg/b/d/a/d;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 367
    :cond_1
    return-object v0

    .line 359
    :cond_2
    const-string v1, "/meta/disconnect"

    invoke-interface {p1}, Lorg/b/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iput-boolean v4, p0, Lorg/b/d/a/a;->m:Z

    goto :goto_0
.end method

.method static synthetic a(Lorg/b/d/a/a;Lorg/b/a/d;)Lorg/b/d/a/d;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/b/d/a/a;->a(Lorg/b/a/d;)Lorg/b/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/b/d/a/a;)Lorg/c/a/e/e;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/b/d/a/a;->p:Lorg/c/a/e/e;

    return-object v0
.end method

.method static synthetic a(Lorg/b/d/a/a;Lorg/c/a/e/e;)Lorg/c/a/e/e;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lorg/b/d/a/a;->p:Lorg/c/a/e/e;

    return-object p1
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 377
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/b/d/a/a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 378
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/d/a/d;

    .line 380
    invoke-static {v0}, Lorg/b/d/a/d;->b(Lorg/b/d/a/d;)Lorg/b/a/e;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/b/d/a/a;->a(Lorg/b/a/d;)Lorg/b/d/a/d;

    .line 381
    invoke-static {v0}, Lorg/b/d/a/d;->c(Lorg/b/d/a/d;)Lorg/b/b/a/j;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/b/a/d;

    const/4 v4, 0x0

    invoke-static {v0}, Lorg/b/d/a/d;->b(Lorg/b/d/a/d;)Lorg/b/a/e;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v2, p1, v3}, Lorg/b/b/a/j;->c(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    goto :goto_0

    .line 383
    :cond_0
    return-void
.end method

.method private a(Lorg/b/a/e;Lorg/b/b/a/j;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 308
    invoke-direct {p0}, Lorg/b/d/a/a;->i()J

    move-result-wide v1

    .line 309
    const-string v0, "/meta/connect"

    invoke-interface {p1}, Lorg/b/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    invoke-interface {p1}, Lorg/b/a/e;->a()Ljava/util/Map;

    move-result-object v0

    .line 312
    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/b/d/a/a;->r:Ljava/util/Map;

    .line 314
    :cond_0
    if-eqz v0, :cond_3

    .line 316
    const-string v3, "timeout"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 318
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    .line 322
    :goto_0
    iput-boolean v9, p0, Lorg/b/d/a/a;->l:Z

    move-wide v6, v0

    .line 326
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, v6

    .line 327
    iget-object v8, p0, Lorg/b/d/a/a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lorg/b/d/a/b;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/b/d/a/b;-><init>(Lorg/b/d/a/a;JLorg/b/a/e;Lorg/b/b/a/j;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v0, v6, v7, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 346
    new-instance v1, Lorg/b/d/a/d;

    invoke-direct {v1, p1, p2, v0}, Lorg/b/d/a/d;-><init>(Lorg/b/a/e;Lorg/b/b/a/j;Ljava/util/concurrent/ScheduledFuture;)V

    .line 347
    const-string v0, "Registering {}"

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lorg/b/d/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lorg/b/d/a/a;->c:Ljava/util/Map;

    invoke-interface {p1}, Lorg/b/a/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_2

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 319
    :cond_1
    if-eqz v0, :cond_3

    .line 320
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    goto :goto_0

    .line 352
    :cond_2
    return-void

    :cond_3
    move-wide v0, v1

    goto :goto_0

    :cond_4
    move-wide v6, v1

    goto :goto_1
.end method

.method static synthetic a(Lorg/b/d/a/a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/b/d/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lorg/b/d/a/a;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/b/d/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Lorg/b/b/a/j;[Lorg/b/a/e;)Lorg/c/a/e/e;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 219
    iget-object v0, p0, Lorg/b/d/a/a;->p:Lorg/c/a/e/e;

    .line 220
    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-object v0

    .line 226
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/b/d/a/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, "^http"

    const-string v2, "ws"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 229
    const-string v0, "Opening websocket connection to {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lorg/b/d/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 233
    invoke-virtual {p0}, Lorg/b/d/a/a;->f()Lorg/b/b/a/d;

    move-result-object v0

    invoke-interface {v0}, Lorg/b/b/a/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/b/a/c;

    .line 234
    invoke-virtual {v0}, Lorg/b/b/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/b/b/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 247
    invoke-interface {p1, v0, p2}, Lorg/b/b/a/j;->b(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    .line 288
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/b/d/a/a;->p:Lorg/c/a/e/e;

    goto :goto_0

    .line 236
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/b/d/a/a;->h()Lorg/c/a/e/l;

    move-result-object v0

    .line 237
    iget-object v3, p0, Lorg/b/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/c/a/e/l;->a(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lorg/c/a/e/l;->e()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 240
    iget-object v2, p0, Lorg/b/d/a/a;->b:Lorg/c/a/e/d;

    invoke-direct {p0}, Lorg/b/d/a/a;->j()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v5}, Lorg/c/a/e/l;->a(Ljava/net/URI;Lorg/c/a/e/d;JLjava/util/concurrent/TimeUnit;)Lorg/c/a/e/e;

    move-result-object v0

    iput-object v0, p0, Lorg/b/d/a/a;->p:Lorg/c/a/e/e;

    .line 242
    iget-boolean v0, p0, Lorg/b/d/a/a;->n:Z

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, p2}, Lorg/b/b/a/j;->c(Ljava/lang/Throwable;[Lorg/b/a/d;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_2

    .line 249
    :catch_1
    move-exception v0

    .line 251
    invoke-interface {p1, v0, p2}, Lorg/b/b/a/j;->b(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    goto :goto_2

    .line 253
    :catch_2
    move-exception v0

    .line 255
    invoke-interface {p1, v0, p2}, Lorg/b/b/a/j;->b(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    goto :goto_2

    .line 257
    :catch_3
    move-exception v0

    .line 259
    invoke-interface {p1, v0, p2}, Lorg/b/b/a/j;->b(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    goto :goto_2

    .line 261
    :catch_4
    move-exception v0

    .line 264
    iput-boolean v6, p0, Lorg/b/d/a/a;->o:Z

    .line 266
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 267
    const-string v2, "websocketCode"

    const/16 v3, 0x3ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v2, "(\\d+){3}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 274
    const/16 v3, 0x64

    if-le v2, v3, :cond_3

    const/16 v3, 0x258

    if-ge v2, v3, :cond_3

    .line 275
    const-string v3, "httpCode"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_3
    new-instance v2, Lorg/b/c/p;

    invoke-direct {v2, v0, v1}, Lorg/b/c/p;-><init>(Ljava/lang/Throwable;Ljava/util/Map;)V

    invoke-interface {p1, v2, p2}, Lorg/b/b/a/j;->c(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    goto/16 :goto_2

    .line 279
    :catch_5
    move-exception v0

    .line 281
    invoke-interface {p1, v0, p2}, Lorg/b/b/a/j;->b(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    goto/16 :goto_2

    .line 283
    :catch_6
    move-exception v0

    .line 286
    invoke-interface {p1, v0, p2}, Lorg/b/b/a/j;->c(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    goto/16 :goto_2
.end method

.method static synthetic b(Lorg/b/d/a/a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/b/d/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private b([Lorg/b/a/e;)V
    .locals 3

    .prologue
    .line 301
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 302
    invoke-direct {p0, v2}, Lorg/b/d/a/a;->a(Lorg/b/a/d;)Lorg/b/d/a/d;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method private b(Lorg/b/a/d;)Z
    .locals 1

    .prologue
    .line 372
    invoke-interface {p1}, Lorg/b/a/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/b/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lorg/b/d/a/a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/b/d/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lorg/b/d/a/a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/b/d/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private i()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/b/d/a/a;->h:J

    return-wide v0
.end method

.method private j()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/b/d/a/a;->i:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Lorg/b/b/a/b;->a()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/b/d/a/a;->n:Z

    .line 125
    const-string v0, "protocol"

    iget-object v1, p0, Lorg/b/d/a/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/b/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/b/d/a/a;->g:Ljava/lang/String;

    .line 126
    const-string v0, "maxNetworkDelay"

    iget-wide v1, p0, Lorg/b/d/a/a;->h:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/b/d/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/b/d/a/a;->h:J

    .line 127
    const-string v0, "connectTimeout"

    iget-wide v1, p0, Lorg/b/d/a/a;->i:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/b/d/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/b/d/a/a;->i:J

    .line 128
    const-string v0, "idleTimeout"

    iget v1, p0, Lorg/b/d/a/a;->j:I

    invoke-virtual {p0, v0, v1}, Lorg/b/d/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/b/d/a/a;->j:I

    .line 129
    const-string v0, "maxMessageSize"

    iget-object v1, p0, Lorg/b/d/a/a;->d:Lorg/c/a/e/o;

    invoke-virtual {v1}, Lorg/c/a/e/o;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/b/d/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/b/d/a/a;->k:I

    .line 130
    iget-object v0, p0, Lorg/b/d/a/a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/b/d/a/a;->f:Z

    .line 133
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/b/d/a/a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 135
    :cond_0
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/b/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/e;

    .line 389
    invoke-direct {p0, v0}, Lorg/b/d/a/a;->b(Lorg/b/a/d;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 394
    const-string v2, "/meta/connect"

    invoke-interface {v0}, Lorg/b/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/b/a/e;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    invoke-interface {v0}, Lorg/b/a/e;->a()Ljava/util/Map;

    move-result-object v2

    .line 397
    if-eqz v2, :cond_1

    .line 400
    const-string v3, "timeout"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 401
    iput-object v2, p0, Lorg/b/d/a/a;->r:Ljava/util/Map;

    .line 405
    :cond_1
    invoke-direct {p0, v0}, Lorg/b/d/a/a;->a(Lorg/b/a/d;)Lorg/b/d/a/d;

    move-result-object v2

    .line 406
    if-eqz v2, :cond_2

    .line 408
    invoke-static {v2}, Lorg/b/d/a/d;->c(Lorg/b/d/a/d;)Lorg/b/b/a/j;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/b/a/j;->a(Ljava/util/List;)V

    .line 416
    :goto_1
    iget-boolean v0, p0, Lorg/b/d/a/a;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/b/d/a/a;->l:Z

    if-nez v0, :cond_0

    .line 417
    const-string v0, "Disconnect"

    invoke-virtual {p0, v0}, Lorg/b/d/a/a;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_2
    const-string v2, "Could not find request for reply {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/b/d/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 421
    :cond_3
    iget-object v2, p0, Lorg/b/d/a/a;->q:Lorg/b/b/a/j;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/b/b/a/j;->a(Ljava/util/List;)V

    goto :goto_0

    .line 424
    :cond_4
    return-void
.end method

.method public a(Lorg/b/b/a/j;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lorg/b/d/a/a;->q:Lorg/b/b/a/j;

    .line 113
    return-void
.end method

.method public varargs a(Lorg/b/b/a/j;[Lorg/b/a/e;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 188
    iget-boolean v1, p0, Lorg/b/d/a/a;->n:Z

    if-eqz v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Aborted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/b/d/a/a;->b(Lorg/b/b/a/j;[Lorg/b/a/e;)Lorg/c/a/e/e;

    move-result-object v1

    .line 194
    if-nez v1, :cond_1

    .line 215
    :goto_0
    return-void

    .line 197
    :cond_1
    array-length v2, p2

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p2, v0

    .line 198
    invoke-direct {p0, v3, p1}, Lorg/b/d/a/a;->a(Lorg/b/a/e;Lorg/b/b/a/j;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {p0, p2}, Lorg/b/d/a/a;->a([Lorg/b/a/e;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v2, "Sending messages {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/b/d/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-interface {p1, p2}, Lorg/b/b/a/j;->a([Lorg/b/a/d;)V

    .line 207
    invoke-interface {v1, v0}, Lorg/c/a/e/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 211
    invoke-direct {p0, p2}, Lorg/b/d/a/a;->b([Lorg/b/a/e;)V

    .line 212
    const-string v1, "Exception"

    invoke-virtual {p0, v1}, Lorg/b/d/a/a;->f(Ljava/lang/String;)V

    .line 213
    invoke-interface {p1, v0, p2}, Lorg/b/b/a/j;->c(Ljava/lang/Throwable;[Lorg/b/a/d;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/b/d/a/a;->o:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/b/d/a/a;->n:Z

    .line 151
    const-string v0, "Aborted"

    invoke-virtual {p0, v0}, Lorg/b/d/a/a;->f(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lorg/b/d/a/a;->d()V

    .line 153
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lorg/b/b/a/b;->d()V

    .line 159
    iget-boolean v0, p0, Lorg/b/d/a/a;->f:Z

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/b/d/a/a;->f:Z

    .line 162
    iget-object v0, p0, Lorg/b/d/a/a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/b/d/a/a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 165
    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lorg/b/d/a/a;->p:Lorg/c/a/e/e;

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/b/d/a/a;->p:Lorg/c/a/e/e;

    .line 178
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/c/a/e/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "Closing websocket connection {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/b/d/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    const/16 v1, 0x3e8

    invoke-interface {v0, v1, p1}, Lorg/c/a/e/e;->a(ILjava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method protected h()Lorg/c/a/e/l;
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lorg/b/d/a/a;->d:Lorg/c/a/e/o;

    invoke-virtual {v0}, Lorg/c/a/e/o;->e()Lorg/c/a/e/l;

    move-result-object v0

    .line 294
    iget v1, p0, Lorg/b/d/a/a;->k:I

    invoke-virtual {v0, v1}, Lorg/c/a/e/l;->b(I)V

    .line 295
    iget v1, p0, Lorg/b/d/a/a;->j:I

    invoke-virtual {v0, v1}, Lorg/c/a/e/l;->a(I)V

    .line 296
    return-object v0
.end method
