.class public Ldolphin/net/c/e;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ldolphin/net/c/b;


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Ldolphin/net/c/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Ldolphin/net/c/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Ldolphin/net/c/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Ldolphin/net/c/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Ldolphin/net/c/e;-><init>(Landroid/content/Context;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Ldolphin/net/c/e;->a:Ljava/util/LinkedHashMap;

    .line 200
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Ldolphin/net/c/e;->b:Ljava/util/LinkedHashMap;

    .line 201
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Ldolphin/net/c/e;->c:Ljava/util/LinkedHashMap;

    .line 203
    new-instance v0, Ldolphin/net/c/f;

    invoke-direct {v0, p0, p2}, Ldolphin/net/c/f;-><init>(Ldolphin/net/c/e;I)V

    iput-object v0, p0, Ldolphin/net/c/e;->e:Ldolphin/net/c/f;

    .line 204
    iget-object v0, p0, Ldolphin/net/c/e;->e:Ldolphin/net/c/f;

    invoke-virtual {v0}, Ldolphin/net/c/f;->a()V

    .line 206
    iput-object p1, p0, Ldolphin/net/c/e;->d:Landroid/content/Context;

    .line 207
    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldolphin/net/http/e;->a(Landroid/content/Context;)V

    .line 208
    return-void
.end method

.method static synthetic a(Ldolphin/net/c/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ldolphin/net/c/e;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/util/LinkedHashMap;)Ldolphin/net/c/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Ldolphin/net/c/a;",
            ">;>;)",
            "Ldolphin/net/c/a;"
        }
    .end annotation

    .prologue
    .line 599
    const/4 v2, 0x0

    .line 600
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 601
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 604
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldolphin/net/c/a;

    .line 605
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_0
    return-object v2
.end method


