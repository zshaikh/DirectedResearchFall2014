.class Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->d()Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/SetMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 729
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/google/common/collect/SetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 724
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->e()Lcom/google/common/collect/Multimap;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/SetMultimap;

    return-object p0
.end method

.method bridge synthetic e()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->d()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic m_()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->d()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method
