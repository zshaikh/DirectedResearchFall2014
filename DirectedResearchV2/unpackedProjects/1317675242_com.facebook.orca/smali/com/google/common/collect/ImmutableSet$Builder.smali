.class public Lcom/google/common/collect/ImmutableSet$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableSet.java"


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
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 568
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->a:Ljava/util/ArrayList;

    .line 574
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 615
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 616
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    .line 617
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSet$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 619
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 620
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method
