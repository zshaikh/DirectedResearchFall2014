.class Lorg/c/a/c/b/k;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/c/a/c/b/j;


# direct methods
.method constructor <init>(Lorg/c/a/c/b/j;I)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lorg/c/a/c/b/k;->b:Lorg/c/a/c/b/j;

    iput p2, p0, Lorg/c/a/c/b/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 279
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/b/k;->b:Lorg/c/a/c/b/j;

    invoke-static {v0}, Lorg/c/a/c/b/j;->a(Lorg/c/a/c/b/j;)[Lorg/c/a/c/b/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 284
    if-nez v0, :cond_1

    .line 310
    sget-object v0, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    const-string v3, "Stopped {} on {}"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p0, v4, v9

    invoke-interface {v0, v3, v4}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lorg/c/a/c/b/k;->b:Lorg/c/a/c/b/j;

    invoke-virtual {v0}, Lorg/c/a/c/b/j;->c()I

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/c/a/c/b/k;->a:I

    aget-object v0, v0, v3

    .line 288
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Selector"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/c/a/c/b/k;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lorg/c/a/c/b/k;->b:Lorg/c/a/c/b/j;

    invoke-virtual {v3}, Lorg/c/a/c/b/j;->c()I

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getPriority()I

    move-result v4

    iget-object v5, p0, Lorg/c/a/c/b/k;->b:Lorg/c/a/c/b/j;

    invoke-virtual {v5}, Lorg/c/a/c/b/j;->c()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 291
    :cond_2
    sget-object v3, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    const-string v4, "Starting {} on {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :goto_1
    iget-object v3, p0, Lorg/c/a/c/b/k;->b:Lorg/c/a/c/b/j;

    invoke-virtual {v3}, Lorg/c/a/c/b/j;->q()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 296
    :try_start_2
    invoke-virtual {v0}, Lorg/c/a/c/b/n;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 298
    :catch_0
    move-exception v3

    .line 300
    :try_start_3
    sget-object v4, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v4, v3}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 310
    :catchall_0
    move-exception v0

    sget-object v3, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    const-string v4, "Stopped {} on {}"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object p0, v5, v9

    invoke-interface {v3, v4, v5}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lorg/c/a/c/b/k;->b:Lorg/c/a/c/b/j;

    invoke-virtual {v1}, Lorg/c/a/c/b/j;->c()I

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    :cond_3
    throw v0

    .line 302
    :catch_1
    move-exception v3

    .line 304
    :try_start_4
    sget-object v4, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    invoke-interface {v4, v3}, Lorg/c/a/d/c/d;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 310
    :cond_4
    sget-object v0, Lorg/c/a/c/b/j;->c:Lorg/c/a/d/c/d;

    const-string v3, "Stopped {} on {}"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p0, v4, v9

    invoke-interface {v0, v3, v4}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lorg/c/a/c/b/k;->b:Lorg/c/a/c/b/j;

    invoke-virtual {v0}, Lorg/c/a/c/b/j;->c()I

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    goto/16 :goto_0
.end method
