.class Lorg/b/b/w;
.super Lorg/b/b/n;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/a;


# direct methods
.method private constructor <init>(Lorg/b/b/a;Lorg/b/b/a/a;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1597
    iput-object p1, p0, Lorg/b/b/w;->a:Lorg/b/b/a;

    .line 1598
    sget-object v2, Lorg/b/b/ac;->f:Lorg/b/b/ac;

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    move-object v9, v3

    invoke-direct/range {v0 .. v9}, Lorg/b/b/n;-><init>(Lorg/b/b/a;Lorg/b/b/ac;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;JLorg/b/b/b;)V

    .line 1599
    return-void
.end method

.method synthetic constructor <init>(Lorg/b/b/a;Lorg/b/b/a/a;Ljava/lang/String;Lorg/b/b/b;)V
    .locals 0

    .prologue
    .line 1594
    invoke-direct {p0, p1, p2, p3}, Lorg/b/b/w;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 1610
    iget-object v0, p0, Lorg/b/b/w;->a:Lorg/b/b/a;

    invoke-virtual {v0}, Lorg/b/b/a;->p()Lorg/b/a/e;

    move-result-object v0

    .line 1611
    const-string v1, "/meta/disconnect"

    invoke-interface {v0, v1}, Lorg/b/a/e;->a(Ljava/lang/String;)V

    .line 1612
    iget-object v1, p0, Lorg/b/b/w;->a:Lorg/b/b/a;

    invoke-static {v1}, Lorg/b/b/a;->f(Lorg/b/b/a;)Lorg/b/b/a/j;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/b/a/e;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/b/b/w;->a(Lorg/b/b/a/j;[Lorg/b/a/e;)V

    .line 1613
    return-void
.end method

.method protected a(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 1604
    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->g:Lorg/b/b/ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
