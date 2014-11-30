.class Lcom/google/common/collect/Synchronized$SynchronizedSet;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/Synchronized$1;)V

    .line 213
    return-void
.end method


# virtual methods
.method bridge synthetic a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->a()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 220
    if-ne p1, p0, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSet;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->c()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 225
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
    .line 229
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSet;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->c()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 231
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
    .line 208
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSet;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
