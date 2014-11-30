.class Lorg/b/b/y;
.super Lorg/b/b/o;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/x;


# direct methods
.method constructor <init>(Lorg/b/b/x;)V
    .locals 2

    .prologue
    .line 1181
    iput-object p1, p0, Lorg/b/b/y;->a:Lorg/b/b/x;

    iget-object v0, p1, Lorg/b/b/x;->a:Lorg/b/b/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/b/b/o;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/b/n;)Lorg/b/b/n;
    .locals 6

    .prologue
    .line 1184
    iget-object v0, p0, Lorg/b/b/y;->a:Lorg/b/b/x;

    iget-object v0, v0, Lorg/b/b/x;->a:Lorg/b/b/a;

    invoke-static {v0}, Lorg/b/b/a;->a(Lorg/b/b/a;)Lorg/b/b/a/k;

    move-result-object v0

    iget-object v1, p0, Lorg/b/b/y;->a:Lorg/b/b/x;

    iget-object v1, v1, Lorg/b/b/x;->a:Lorg/b/b/a;

    invoke-virtual {v1}, Lorg/b/b/a;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/b/b/a/k;->a([Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1185
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1187
    new-instance v0, Lorg/b/b/v;

    iget-object v1, p0, Lorg/b/b/y;->a:Lorg/b/b/x;

    iget-object v1, v1, Lorg/b/b/x;->a:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/b/b/v;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/b/b;)V

    .line 1197
    :goto_0
    return-object v0

    .line 1191
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/b/b/a/a;

    .line 1192
    iget-object v0, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    if-eq v3, v0, :cond_1

    .line 1194
    iget-object v0, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    invoke-virtual {v0}, Lorg/b/b/a/a;->d()V

    .line 1195
    invoke-virtual {v3}, Lorg/b/b/a/a;->a()V

    .line 1197
    :cond_1
    new-instance v0, Lorg/b/b/ab;

    iget-object v1, p0, Lorg/b/b/y;->a:Lorg/b/b/x;

    iget-object v1, v1, Lorg/b/b/x;->a:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->c:Ljava/util/Map;

    invoke-static {p1}, Lorg/b/b/n;->b(Lorg/b/b/n;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/b/b/ab;-><init>(Lorg/b/b/a;Ljava/util/Map;Lorg/b/b/a/a;J)V

    goto :goto_0
.end method