# virtual methods
.method public declared-synchronized a()Ldolphin/net/c/a;
    .locals 2

    .prologue
    .line 460
    monitor-enter p0

    const/4 v0, 0x0

    .line 468
    :try_start_0
    iget-object v1, p0, Ldolphin/net/c/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 469
    iget-object v0, p0, Ldolphin/net/c/e;->a:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Ldolphin/net/c/e;->a(Ljava/util/LinkedHashMap;)Ldolphin/net/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 477
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 470
    :cond_1
    :try_start_1
    iget-object v1, p0, Ldolphin/net/c/e;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 471
    iget-object v0, p0, Ldolphin/net/c/e;->b:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Ldolphin/net/c/e;->a(Ljava/util/LinkedHashMap;)Ldolphin/net/c/a;

    move-result-object v0

    goto :goto_0

    .line 472
    :cond_2
    iget-object v1, p0, Ldolphin/net/c/e;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    iget-object v0, p0, Ldolphin/net/c/e;->c:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Ldolphin/net/c/e;->a(Ljava/util/LinkedHashMap;)Ldolphin/net/c/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lorg/apache/http/HttpHost;)Ldolphin/net/c/a;
    .locals 2

    .prologue
    .line 484
    monitor-enter p0

    const/4 v1, 0x0

    .line 496
    :try_start_0
    iget-object v0, p0, Ldolphin/net/c/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Ldolphin/net/c/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 498
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/net/c/a;

    .line 499
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/net/c/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 500
    :cond_1
    :try_start_1
    iget-object v0, p0, Ldolphin/net/c/e;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Ldolphin/net/c/e;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 502
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/net/c/a;

    .line 503
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/net/c/e;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 504
    :cond_2
    :try_start_2
    iget-object v0, p0, Ldolphin/net/c/e;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Ldolphin/net/c/e;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 506
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldolphin/net/c/a;

    .line 507
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/net/c/e;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ldolphin/net/http/l;Ljava/io/InputStream;I)Ldolphin/net/c/c;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldolphin/net/e;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ldolphin/net/http/l;",
            "Ljava/io/InputStream;",
            "I)",
            "Ldolphin/net/c/c;"
        }
    .end annotation

    .prologue
    .line 337
    const-string v0, "Network"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RequestQueue-Network-EnQueue]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v0, "PERF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RequestQueue-Network-EnQueue]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Ldolphin/net/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ldolphin/net/e;->c()I

    move-result v1

    invoke-virtual {p2}, Ldolphin/net/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 346
    new-instance v0, Ldolphin/net/c/a;

    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/net/http/e;->b()Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-virtual {p2}, Ldolphin/net/e;->d()Ljava/lang/String;

    move-result-object v4

    move-object v1, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p5

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ldolphin/net/c/a;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILdolphin/net/http/l;Ljava/util/Map;)V

    .line 351
    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v1

    invoke-virtual {v1, v2}, Ldolphin/net/http/e;->a(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 352
    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v2

    iget-object v3, p0, Ldolphin/net/c/e;->d:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Ldolphin/net/http/e;->a(Landroid/content/Context;Lorg/apache/http/HttpHost;)Ldolphin/net/http/c;

    move-result-object v1

    .line 353
    new-instance v10, Ldolphin/net/c/h;

    iget-object v2, p0, Ldolphin/net/c/e;->d:Landroid/content/Context;

    new-instance v3, Ldolphin/net/c/g;

    invoke-direct {v3}, Ldolphin/net/c/g;-><init>()V

    invoke-direct {v10, v2, v1, v3}, Ldolphin/net/c/h;-><init>(Landroid/content/Context;Ldolphin/net/http/c;Ldolphin/net/c/b;)V

    .line 357
    new-instance v1, Ldolphin/net/c/c;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object v9, v0

    invoke-direct/range {v1 .. v10}, Ldolphin/net/c/c;-><init>(Ldolphin/net/c/e;Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILdolphin/net/c/a;Ldolphin/net/c/h;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ldolphin/net/http/l;Ljava/io/InputStream;ILdolphin/net/c/d;)Ldolphin/net/c/c;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldolphin/net/e;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ldolphin/net/http/l;",
            "Ljava/io/InputStream;",
            "I",
            "Ldolphin/net/c/d;",
            ")",
            "Ldolphin/net/c/c;"
        }
    .end annotation

    .prologue
    .line 278
    const-string v1, "Network"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RequestQueue-Network-EnQueue]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, "PERF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RequestQueue-Network-EnQueue]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-nez p5, :cond_0

    .line 284
    new-instance v8, Ldolphin/net/http/z;

    invoke-direct {v8}, Ldolphin/net/http/z;-><init>()V

    .line 289
    :goto_0
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Ldolphin/net/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ldolphin/net/e;->c()I

    move-result v2

    invoke-virtual {p2}, Ldolphin/net/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    new-instance v1, Ldolphin/net/c/a;

    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/net/http/e;->b()Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-virtual {p2}, Ldolphin/net/e;->d()Ljava/lang/String;

    move-result-object v5

    move-object v2, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Ldolphin/net/c/a;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILdolphin/net/http/l;Ljava/util/Map;)V

    .line 293
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ldolphin/net/c/a;->a(Ldolphin/net/c/d;)V

    .line 294
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ldolphin/net/c/e;->a(Ldolphin/net/c/a;Z)V

    .line 296
    iget-object v2, p0, Ldolphin/net/c/e;->e:Ldolphin/net/c/f;

    invoke-static {v2}, Ldolphin/net/c/f;->a(Ldolphin/net/c/f;)I

    .line 300
    iget-object v2, p0, Ldolphin/net/c/e;->e:Ldolphin/net/c/f;

    invoke-virtual {v2}, Ldolphin/net/c/f;->c()V

    .line 302
    new-instance v2, Ldolphin/net/c/c;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Ldolphin/net/c/c;-><init>(Ldolphin/net/c/e;Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILdolphin/net/c/a;)V

    return-object v2

    :cond_0
    move-object/from16 v8, p5

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ldolphin/net/http/l;Ljava/io/InputStream;I)Ldolphin/net/c/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ldolphin/net/http/l;",
            "Ljava/io/InputStream;",
            "I)",
            "Ldolphin/net/c/c;"
        }
    .end annotation

    .prologue
    .line 250
    sget-object v7, Ldolphin/net/c/d;->a:Ldolphin/net/c/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Ldolphin/net/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ldolphin/net/http/l;Ljava/io/InputStream;ILdolphin/net/c/d;)Ldolphin/net/c/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ldolphin/net/http/l;Ljava/io/InputStream;ILdolphin/net/c/d;)Ldolphin/net/c/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ldolphin/net/http/l;",
            "Ljava/io/InputStream;",
            "I",
            "Ldolphin/net/c/d;",
            ")",
            "Ldolphin/net/c/c;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v2, Ldolphin/net/e;

    invoke-direct {v2, p1}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 259
    invoke-virtual/range {v0 .. v8}, Ldolphin/net/c/e;->a(Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ldolphin/net/http/l;Ljava/io/InputStream;ILdolphin/net/c/d;)Ldolphin/net/c/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldolphin/net/c/a;)V
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ldolphin/net/c/e;->a(Ldolphin/net/c/a;Z)V

    .line 528
    return-void
