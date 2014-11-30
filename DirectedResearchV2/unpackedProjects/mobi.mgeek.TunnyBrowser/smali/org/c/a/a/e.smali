.class Lorg/c/a/a/e;
.super Ljava/lang/Object;
.source "AbstractHttpConnection.java"

# interfaces
.implements Lorg/c/a/a/r;


# instance fields
.field final a:Lorg/c/a/a/t;

.field final b:Lorg/c/a/a/r;

.field final synthetic c:Lorg/c/a/a/a;


# direct methods
.method public constructor <init>(Lorg/c/a/a/a;Lorg/c/a/a/t;)V
    .locals 1

    .prologue
    .line 497
    iput-object p1, p0, Lorg/c/a/a/e;->c:Lorg/c/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p2, p0, Lorg/c/a/a/e;->a:Lorg/c/a/a/t;

    .line 499
    invoke-virtual {p2}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    .line 500
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lorg/c/a/a/e;->a:Lorg/c/a/a/t;

    iget-object v1, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/a/r;)V

    .line 546
    iget-object v0, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    invoke-interface {v0, p1}, Lorg/c/a/a/r;->a(Ljava/lang/Throwable;)V

    .line 547
    return-void
.end method

.method public a(Lorg/c/a/c/f;)V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    invoke-interface {v0, p1, p2}, Lorg/c/a/a/r;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 521
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lorg/c/a/a/e;->a:Lorg/c/a/a/t;

    iget-object v1, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/a/r;)V

    .line 553
    iget-object v0, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    invoke-interface {v0, p1}, Lorg/c/a/a/r;->b(Ljava/lang/Throwable;)V

    .line 554
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    invoke-interface {v0}, Lorg/c/a/a/r;->c()V

    .line 527
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lorg/c/a/a/e;->a:Lorg/c/a/a/t;

    iget-object v1, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/a/r;)V

    .line 538
    iget-object v0, p0, Lorg/c/a/a/e;->a:Lorg/c/a/a/t;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(I)Z

    .line 539
    iget-object v0, p0, Lorg/c/a/a/e;->c:Lorg/c/a/a/a;

    iget-object v0, v0, Lorg/c/a/a/a;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->h()V

    .line 540
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lorg/c/a/a/e;->a:Lorg/c/a/a/t;

    iget-object v1, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/a/r;)V

    .line 560
    iget-object v0, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    invoke-interface {v0}, Lorg/c/a/a/r;->e()V

    .line 561
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lorg/c/a/a/e;->a:Lorg/c/a/a/t;

    iget-object v1, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(Lorg/c/a/a/r;)V

    .line 567
    iget-object v0, p0, Lorg/c/a/a/e;->b:Lorg/c/a/a/r;

    invoke-interface {v0}, Lorg/c/a/a/r;->f()V

    .line 568
    return-void
.end method
