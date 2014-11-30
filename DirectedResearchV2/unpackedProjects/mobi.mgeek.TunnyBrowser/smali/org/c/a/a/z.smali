.class public Lorg/c/a/a/z;
.super Ljava/lang/Object;
.source "SelectConnector.java"

# interfaces
.implements Lorg/c/a/c/e;


# instance fields
.field a:Lorg/c/a/c/e;

.field b:Ljavax/net/ssl/SSLEngine;


# direct methods
.method public constructor <init>(Lorg/c/a/c/e;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Lorg/c/a/a/z;->b:Ljavax/net/ssl/SSLEngine;

    .line 254
    iput-object p1, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    .line 255
    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/c/f;)I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0, p1}, Lorg/c/a/c/e;->a(Lorg/c/a/c/f;)I

    move-result v0

    return v0
.end method

.method public a(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/c/f;)I
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/c/a/c/e;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/c/f;)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 259
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->b()Lorg/c/a/c/r;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/g;

    .line 261
    new-instance v1, Lorg/c/a/c/b/q;

    iget-object v2, p0, Lorg/c/a/a/z;->b:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-direct {v1, v2, v3}, Lorg/c/a/c/b/q;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/c/a/c/s;)V

    .line 262
    iget-object v2, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v2, v1}, Lorg/c/a/c/e;->a(Lorg/c/a/c/r;)V

    .line 264
    invoke-virtual {v1}, Lorg/c/a/c/b/q;->d()Lorg/c/a/c/e;

    move-result-object v2

    iput-object v2, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    .line 265
    invoke-virtual {v1}, Lorg/c/a/c/b/q;->d()Lorg/c/a/c/e;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/c/a/c/e;->a(Lorg/c/a/c/r;)V

    .line 267
    invoke-static {}, Lorg/c/a/a/w;->a()Lorg/c/a/d/c/d;

    move-result-object v2

    const-string v3, "upgrade {} to {} for {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-interface {v2, v3, v4}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0, p1}, Lorg/c/a/c/e;->a(I)V

    .line 424
    return-void
.end method

.method public a(Lorg/c/a/c/r;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0, p1}, Lorg/c/a/c/e;->a(Lorg/c/a/c/r;)V

    .line 279
    return-void
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0, p1, p2}, Lorg/c/a/c/e;->a(J)Z

    move-result v0

    return v0
.end method

.method public b(Lorg/c/a/c/f;)I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0, p1}, Lorg/c/a/c/e;->b(Lorg/c/a/c/f;)I

    move-result v0

    return v0
.end method

.method public b()Lorg/c/a/c/r;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->b()Lorg/c/a/c/r;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->c()V

    .line 284
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->e()V

    .line 289
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->e()V

    .line 294
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->f()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->g()V

    .line 304
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->h()V

    .line 309
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->i()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->j()V

    .line 319
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->k()Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->m()I

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->o()I

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->p()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->q()Z

    move-result v0

    return v0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->r()V

    .line 414
    return-void
.end method

.method public s()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-interface {v0}, Lorg/c/a/c/e;->s()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgradable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/z;->a:Lorg/c/a/c/e;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
