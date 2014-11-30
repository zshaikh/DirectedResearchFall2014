.class Lcom/google/common/collect/Synchronized$SynchronizedBiMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method bridge synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/google/common/collect/BiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1095
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->c()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/BiMap;

    return-object p0
.end method

.method bridge synthetic m_()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public n_()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 1100
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->f:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->n_()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->f:Ljava/util/Set;

    .line 1103
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->f:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->n_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
