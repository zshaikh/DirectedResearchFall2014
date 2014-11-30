.class public Lcom/google/common/collect/TreeMultimap;
.super Lcom/google/common/collect/AbstractSortedSetMultimap;
.source "TreeMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

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
.field private transient a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->l()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b_(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->b_(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->j()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c_()I
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->c_()I

    move-result v0

    return v0
.end method

.method bridge synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->j()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->k()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->i()V

    return-void
.end method

.method j()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public k()Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->h()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public l()Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->b()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Ljava/util/SortedMap;

    return-object p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
