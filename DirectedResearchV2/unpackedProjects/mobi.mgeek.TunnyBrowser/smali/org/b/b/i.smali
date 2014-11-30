.class Lorg/b/b/i;
.super Lorg/b/b/o;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/a/e;

.field final synthetic b:Lorg/b/b/a;


# direct methods
.method constructor <init>(Lorg/b/b/a;Lorg/b/a/e;)V
    .locals 1

    .prologue
    .line 671
    iput-object p1, p0, Lorg/b/b/i;->b:Lorg/b/b/a;

    iput-object p2, p0, Lorg/b/b/i;->a:Lorg/b/a/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/b/b/o;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/b/n;)Lorg/b/b/n;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 674
    iget-object v0, p0, Lorg/b/b/i;->b:Lorg/b/b/a;

    iget-object v2, p0, Lorg/b/b/i;->a:Lorg/b/a/e;

    invoke-interface {v2}, Lorg/b/a/e;->a()Ljava/util/Map;

    move-result-object v2

    const-string v3, "handshake"

    invoke-static {v0, v2, v3}, Lorg/b/b/a;->a(Lorg/b/b/a;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    const-string v2, "handshake"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "retry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 676
    :cond_0
    new-instance v0, Lorg/b/b/ab;

    iget-object v1, p0, Lorg/b/b/i;->b:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->c:Ljava/util/Map;

    iget-object v3, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    invoke-static {p1}, Lorg/b/b/n;->b(Lorg/b/b/n;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/b/b/ab;-><init>(Lorg/b/b/a;Ljava/util/Map;Lorg/b/b/a/a;J)V

    .line 679
    :goto_0
    return-object v0

    .line 677
    :cond_1
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    new-instance v0, Lorg/b/b/v;

    iget-object v2, p0, Lorg/b/b/i;->b:Lorg/b/b/a;

    iget-object v3, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    invoke-direct {v0, v2, v3, v1}, Lorg/b/b/v;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/b/b;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 679
    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lorg/b/b/i;->b:Lorg/b/b/a;

    iget-object v1, p0, Lorg/b/b/i;->a:Lorg/b/a/e;

    invoke-virtual {v0, v1}, Lorg/b/b/a;->i(Lorg/b/a/e;)V

    .line 686
    return-void
.end method
