.class Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;
.super Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;
.source "MapConstraints.java"

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
        "Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->b_(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;->b_(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public b_(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 750
    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method