.end method

.method protected declared-synchronized a(Ldolphin/net/c/a;Z)V
    .locals 3

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Ldolphin/net/c/a;->e:Lorg/apache/http/HttpHost;

    if-nez v0, :cond_0

    iget-object v0, p1, Ldolphin/net/c/a;->d:Lorg/apache/http/HttpHost;

    move-object v1, v0

    .line 550
    :goto_0
    sget-object v0, Ldolphin/net/c/d;->c:Ldolphin/net/c/d;

    .line 554
    invoke-virtual {p1}, Ldolphin/net/c/a;->g()Ldolphin/net/c/d;

    move-result-object v0

    .line 559
    sget-object v2, Ldolphin/net/c/d;->c:Ldolphin/net/c/d;

    if-ne v0, v2, :cond_2

    .line 560
    iget-object v0, p0, Ldolphin/net/c/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Ldolphin/net/c/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 582
    :goto_1
    if-eqz p2, :cond_6

    .line 583
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :goto_2
    monitor-exit p0

    return-void

    .line 538
    :cond_0
    :try_start_1
    iget-object v0, p1, Ldolphin/net/c/a;->e:Lorg/apache/http/HttpHost;

    move-object v1, v0

    goto :goto_0

    .line 563
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 564
    iget-object v2, p0, Ldolphin/net/c/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 566
    :cond_2
    :try_start_2
    sget-object v2, Ldolphin/net/c/d;->b:Ldolphin/net/c/d;

    if-ne v0, v2, :cond_4

    .line 567
    iget-object v0, p0, Ldolphin/net/c/e;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 568
    iget-object v0, p0, Ldolphin/net/c/e;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    goto :goto_1

    .line 570
    :cond_3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 571
    iget-object v2, p0, Ldolphin/net/c/e;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 574
    :cond_4
    iget-object v0, p0, Ldolphin/net/c/e;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 575
    iget-object v0, p0, Ldolphin/net/c/e;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    goto :goto_1

    .line 577
    :cond_5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 578
    iget-object v2, p0, Ldolphin/net/c/e;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 585
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/net/http/e;->c()V

    .line 218
    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/net/http/e;->b()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Ldolphin/net/c/e;->e:Ldolphin/net/c/f;

    invoke-virtual {v0}, Ldolphin/net/c/f;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lorg/apache/http/HttpHost;)Z
    .locals 1

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/c/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/net/c/e;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/net/c/e;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Ldolphin/net/http/e;->a()Ldolphin/net/http/e;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/net/http/e;->b()Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Ldolphin/net/c/e;->e:Ldolphin/net/c/f;

    invoke-virtual {v0}, Ldolphin/net/c/f;->b()V

    .line 535
    return-void
.end method
