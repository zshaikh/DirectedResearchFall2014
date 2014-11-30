.class Lorg/c/a/e/q;
.super Lorg/c/a/b/r;
.source "WebSocketClientFactory.java"


# instance fields
.field final synthetic a:Lorg/c/a/e/o;

.field final synthetic b:Lorg/c/a/e/p;


# direct methods
.method constructor <init>(Lorg/c/a/e/p;Lorg/c/a/e/o;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lorg/c/a/e/q;->b:Lorg/c/a/e/p;

    iput-object p2, p0, Lorg/c/a/e/q;->a:Lorg/c/a/e/o;

    invoke-direct {p0}, Lorg/c/a/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/c/f;)V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lorg/c/a/e/q;->b:Lorg/c/a/e/p;

    invoke-static {v0}, Lorg/c/a/e/p;->b(Lorg/c/a/e/p;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lorg/c/a/e/q;->b:Lorg/c/a/e/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad response. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/c/a/c/f;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B of content?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/c/a/e/p;->a(Lorg/c/a/e/p;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    :cond_0
    iget-object v0, p0, Lorg/c/a/e/q;->b:Lorg/c/a/e/p;

    invoke-static {v0}, Lorg/c/a/e/p;->a(Lorg/c/a/e/p;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/e;->j()V

    .line 420
    return-void
.end method

.method public a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V
    .locals 3

    .prologue
    .line 392
    const/16 v0, 0x65

    if-eq p2, v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/c/a/e/q;->b:Lorg/c/a/e/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad response status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/c/a/e/p;->a(Lorg/c/a/e/p;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lorg/c/a/e/q;->b:Lorg/c/a/e/p;

    invoke-static {v0}, Lorg/c/a/e/p;->a(Lorg/c/a/e/p;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/e;->j()V

    .line 397
    :cond_0
    return-void
.end method

.method public a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Lorg/c/a/e/o;->g()Lorg/c/a/c/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/c/a/c/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lorg/c/a/e/q;->b:Lorg/c/a/e/p;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/c/a/e/p;->b(Lorg/c/a/e/p;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    :cond_0
    return-void
.end method

.method public a(Lorg/c/a/c/f;Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lorg/c/a/e/q;->b:Lorg/c/a/e/p;

    invoke-static {v0}, Lorg/c/a/e/p;->b(Lorg/c/a/e/p;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lorg/c/a/e/q;->b:Lorg/c/a/e/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/c/a/e/p;->a(Lorg/c/a/e/p;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    :cond_0
    iget-object v0, p0, Lorg/c/a/e/q;->b:Lorg/c/a/e/p;

    invoke-static {v0}, Lorg/c/a/e/p;->a(Lorg/c/a/e/p;)Lorg/c/a/c/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/c/a/c/e;->j()V

    .line 412
    return-void
.end method
