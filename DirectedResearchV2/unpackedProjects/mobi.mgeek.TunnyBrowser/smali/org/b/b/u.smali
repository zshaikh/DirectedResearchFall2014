.class Lorg/b/b/u;
.super Lorg/b/b/o;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/t;


# direct methods
.method constructor <init>(Lorg/b/b/t;)V
    .locals 2

    .prologue
    .line 1245
    iput-object p1, p0, Lorg/b/b/u;->a:Lorg/b/b/t;

    iget-object v0, p1, Lorg/b/b/t;->a:Lorg/b/b/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/b/b/o;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/b/n;)Lorg/b/b/n;
    .locals 4

    .prologue
    .line 1248
    new-instance v0, Lorg/b/b/v;

    iget-object v1, p0, Lorg/b/b/u;->a:Lorg/b/b/t;

    iget-object v1, v1, Lorg/b/b/t;->a:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/b/b/v;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/b/b;)V

    return-object v0
.end method
