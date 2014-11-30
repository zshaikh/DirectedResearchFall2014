.class public Lorg/b/b/m;
.super Lorg/b/c/c;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/a;


# direct methods
.method protected constructor <init>(Lorg/b/b/a;Lorg/b/a/c;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lorg/b/b/m;->a:Lorg/b/b/a;

    .line 1268
    invoke-direct {p0, p1, p2}, Lorg/b/c/c;-><init>(Lorg/b/c/a;Lorg/b/a/c;)V

    .line 1269
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lorg/b/a/a/e;)V
    .locals 2

    .prologue
    .line 1279
    invoke-virtual {p0}, Lorg/b/b/m;->f()V

    .line 1280
    iget-object v0, p0, Lorg/b/b/m;->a:Lorg/b/b/a;

    invoke-virtual {v0}, Lorg/b/b/a;->p()Lorg/b/a/e;

    move-result-object v0

    .line 1281
    invoke-virtual {p0}, Lorg/b/b/m;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/b/a/e;->a(Ljava/lang/String;)V

    .line 1282
    invoke-interface {v0, p1}, Lorg/b/a/e;->a(Ljava/lang/Object;)V

    .line 1283
    if-eqz p2, :cond_0

    .line 1284
    const-string v1, "org.cometd.client.publishCallback"

    invoke-interface {v0, v1, p2}, Lorg/b/a/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    :cond_0
    iget-object v1, p0, Lorg/b/b/m;->a:Lorg/b/b/a;

    invoke-virtual {v1, v0}, Lorg/b/b/a;->e(Lorg/b/a/e;)V

    .line 1286
    return-void
.end method
