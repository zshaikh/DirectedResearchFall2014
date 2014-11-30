.class Lorg/b/b/h;
.super Lorg/b/b/o;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/a/a;

.field final synthetic b:Lorg/b/a/e;

.field final synthetic c:Lorg/b/b/a;


# direct methods
.method constructor <init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/a/e;)V
    .locals 1

    .prologue
    .line 644
    iput-object p1, p0, Lorg/b/b/h;->c:Lorg/b/b/a;

    iput-object p2, p0, Lorg/b/b/h;->a:Lorg/b/b/a/a;

    iput-object p3, p0, Lorg/b/b/h;->b:Lorg/b/a/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/b/b/o;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/b/n;)Lorg/b/b/n;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 647
    iget-object v0, p0, Lorg/b/b/h;->a:Lorg/b/b/a/a;

    iget-object v1, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    if-eq v0, v1, :cond_0

    .line 649
    iget-object v0, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    invoke-virtual {v0}, Lorg/b/b/a/a;->d()V

    .line 650
    iget-object v0, p0, Lorg/b/b/h;->a:Lorg/b/b/a/a;

    invoke-virtual {v0}, Lorg/b/b/a/a;->a()V

    .line 652
    :cond_0
    iget-object v0, p0, Lorg/b/b/h;->c:Lorg/b/b/a;

    iget-object v1, p0, Lorg/b/b/h;->b:Lorg/b/a/e;

    invoke-interface {v1}, Lorg/b/a/e;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "retry"

    invoke-static {v0, v1, v2}, Lorg/b/b/a;->a(Lorg/b/b/a;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    const-string v1, "retry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
    new-instance v0, Lorg/b/b/s;

    iget-object v1, p0, Lorg/b/b/h;->c:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->c:Ljava/util/Map;

    iget-object v3, p0, Lorg/b/b/h;->b:Lorg/b/a/e;

    invoke-interface {v3}, Lorg/b/a/e;->a()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lorg/b/b/h;->a:Lorg/b/b/a/a;

    iget-object v5, p0, Lorg/b/b/h;->b:Lorg/b/a/e;

    invoke-interface {v5}, Lorg/b/a/e;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lorg/b/b/s;-><init>(Lorg/b/b/a;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;Lorg/b/b/b;)V

    .line 657
    :goto_0
    return-object v0

    .line 655
    :cond_1
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    new-instance v0, Lorg/b/b/v;

    iget-object v1, p0, Lorg/b/b/h;->c:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    invoke-direct {v0, v1, v2, v6}, Lorg/b/b/v;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/b/b;)V

    goto :goto_0

    :cond_2
    move-object v0, v6

    .line 657
    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lorg/b/b/h;->c:Lorg/b/b/a;

    iget-object v1, p0, Lorg/b/b/h;->b:Lorg/b/a/e;

    invoke-virtual {v0, v1}, Lorg/b/b/a;->i(Lorg/b/a/e;)V

    .line 664
    return-void
.end method
