.class abstract Lorg/b/b/n;
.super Ljava/lang/Object;
.source "BayeuxClient.java"


# instance fields
.field protected final b:Lorg/b/b/ac;

.field protected final c:Ljava/util/Map;
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

.field protected final d:Ljava/util/Map;
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

.field protected final e:Lorg/b/b/a/a;

.field protected final f:Ljava/lang/String;

.field protected final g:J

.field final synthetic h:Lorg/b/b/a;


# direct methods
.method private constructor <init>(Lorg/b/b/a;Lorg/b/b/ac;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b/ac;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/b/b/a/a;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1329
    iput-object p1, p0, Lorg/b/b/n;->h:Lorg/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1330
    iput-object p2, p0, Lorg/b/b/n;->b:Lorg/b/b/ac;

    .line 1331
    iput-object p3, p0, Lorg/b/b/n;->c:Ljava/util/Map;

    .line 1332
    iput-object p4, p0, Lorg/b/b/n;->d:Ljava/util/Map;

    .line 1333
    iput-object p5, p0, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    .line 1334
    iput-object p6, p0, Lorg/b/b/n;->f:Ljava/lang/String;

    .line 1335
    iput-wide p7, p0, Lorg/b/b/n;->g:J

    .line 1336
    return-void
.end method

.method synthetic constructor <init>(Lorg/b/b/a;Lorg/b/b/ac;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;JLorg/b/b/b;)V
    .locals 0

    .prologue
    .line 1314
    invoke-direct/range {p0 .. p8}, Lorg/b/b/n;-><init>(Lorg/b/b/a;Lorg/b/b/ac;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic b(Lorg/b/b/n;)J
    .locals 2

    .prologue
    .line 1314
    invoke-direct {p0}, Lorg/b/b/n;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private d()J
    .locals 4

    .prologue
    .line 1386
    iget-wide v0, p0, Lorg/b/b/n;->g:J

    iget-object v2, p0, Lorg/b/b/n;->h:Lorg/b/b/a;

    invoke-virtual {v2}, Lorg/b/b/a;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/b/b/n;->h:Lorg/b/b/a;

    invoke-virtual {v2}, Lorg/b/b/a;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected varargs a(Lorg/b/b/a/j;[Lorg/b/a/e;)V
    .locals 6

    .prologue
    .line 1349
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1350
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1352
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/e;

    .line 1354
    iget-object v1, p0, Lorg/b/b/n;->h:Lorg/b/b/a;

    invoke-static {v1}, Lorg/b/b/a;->b(Lorg/b/b/a;)Ljava/lang/String;

    move-result-object v4

    .line 1355
    invoke-interface {v0, v4}, Lorg/b/a/e;->c(Ljava/lang/String;)V

    .line 1357
    iget-object v1, p0, Lorg/b/b/n;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1358
    iget-object v1, p0, Lorg/b/b/n;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/b/a/e;->b(Ljava/lang/String;)V

    .line 1361
    :cond_1
    const-string v1, "org.cometd.client.publishCallback"

    invoke-interface {v0, v1}, Lorg/b/a/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/b/a/a/e;

    .line 1363
    iget-object v5, p0, Lorg/b/b/n;->h:Lorg/b/b/a;

    invoke-static {v5, v0}, Lorg/b/b/a;->a(Lorg/b/b/a;Lorg/b/a/e;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1368
    invoke-interface {v0, v4}, Lorg/b/a/e;->c(Ljava/lang/String;)V

    .line 1369
    if-eqz v1, :cond_0

    .line 1370
    iget-object v0, p0, Lorg/b/b/n;->h:Lorg/b/b/a;

    invoke-static {v0}, Lorg/b/b/a;->c(Lorg/b/b/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1374
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1377
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1379
    iget-object v0, p0, Lorg/b/b/n;->h:Lorg/b/b/a;

    const-string v1, "Sending messages {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/b/b/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    iget-object v1, p0, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/b/a/e;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/b/a/e;

    invoke-virtual {v1, p1, v0}, Lorg/b/b/a/a;->a(Lorg/b/b/a/j;[Lorg/b/a/e;)V

    .line 1382
    :cond_4
    return-void
.end method

.method protected a(Lorg/b/b/ac;)V
    .locals 0

    .prologue
    .line 1400
    return-void
.end method

.method protected abstract a(Lorg/b/b/n;)Z
.end method

.method protected b()J
    .locals 4

    .prologue
    .line 1340
    const-wide/16 v0, 0x0

    .line 1341
    iget-object v2, p0, Lorg/b/b/n;->d:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/b/b/n;->d:Ljava/util/Map;

    const-string v3, "interval"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1342
    iget-object v0, p0, Lorg/b/b/n;->d:Ljava/util/Map;

    const-string v1, "interval"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1343
    :cond_0
    return-wide v0
.end method

.method public c()Lorg/b/b/ac;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lorg/b/b/n;->b:Lorg/b/b/ac;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lorg/b/b/n;->b:Lorg/b/b/ac;

    invoke-virtual {v0}, Lorg/b/b/ac;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
