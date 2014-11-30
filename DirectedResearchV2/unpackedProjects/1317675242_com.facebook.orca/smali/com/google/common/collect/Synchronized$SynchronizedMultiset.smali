.class Lcom/google/common/collect/Synchronized$SynchronizedMultiset;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field transient a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method bridge synthetic a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Multiset;->b(Ljava/lang/Object;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 441
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method c()Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 420
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->a()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset;

    return-object p0
.end method

.method public d()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->d()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/util/Set;

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->a:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->b:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->b:Ljava/util/Set;

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->b:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 479
    if-ne p1, p0, :cond_0

    .line 480
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method bridge synthetic m_()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->c()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method
