.class Lorg/b/b/z;
.super Lorg/b/b/n;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/a;


# direct methods
.method private constructor <init>(Lorg/b/b/a;Ljava/util/Map;Lorg/b/b/a/a;)V
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
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1461
    iput-object p1, p0, Lorg/b/b/z;->a:Lorg/b/b/a;

    .line 1462
    sget-object v2, Lorg/b/b/ac;->b:Lorg/b/b/ac;

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v4

    move-object v9, v4

    invoke-direct/range {v0 .. v9}, Lorg/b/b/n;-><init>(Lorg/b/b/a;Lorg/b/b/ac;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;JLorg/b/b/b;)V

    .line 1463
    return-void
.end method

.method synthetic constructor <init>(Lorg/b/b/a;Ljava/util/Map;Lorg/b/b/a/a;Lorg/b/b/b;)V
    .locals 0

    .prologue
    .line 1458
    invoke-direct {p0, p1, p2, p3}, Lorg/b/b/z;-><init>(Lorg/b/b/a;Ljava/util/Map;Lorg/b/b/a/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lorg/b/b/z;->a:Lorg/b/b/a;

    invoke-virtual {v0}, Lorg/b/b/a;->f()Z

    .line 1487
    return-void
.end method

.method protected a(Lorg/b/b/ac;)V
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lorg/b/b/z;->a:Lorg/b/b/a;

    invoke-static {v0}, Lorg/b/b/a;->d(Lorg/b/b/a;)V

    .line 1478
    return-void
.end method

.method protected a(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 1468
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
