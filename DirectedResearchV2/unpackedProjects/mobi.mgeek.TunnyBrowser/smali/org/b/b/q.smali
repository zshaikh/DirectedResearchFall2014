.class Lorg/b/b/q;
.super Lorg/b/b/o;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/p;


# direct methods
.method constructor <init>(Lorg/b/b/p;)V
    .locals 2

    .prologue
    .line 1220
    iput-object p1, p0, Lorg/b/b/q;->a:Lorg/b/b/p;

    iget-object v0, p1, Lorg/b/b/p;->a:Lorg/b/b/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/b/b/o;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/b/n;)Lorg/b/b/n;
    .locals 9

    .prologue
    .line 1223
    new-instance v0, Lorg/b/b/ad;

    iget-object v1, p0, Lorg/b/b/q;->a:Lorg/b/b/p;

    iget-object v1, v1, Lorg/b/b/p;->a:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->c:Ljava/util/Map;

    iget-object v3, p1, Lorg/b/b/n;->d:Ljava/util/Map;

    iget-object v4, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    iget-object v5, p1, Lorg/b/b/n;->f:Ljava/lang/String;

    invoke-static {p1}, Lorg/b/b/n;->b(Lorg/b/b/n;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/b/b/ad;-><init>(Lorg/b/b/a;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;JLorg/b/b/b;)V

    return-object v0
.end method
