.class Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;
.source "Multimaps.java"

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
        "Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/SetMultimap;
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->d()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->b_(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->b_(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b_()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->d()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public b_(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->d()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SortedSetMultimap;->b_(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->d()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/common/collect/SortedSetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 689
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/SortedSetMultimap;

    return-object p0
.end method
