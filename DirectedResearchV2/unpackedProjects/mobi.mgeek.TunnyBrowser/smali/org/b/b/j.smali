.class Lorg/b/b/j;
.super Lorg/b/b/o;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/a/e;

.field final synthetic b:Lorg/b/b/a;


# direct methods
.method constructor <init>(Lorg/b/b/a;Lorg/b/a/e;)V
    .locals 1

    .prologue
    .line 703
    iput-object p1, p0, Lorg/b/b/j;->b:Lorg/b/b/a;

    iput-object p2, p0, Lorg/b/b/j;->a:Lorg/b/a/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/b/b/o;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/b/n;)Lorg/b/b/n;
    .locals 9

    .prologue
    .line 706
    iget-object v0, p0, Lorg/b/b/j;->a:Lorg/b/a/e;

    invoke-interface {v0}, Lorg/b/a/e;->a()Ljava/util/Map;

    move-result-object v3

    .line 707
    if-nez v3, :cond_0

    .line 708
    iget-object v3, p1, Lorg/b/b/n;->d:Ljava/util/Map;

    .line 710
    :cond_0
    iget-object v0, p0, Lorg/b/b/j;->b:Lorg/b/b/a;

    const-string v1, "retry"

    invoke-static {v0, v3, v1}, Lorg/b/b/a;->a(Lorg/b/b/a;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lorg/b/b/j;->a:Lorg/b/a/e;

    invoke-interface {v1}, Lorg/b/a/e;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 713
    const-string v1, "retry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 714
    new-instance v0, Lorg/b/b/r;

    iget-object v1, p0, Lorg/b/b/j;->b:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->c:Ljava/util/Map;

    iget-object v4, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    iget-object v5, p1, Lorg/b/b/n;->f:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/b/b/r;-><init>(Lorg/b/b/a;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;Lorg/b/b/b;)V

    .line 729
    :goto_0
    return-object v0

    .line 715
    :cond_1
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 718
    new-instance v0, Lorg/b/b/w;

    iget-object v1, p0, Lorg/b/b/j;->b:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    iget-object v3, p1, Lorg/b/b/n;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/b/b/w;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Ljava/lang/String;Lorg/b/b/b;)V

    goto :goto_0

    .line 722
    :cond_2
    const-string v1, "handshake"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 723
    new-instance v0, Lorg/b/b/ab;

    iget-object v1, p0, Lorg/b/b/j;->b:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->c:Ljava/util/Map;

    iget-object v3, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/b/b/ab;-><init>(Lorg/b/b/a;Ljava/util/Map;Lorg/b/b/a/a;J)V

    goto :goto_0

    .line 724
    :cond_3
    const-string v1, "retry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 725
    new-instance v0, Lorg/b/b/ad;

    iget-object v1, p0, Lorg/b/b/j;->b:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->c:Ljava/util/Map;

    iget-object v4, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    iget-object v5, p1, Lorg/b/b/n;->f:Ljava/lang/String;

    invoke-static {p1}, Lorg/b/b/n;->b(Lorg/b/b/n;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/b/b/ad;-><init>(Lorg/b/b/a;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;JLorg/b/b/b;)V

    goto :goto_0

    .line 726
    :cond_4
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 727
    new-instance v0, Lorg/b/b/v;

    iget-object v1, p0, Lorg/b/b/j;->b:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/b/b/v;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/b/b;)V

    goto :goto_0

    .line 729
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lorg/b/b/j;->b:Lorg/b/b/a;

    iget-object v1, p0, Lorg/b/b/j;->a:Lorg/b/a/e;

    invoke-virtual {v0, v1}, Lorg/b/b/a;->i(Lorg/b/a/e;)V

    .line 736
    return-void
.end method
