.class Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedObject;",
        "Lcom/google/common/collect/Multimap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->e()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Multimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->e()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 557
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 643
    new-instance v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->e()Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/Multimap;->b()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->d:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->a:Ljava/util/Map;

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->a:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    .line 646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->e()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->c(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 536
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->e()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Multimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 592
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c_()I
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->e()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->c_()I

    move-result v1

    monitor-exit v0

    return v1

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method e()Lcom/google/common/collect/Multimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 511
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedObject;->m_()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multimap;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 660
    if-ne p1, p0, :cond_0

    .line 661
    const/4 v0, 0x1

    .line 664
    :goto_0
    return v0

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->e()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 665
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
    .line 669
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->e()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 671
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
    .line 501
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->e()Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method
