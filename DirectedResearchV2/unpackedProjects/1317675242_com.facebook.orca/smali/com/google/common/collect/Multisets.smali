.class public final Lcom/google/common/collect/Multisets;
.super Ljava/lang/Object;
.source "Multisets.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 162
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 163
    new-instance v0, Lcom/google/common/collect/Multisets$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$1;-><init>(Ljava/lang/Object;I)V

    return-object v0

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 711
    check-cast p0, Lcom/google/common/collect/Multiset;

    return-object p0
.end method

.method static a(Lcom/google/common/collect/Multiset;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 566
    new-instance v0, Lcom/google/common/collect/Multisets$ElementSetImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$ElementSetImpl;-><init>(Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method static a(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    if-ne p1, p0, :cond_0

    move v0, v4

    .line 484
    :goto_0
    return v0

    .line 465
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_5

    .line 466
    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 473
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v3

    .line 475
    goto :goto_0

    .line 477
    :cond_2
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 478
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v0

    if-eq v2, v0, :cond_3

    move v0, v3

    .line 479
    goto :goto_0

    :cond_4
    move v0, v4

    .line 482
    goto :goto_0

    :cond_5
    move v0, v3

    .line 484
    goto :goto_0
.end method

.method static a(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 492
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 503
    :goto_0
    return v0

    .line 495
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_1

    .line 496
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 498
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v0

    invoke-interface {p0, v2, v0}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;I)I

    goto :goto_1

    .line 501
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 503
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 639
    new-instance v0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;-><init>(Lcom/google/common/collect/Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static b(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 511
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->d()Ljava/util/Set;

    move-result-object v0

    .line 514
    :goto_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, p1

    .line 511
    goto :goto_0
.end method

.method static c(Lcom/google/common/collect/Multiset;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 696
    const-wide/16 v0, 0x0

    .line 697
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->e()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset$Entry;

    .line 698
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_0

    .line 700
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(J)I

    move-result v0

    return v0
.end method

.method static c(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 522
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->d()Ljava/util/Set;

    move-result-object v0

    .line 525
    :goto_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, p1

    .line 522
    goto :goto_0
.end method
