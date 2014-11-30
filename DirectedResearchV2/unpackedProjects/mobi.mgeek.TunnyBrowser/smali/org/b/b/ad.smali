.class Lorg/b/b/ad;
.super Lorg/b/b/n;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/a;


# direct methods
.method private constructor <init>(Lorg/b/b/a;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;J)V
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
            "J)V"
        }
    .end annotation

    .prologue
    .line 1574
    iput-object p1, p0, Lorg/b/b/ad;->a:Lorg/b/b/a;

    .line 1575
    sget-object v2, Lorg/b/b/ac;->a:Lorg/b/b/ac;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lorg/b/b/n;-><init>(Lorg/b/b/a;Lorg/b/b/ac;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;JLorg/b/b/b;)V

    .line 1576
    return-void
.end method

.method synthetic constructor <init>(Lorg/b/b/a;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;JLorg/b/b/b;)V
    .locals 0

    .prologue
    .line 1571
    invoke-direct/range {p0 .. p7}, Lorg/b/b/ad;-><init>(Lorg/b/b/a;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    .line 1590
    iget-object v0, p0, Lorg/b/b/ad;->a:Lorg/b/b/a;

    invoke-virtual {p0}, Lorg/b/b/ad;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/b/b/ad;->g:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/b/b/a;->b(JJ)Z

    .line 1591
    return-void
.end method

.method protected a(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 1581
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
