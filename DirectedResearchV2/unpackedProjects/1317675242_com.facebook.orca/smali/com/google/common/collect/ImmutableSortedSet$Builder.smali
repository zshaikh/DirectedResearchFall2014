.class public final Lcom/google/common/collect/ImmutableSortedSet$Builder;
.super Lcom/google/common/collect/ImmutableSet$Builder;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$Builder",
        "<TE;>;"
    }
.end annotation


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 647
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 648
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 621
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 622
    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method
