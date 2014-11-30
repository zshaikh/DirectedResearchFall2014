.class Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


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
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->c()Lcom/google/common/collect/ListMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/ListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 694
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
    .line 682
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/google/common/collect/ListMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 689
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->e()Lcom/google/common/collect/Multimap;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/ListMultimap;

    return-object p0
.end method

.method bridge synthetic e()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->c()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic m_()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->c()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
