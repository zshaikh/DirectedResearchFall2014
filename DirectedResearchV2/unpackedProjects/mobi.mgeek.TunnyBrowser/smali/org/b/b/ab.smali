.class Lorg/b/b/ab;
.super Lorg/b/b/n;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/a;


# direct methods
.method public constructor <init>(Lorg/b/b/a;Ljava/util/Map;Lorg/b/b/a/a;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/b/b/a/a;",
            "J)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1493
    iput-object p1, p0, Lorg/b/b/ab;->a:Lorg/b/b/a;

    .line 1494
    sget-object v2, Lorg/b/b/ac;->c:Lorg/b/b/ac;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v4

    move-wide v7, p4

    move-object v9, v4

    invoke-direct/range {v0 .. v9}, Lorg/b/b/n;-><init>(Lorg/b/b/a;Lorg/b/b/ac;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;JLorg/b/b/b;)V

    .line 1495
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    .line 1517
    iget-object v0, p0, Lorg/b/b/ab;->a:Lorg/b/b/a;

    invoke-virtual {p0}, Lorg/b/b/ab;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/b/b/ab;->g:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/b/b/a;->a(JJ)Z

    .line 1518
    return-void
.end method

.method protected a(Lorg/b/b/ac;)V
    .locals 1

    .prologue
    .line 1510
    sget-object v0, Lorg/b/b/ac;->b:Lorg/b/b/ac;

    if-eq p1, v0, :cond_0

    .line 1511
    iget-object v0, p0, Lorg/b/b/ab;->a:Lorg/b/b/a;

    invoke-static {v0}, Lorg/b/b/a;->e(Lorg/b/b/a;)V

    .line 1512
    :cond_0
    return-void
.end method

.method protected a(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 1500
    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->d:Lorg/b/b/ac;

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
