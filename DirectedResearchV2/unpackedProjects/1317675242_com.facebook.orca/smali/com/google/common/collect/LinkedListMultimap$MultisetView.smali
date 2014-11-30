.class Lcom/google/common/collect/LinkedListMultimap$MultisetView;
.super Ljava/util/AbstractCollection;
.source "LinkedListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TK;>;",
        "Lcom/google/common/collect/Multiset",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    .line 678
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 683
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 684
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a(Ljava/lang/Object;)I

    move-result v0

    .line 685
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v1, v2, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    move v2, p2

    .line 686
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 687
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 688
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v2, v3

    goto :goto_1

    .line 683
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 690
    :cond_1
    return v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 719
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 654
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    .line 655
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
