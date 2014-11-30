.class Lorg/b/b/g;
.super Lorg/b/b/o;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/a/e;

.field final synthetic b:Lorg/b/b/a;


# direct methods
.method constructor <init>(Lorg/b/b/a;Lorg/b/a/e;)V
    .locals 1

    .prologue
    .line 628
    iput-object p1, p0, Lorg/b/b/g;->b:Lorg/b/b/a;

    iput-object p2, p0, Lorg/b/b/g;->a:Lorg/b/a/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/b/b/o;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/b/n;)Lorg/b/b/n;
    .locals 4

    .prologue
    .line 631
    new-instance v0, Lorg/b/b/v;

    iget-object v1, p0, Lorg/b/b/g;->b:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/b/b/v;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/b/b;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lorg/b/b/g;->b:Lorg/b/b/a;

    iget-object v1, p0, Lorg/b/b/g;->a:Lorg/b/a/e;

    invoke-virtual {v0, v1}, Lorg/b/b/a;->i(Lorg/b/a/e;)V

    .line 638
    return-void
.end method
