.class public Lorg/b/d/a/c;
.super Ljava/lang/Object;
.source "WebSocketTransport.java"

# interfaces
.implements Lorg/c/a/e/j;


# instance fields
.field final synthetic a:Lorg/b/d/a/a;


# direct methods
.method protected constructor <init>(Lorg/b/d/a/a;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lorg/b/d/a/c;->a:Lorg/b/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 435
    iget-object v0, p0, Lorg/b/d/a/c;->a:Lorg/b/d/a/a;

    invoke-static {v0}, Lorg/b/d/a/a;->a(Lorg/b/d/a/a;)Lorg/c/a/e/e;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lorg/b/d/a/c;->a:Lorg/b/d/a/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/b/d/a/a;->a(Lorg/b/d/a/a;Lorg/c/a/e/e;)Lorg/c/a/e/e;

    .line 437
    iget-object v1, p0, Lorg/b/d/a/c;->a:Lorg/b/d/a/a;

    const-string v2, "Closed websocket connection with code {} {}: {} "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/b/d/a/a;->c(Lorg/b/d/a/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    iget-object v0, p0, Lorg/b/d/a/c;->a:Lorg/b/d/a/a;

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection closed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/b/d/a/a;->a(Lorg/b/d/a/a;Ljava/lang/Throwable;)V

    .line 439
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 445
    :try_start_0
    iget-object v0, p0, Lorg/b/d/a/c;->a:Lorg/b/d/a/a;

    invoke-static {v0, p1}, Lorg/b/d/a/a;->a(Lorg/b/d/a/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lorg/b/d/a/c;->a:Lorg/b/d/a/a;

    const-string v2, "Received messages {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lorg/b/d/a/a;->d(Lorg/b/d/a/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    iget-object v1, p0, Lorg/b/d/a/c;->a:Lorg/b/d/a/a;

    invoke-virtual {v1, v0}, Lorg/b/d/a/a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 451
    iget-object v1, p0, Lorg/b/d/a/c;->a:Lorg/b/d/a/a;

    invoke-static {v1, v0}, Lorg/b/d/a/a;->a(Lorg/b/d/a/a;Ljava/lang/Throwable;)V

    .line 452
    iget-object v0, p0, Lorg/b/d/a/c;->a:Lorg/b/d/a/a;

    const-string v1, "Exception"

    invoke-virtual {v0, v1}, Lorg/b/d/a/a;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lorg/c/a/e/e;)V
    .locals 4

    .prologue
    .line 430
    iget-object v0, p0, Lorg/b/d/a/c;->a:Lorg/b/d/a/a;

    const-string v1, "Opened websocket connection {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/b/d/a/a;->b(Lorg/b/d/a/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    return-void
.end method
