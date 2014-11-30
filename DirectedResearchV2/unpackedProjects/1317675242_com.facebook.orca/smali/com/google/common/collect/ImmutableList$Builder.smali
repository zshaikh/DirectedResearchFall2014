.class public final Lcom/google/common/collect/ImmutableList$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableList.java"


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
.field private final a:Ljava/util/ArrayList;
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

    iput-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->a:Ljava/util/ArrayList;

    .line 574
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 597
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 598
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    .line 599
    iget-object v2, p0, Lcom/google/common/collect/ImmutableList$Builder;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/common/collect/ImmutableList$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 601
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 602
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    return-object p0
.end method

.method public a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$Builder;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method
