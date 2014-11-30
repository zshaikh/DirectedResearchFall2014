.class Lcom/google/common/collect/StandardTable$Column$Values;
.super Ljava/util/AbstractCollection;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable$Column;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Column;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$Values;->a:Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->a:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Column;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 640
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->a:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$Values;->a:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->a:Lcom/google/common/collect/StandardTable$Column;

    invoke-static {v0}, Lcom/google/common/collect/StandardTable;->b(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 643
    if-nez p1, :cond_0

    move v0, v5

    .line 657
    :goto_0
    return v0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->a:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 647
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 648
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 649
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/google/common/collect/ImmutableEntry;

    iget-object v4, p0, Lcom/google/common/collect/StandardTable$Column$Values;->a:Lcom/google/common/collect/StandardTable$Column;

    iget-object v4, v4, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-direct {v3, v4, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 651
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 654
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v5

    .line 657
    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$Values$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Column$Values$1;-><init>(Lcom/google/common/collect/StandardTable$Column$Values;Ljava/util/Collection;)V

    .line 668
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$Values;->a:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/StandardTable$Column;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 672
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$Values$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Column$Values$2;-><init>(Lcom/google/common/collect/StandardTable$Column$Values;Ljava/util/Collection;)V

    .line 679
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$Values;->a:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/StandardTable$Column;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->a:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Column;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
