.class Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 393
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    .line 394
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->a(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 399
    new-instance v1, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/ImmutableMultiset$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method c()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->c()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v0, :cond_2

    .line 424
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 425
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v2

    .line 431
    :goto_0
    return v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 429
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 431
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->a(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->a(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 437
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v0

    .line 443
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 444
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 451
    :goto_0
    const/4 v1, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset$Entry;

    .line 453
    add-int/lit8 v3, v1, 0x1

    aput-object p0, v0, v1

    move v1, v3

    goto :goto_1

    .line 445
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 446
    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    move-object v0, p1

    goto :goto_0

    .line 455
    :cond_2
    return-object v0
.end method
