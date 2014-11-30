.class Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/SortedSetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->b_(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->b_(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public b_(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->c()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/SortedSetMultimap;->b_(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 770
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method c()Lcom/google/common/collect/SortedSetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 765
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->d()Lcom/google/common/collect/SetMultimap;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/SortedSetMultimap;

    return-object p0
.end method

.method bridge synthetic d()Lcom/google/common/collect/SetMultimap;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->c()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic e()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->c()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic m_()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->c()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method
