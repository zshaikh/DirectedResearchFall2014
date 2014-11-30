.class public Lb/n;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field final synthetic a:Lb/e;


# direct methods
.method private constructor <init>(Lb/e;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lb/n;->a:Lb/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    return-void
.end method

.method synthetic constructor <init>(Lb/e;Lb/f;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lb/n;-><init>(Lb/e;)V

    return-void
.end method


# virtual methods
.method public a()Lb/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/e",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lb/n;->a:Lb/e;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 573
    iget-object v1, p0, Lb/n;->a:Lb/e;

    invoke-static {v1}, Lb/e;->a(Lb/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v2, p0, Lb/n;->a:Lb/e;

    invoke-static {v2}, Lb/e;->b(Lb/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    const/4 v0, 0x0

    monitor-exit v1

    .line 581
    :goto_0
    return v0

    .line 577
    :cond_0
    iget-object v2, p0, Lb/n;->a:Lb/e;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lb/e;->a(Lb/e;Z)Z

    .line 578
    iget-object v2, p0, Lb/n;->a:Lb/e;

    invoke-static {v2, p1}, Lb/e;->a(Lb/e;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 579
    iget-object v2, p0, Lb/n;->a:Lb/e;

    invoke-static {v2}, Lb/e;->a(Lb/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 580
    iget-object v2, p0, Lb/n;->a:Lb/e;

    invoke-static {v2}, Lb/e;->c(Lb/e;)V

    .line 581
    monitor-exit v1

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 557
    iget-object v1, p0, Lb/n;->a:Lb/e;

    invoke-static {v1}, Lb/e;->a(Lb/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v2, p0, Lb/n;->a:Lb/e;

    invoke-static {v2}, Lb/e;->b(Lb/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    const/4 v0, 0x0

    monitor-exit v1

    .line 565
    :goto_0
    return v0

    .line 561
    :cond_0
    iget-object v2, p0, Lb/n;->a:Lb/e;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lb/e;->a(Lb/e;Z)Z

    .line 562
    iget-object v2, p0, Lb/n;->a:Lb/e;

    invoke-static {v2, p1}, Lb/e;->a(Lb/e;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v2, p0, Lb/n;->a:Lb/e;

    invoke-static {v2}, Lb/e;->a(Lb/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 564
    iget-object v2, p0, Lb/n;->a:Lb/e;

    invoke-static {v2}, Lb/e;->c(Lb/e;)V

    .line 565
    monitor-exit v1

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Lb/n;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lb/n;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 541
    iget-object v1, p0, Lb/n;->a:Lb/e;

    invoke-static {v1}, Lb/e;->a(Lb/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 542
    :try_start_0
    iget-object v2, p0, Lb/n;->a:Lb/e;

    invoke-static {v2}, Lb/e;->b(Lb/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    const/4 v0, 0x0

    monitor-exit v1

    .line 549
    :goto_0
    return v0

    .line 545
    :cond_0
    iget-object v2, p0, Lb/n;->a:Lb/e;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lb/e;->a(Lb/e;Z)Z

    .line 546
    iget-object v2, p0, Lb/n;->a:Lb/e;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lb/e;->b(Lb/e;Z)Z

    .line 547
    iget-object v2, p0, Lb/n;->a:Lb/e;

    invoke-static {v2}, Lb/e;->a(Lb/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 548
    iget-object v2, p0, Lb/n;->a:Lb/e;

    invoke-static {v2}, Lb/e;->c(Lb/e;)V

    .line 549
    monitor-exit v1

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p0}, Lb/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    return-void
.end method
