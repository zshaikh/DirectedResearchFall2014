.class Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;
.super Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>.WrappedCollection;",
        "Ljava/util/SortedSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/SortedSet",
            "<TV;>;",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .prologue
    .line 657
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->a:Lcom/google/common/collect/AbstractMultimap;

    .line 658
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    .line 659
    return-void
.end method


# virtual methods
.method a()Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->f()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->a()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->b()V

    .line 673
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->a()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->b()V

    .line 685
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->a()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->g()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->g()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->b()V

    .line 679
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->a()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->b()V

    .line 693
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->a()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->g()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->g()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    goto :goto_0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->b()V

    .line 701
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->a()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->g()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, p0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->g()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    goto :goto_0
.end method
