.class Lorg/c/a/e/w;
.super Ljava/lang/Object;
.source "WebSocketConnectionRFC6455.java"

# interfaces
.implements Lorg/c/a/e/f;


# instance fields
.field final synthetic a:Lorg/c/a/e/u;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lorg/c/a/e/u;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/c/a/e/u;Lorg/c/a/e/v;)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lorg/c/a/e/w;-><init>(Lorg/c/a/e/u;)V

    return-void
.end method


# virtual methods
.method public a(B[BII)V
    .locals 6

    .prologue
    .line 465
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->a(Lorg/c/a/e/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closedOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v2}, Lorg/c/a/e/u;->b(Lorg/c/a/e/u;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v2}, Lorg/c/a/e/u;->c(Lorg/c/a/e/u;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->d(Lorg/c/a/e/u;)Lorg/c/a/e/y;

    move-result-object v0

    const/16 v1, 0x8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/c/a/e/y;->a(BB[BII)V

    .line 468
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->e(Lorg/c/a/e/u;)V

    .line 469
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0, p1}, Lorg/c/a/e/u;->a(Lorg/c/a/e/u;I)I

    .line 509
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lorg/c/a/e/w;->b:Z

    if-eqz v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/e/w;->b:Z

    .line 489
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-virtual {v0, p1, p2}, Lorg/c/a/e/u;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 436
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->a(Lorg/c/a/e/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closedOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v2}, Lorg/c/a/e/u;->b(Lorg/c/a/e/u;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v2}, Lorg/c/a/e/u;->c(Lorg/c/a/e/u;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 439
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->d(Lorg/c/a/e/u;)Lorg/c/a/e/y;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    array-length v5, v3

    invoke-interface/range {v0 .. v5}, Lorg/c/a/e/y;->a(BB[BII)V

    .line 440
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->e(Lorg/c/a/e/u;)V

    .line 441
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->f(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->g(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/s;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->h(Lorg/c/a/e/u;)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0, p1}, Lorg/c/a/e/u;->b(Lorg/c/a/e/u;I)I

    .line 515
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v0}, Lorg/c/a/e/u;->i(Lorg/c/a/e/u;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 635
    const-string v0, "%s@%x l(%s:%d)<->r(%s:%d)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v3}, Lorg/c/a/e/u;->j(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v3

    invoke-interface {v3}, Lorg/c/a/c/s;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v3}, Lorg/c/a/e/u;->k(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v3

    invoke-interface {v3}, Lorg/c/a/c/s;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v3}, Lorg/c/a/e/u;->l(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v3

    invoke-interface {v3}, Lorg/c/a/c/s;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/c/a/e/w;->a:Lorg/c/a/e/u;

    invoke-static {v3}, Lorg/c/a/e/u;->m(Lorg/c/a/e/u;)Lorg/c/a/c/s;

    move-result-object v3

    invoke-interface {v3}, Lorg/c/a/c/s;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
