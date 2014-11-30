.class Lcom/google/common/collect/ImmutableSortedMap$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final transient a:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 473
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->a:Lcom/google/common/collect/ImmutableSortedMap;

    .line 474
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->a:Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableSortedMap;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->a()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 490
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    .line 491
    check-cast p1, Ljava/util/Map$Entry;

    .line 492
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 495
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 493
    goto :goto_0

    :cond_1
    move v0, v2

    .line 495
    goto :goto_0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method
