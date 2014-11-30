.class Lcom/google/common/collect/StandardTable$Column;
.super Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ImprovedAbstractMap",
        "<TR;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/StandardTable$Column$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable",
            "<TR;TC;TV;>.Column.Values;"
        }
    .end annotation
.end field

.field c:Lcom/google/common/collect/StandardTable$Column$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable",
            "<TR;TC;TV;>.Column.KeySet;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    .line 441
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    .line 442
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$Column$EntrySet;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    return-object v0
.end method

.method a(Lcom/google/common/base/Predicate;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 477
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    .line 479
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 482
    iget-object v4, p0, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 483
    if-eqz v4, :cond_2

    new-instance v5, Lcom/google/common/collect/ImmutableEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const/4 v0, 0x1

    .line 488
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_0
    :goto_1
    move v3, v0

    .line 492
    goto :goto_0

    .line 493
    :cond_1
    return v3

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->c:Lcom/google/common/collect/StandardTable$Column$KeySet;

    .line 577
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$Column$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$Column$KeySet;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->c:Lcom/google/common/collect/StandardTable$Column$KeySet;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/StandardTable;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->b:Lcom/google/common/collect/StandardTable$Column$Values;

    .line 468
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardTable$Column$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$Column$Values;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->b:Lcom/google/common/collect/StandardTable$Column$Values;

    :cond_0
    return-object v0
.end method
