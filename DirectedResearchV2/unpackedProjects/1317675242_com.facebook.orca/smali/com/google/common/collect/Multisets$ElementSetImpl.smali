.class final Lcom/google/common/collect/Multisets$ElementSetImpl;
.super Ljava/util/AbstractSet;
.source "Multisets.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
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
.method constructor <init>(Lcom/google/common/collect/Multiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 574
    iput-object p1, p0, Lcom/google/common/collect/Multisets$ElementSetImpl;->a:Lcom/google/common/collect/Multiset;

    .line 575
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 582
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ElementSetImpl;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->clear()V

    .line 587
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ElementSetImpl;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ElementSetImpl;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ElementSetImpl;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ElementSetImpl;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 603
    new-instance v1, Lcom/google/common/collect/Multisets$ElementSetImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multisets$ElementSetImpl$1;-><init>(Lcom/google/common/collect/Multisets$ElementSetImpl;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ElementSetImpl;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 621
    if-lez v0, :cond_0

    .line 622
    iget-object v1, p0, Lcom/google/common/collect/Multisets$ElementSetImpl;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/Multiset;->b(Ljava/lang/Object;I)I

    .line 623
    const/4 v0, 0x1

    .line 625
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ElementSetImpl;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
