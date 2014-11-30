.class Lorg/b/b/e;
.super Lorg/b/b/o;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/a;


# direct methods
.method constructor <init>(Lorg/b/b/a;)V
    .locals 1

    .prologue
    .line 518
    iput-object p1, p0, Lorg/b/b/e;->a:Lorg/b/b/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/b/b/o;-><init>(Lorg/b/b/a;Lorg/b/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/b/n;)Lorg/b/b/n;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 521
    iget-object v0, p0, Lorg/b/b/e;->a:Lorg/b/b/a;

    invoke-static {v0, p1}, Lorg/b/b/a;->a(Lorg/b/b/a;Lorg/b/b/n;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/b/b/e;->a:Lorg/b/b/a;

    invoke-static {v0, p1}, Lorg/b/b/a;->b(Lorg/b/b/a;Lorg/b/b/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    :cond_0
    new-instance v0, Lorg/b/b/w;

    iget-object v1, p0, Lorg/b/b/e;->a:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    iget-object v3, p1, Lorg/b/b/n;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/b/b/w;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Ljava/lang/String;Lorg/b/b/b;)V

    .line 526
    :goto_0
    return-object v0

    .line 523
    :cond_1
    iget-object v0, p0, Lorg/b/b/e;->a:Lorg/b/b/a;

    invoke-static {v0, p1}, Lorg/b/b/a;->c(Lorg/b/b/a;Lorg/b/b/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    new-instance v0, Lorg/b/b/w;

    iget-object v1, p0, Lorg/b/b/e;->a:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    iget-object v3, p1, Lorg/b/b/n;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/b/b/w;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Ljava/lang/String;Lorg/b/b/b;)V

    goto :goto_0

    .line 526
    :cond_2
    new-instance v0, Lorg/b/b/v;

    iget-object v1, p0, Lorg/b/b/e;->a:Lorg/b/b/a;

    iget-object v2, p1, Lorg/b/b/n;->e:Lorg/b/b/a/a;

    invoke-direct {v0, v1, v2, v4}, Lorg/b/b/v;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/b/b;)V

    goto :goto_0
.end method
