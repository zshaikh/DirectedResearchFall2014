.class public final Lcom/google/common/collect/ImmutableMultiset$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$Builder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 537
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->c()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/Multiset;

    .line 543
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 613
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 614
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    .line 615
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 616
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;

    goto :goto_0

    .line 619
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 621
    :cond_1
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    .line 554
    return-object p0
.end method

.method public a(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;I)I

    .line 572
    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method
