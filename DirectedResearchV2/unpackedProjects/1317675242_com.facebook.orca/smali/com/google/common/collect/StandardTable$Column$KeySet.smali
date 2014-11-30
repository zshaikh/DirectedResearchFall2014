.class Lcom/google/common/collect/StandardTable$Column$KeySet;
.super Ljava/util/AbstractSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable$Column;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Column;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->a:Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->a:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Column;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 603
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->a:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->a:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->a:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->a:Lcom/google/common/collect/StandardTable$Column;

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
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->a:Lcom/google/common/collect/StandardTable$Column;

    invoke-static {v0}, Lcom/google/common/collect/StandardTable;->a(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->a:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->a:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 607
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 608
    invoke-virtual {p0, v2}, Lcom/google/common/collect/StandardTable$Column$KeySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    .line 610
    :cond_0
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
    .line 614
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$KeySet$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Column$KeySet$1;-><init>(Lcom/google/common/collect/StandardTable$Column$KeySet;Ljava/util/Collection;)V

    .line 621
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->a:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/StandardTable$Column;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$KeySet;->a:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Column;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
