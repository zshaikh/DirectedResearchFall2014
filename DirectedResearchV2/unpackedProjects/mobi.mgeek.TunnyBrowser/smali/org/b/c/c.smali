.class public abstract Lorg/b/c/c;
.super Ljava/lang/Object;
.source "AbstractClientSession.java"

# interfaces
.implements Lorg/b/a/a/c;


# instance fields
.field private final a:Lorg/b/a/c;

.field final synthetic b:Lorg/b/c/a;

.field private final c:Lorg/c/a/d/a;

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/b/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/b/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Z


# direct methods
.method protected constructor <init>(Lorg/b/c/a;Lorg/b/a/c;)V
    .locals 1

    .prologue
    .line 279
    iput-object p1, p0, Lorg/b/c/c;->b:Lorg/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Lorg/c/a/d/a;

    invoke-direct {v0}, Lorg/c/a/d/a;-><init>()V

    iput-object v0, p0, Lorg/b/c/c;->c:Lorg/c/a/d/a;

    .line 273
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/b/c/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 274
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/b/c/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 275
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/b/c/c;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 280
    iput-object p2, p0, Lorg/b/c/c;->a:Lorg/b/a/c;

    .line 281
    return-void
.end method


# virtual methods
.method public a()Lorg/b/a/c;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/b/c/c;->a:Lorg/b/a/c;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/b/c/c;->a(Ljava/lang/Object;Lorg/b/a/a/e;)V

    .line 308
    return-void
.end method

.method public a(Lorg/b/a/a/d;)V
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/b/c/c;->f()V

    .line 291
    iget-object v0, p0, Lorg/b/c/c;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method protected a(Lorg/b/a/a/e;Lorg/b/a/d;)V
    .locals 4

    .prologue
    .line 429
    invoke-virtual {p0}, Lorg/b/c/c;->f()V

    .line 432
    :try_start_0
    invoke-interface {p1, p0, p2}, Lorg/b/a/a/e;->a(Lorg/b/a/a/c;Lorg/b/a/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 436
    sget-object v1, Lorg/b/c/a;->a:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while invoking listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Lorg/b/a/d;)V
    .locals 3

    .prologue
    .line 411
    invoke-virtual {p0}, Lorg/b/c/c;->f()V

    .line 412
    iget-object v0, p0, Lorg/b/c/c;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/a/d;

    .line 414
    instance-of v2, v0, Lorg/b/a/a/e;

    if-eqz v2, :cond_0

    .line 415
    check-cast v0, Lorg/b/a/a/e;

    invoke-virtual {p0, v0, p1}, Lorg/b/c/c;->a(Lorg/b/a/a/e;Lorg/b/a/d;)V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p0, Lorg/b/c/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/a/e;

    .line 419
    instance-of v2, v0, Lorg/b/a/a/e;

    if-eqz v2, :cond_2

    .line 421
    invoke-interface {p1}, Lorg/b/a/d;->d()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 422
    check-cast v0, Lorg/b/a/a/e;

    invoke-virtual {p0, v0, p1}, Lorg/b/c/c;->a(Lorg/b/a/a/e;Lorg/b/a/d;)V

    goto :goto_1

    .line 425
    :cond_3
    return-void
.end method

.method public b(Lorg/b/a/a/d;)V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/b/c/c;->f()V

    .line 297
    iget-object v0, p0, Lorg/b/c/c;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 352
    iget-boolean v1, p0, Lorg/b/c/c;->g:Z

    if-eqz v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    iget-object v1, p0, Lorg/b/c/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/b/c/c;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v0, p0, Lorg/b/c/c;->b:Lorg/b/c/a;

    invoke-static {v0}, Lorg/b/c/a;->a(Lorg/b/c/a;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/b/c/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 358
    iput-boolean v0, p0, Lorg/b/c/c;->g:Z

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lorg/b/c/c;->g:Z

    return v0
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 371
    invoke-virtual {p0}, Lorg/b/c/c;->f()V

    .line 372
    iget-object v0, p0, Lorg/b/c/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/a/a/e;

    .line 374
    iget-object v2, p0, Lorg/b/c/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lorg/b/c/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 377
    :cond_1
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/b/c/c;->a:Lorg/b/a/c;

    invoke-virtual {v0}, Lorg/b/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f()V
    .locals 3

    .prologue
    .line 489
    invoke-virtual {p0}, Lorg/b/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lorg/b/c/c;->a:Lorg/b/a/c;

    invoke-virtual {v0}, Lorg/b/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
