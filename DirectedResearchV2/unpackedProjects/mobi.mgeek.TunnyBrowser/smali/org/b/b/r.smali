.class Lorg/b/b/r;
.super Lorg/b/b/n;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/a;


# direct methods
.method private constructor <init>(Lorg/b/b/a;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ")V"
        }
    .end annotation

    .prologue
    .line 1550
    iput-object p1, p0, Lorg/b/b/r;->a:Lorg/b/b/a;

    .line 1551
    sget-object v2, Lorg/b/b/ac;->e:Lorg/b/b/ac;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v9}, Lorg/b/b/n;-><init>(Lorg/b/b/a;Lorg/b/b/ac;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;JLorg/b/b/b;)V

    .line 1552
    return-void
.end method

.method synthetic constructor <init>(Lorg/b/b/a;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;Lorg/b/b/b;)V
    .locals 0

    .prologue
    .line 1547
    invoke-direct/range {p0 .. p5}, Lorg/b/b/r;-><init>(Lorg/b/b/a;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    .line 1567
    iget-object v0, p0, Lorg/b/b/r;->a:Lorg/b/b/a;

    invoke-virtual {p0}, Lorg/b/b/r;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/b/b/r;->g:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/b/b/a;->b(JJ)Z

    .line 1568
    return-void
.end method

.method protected a(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 1557
    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->e:Lorg/b/b/ac;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->a:Lorg/b/b/ac;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->c:Lorg/b/b/ac;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->f:Lorg/b/b/ac;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->g:Lorg/b/b/ac;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
