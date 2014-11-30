.class Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


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
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public a()Lcom/google/common/collect/SetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 661
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->b_()Lcom/google/common/collect/Multimap;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/SetMultimap;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SetMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b_()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method
