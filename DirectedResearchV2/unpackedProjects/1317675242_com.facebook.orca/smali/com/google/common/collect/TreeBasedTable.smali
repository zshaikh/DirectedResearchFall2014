.class public Lcom/google/common/collect/TreeBasedTable;
.super Lcom/google/common/collect/StandardRowSortedTable;
.source "TreeBasedTable.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/StandardRowSortedTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation
.end field


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/StandardRowSortedTable;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardRowSortedTable;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardRowSortedTable;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardRowSortedTable;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->h()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/TreeBasedTable$1;

    invoke-direct {v2, p0}, Lcom/google/common/collect/TreeBasedTable$1;-><init>(Lcom/google/common/collect/TreeBasedTable;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->j()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeBasedTable$MergingIterator;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->i()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->h()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->i()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
