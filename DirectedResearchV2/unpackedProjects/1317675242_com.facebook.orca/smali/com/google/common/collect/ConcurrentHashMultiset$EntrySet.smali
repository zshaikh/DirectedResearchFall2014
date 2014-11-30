.class Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 464
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset$Entry;

    .line 465
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 482
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 413
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v0, :cond_1

    .line 414
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 415
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v0

    .line 416
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v1

    .line 417
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 419
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 417
    goto :goto_0

    :cond_1
    move v0, v3

    .line 419
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 425
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 471
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v0, :cond_0

    .line 472
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 473
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v0

    .line 474
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v1

    .line 475
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v2}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->a:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
