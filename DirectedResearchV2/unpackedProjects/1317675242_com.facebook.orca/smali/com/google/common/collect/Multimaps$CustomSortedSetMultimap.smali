.class Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;
.super Lcom/google/common/collect/AbstractSortedSetMultimap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field transient a:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/SortedSet",
            "<TV;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->j()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->j()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected j()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->a:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method
