.class Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multimaps$UnmodifiableMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->d()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b_()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->d()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->d()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/common/collect/ListMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 640
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->b_()Lcom/google/common/collect/Multimap;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/ListMultimap;

    return-object p0
.end method
