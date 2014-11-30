.class final Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V
    .locals 0

    .prologue
    .line 3648
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3687
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->clear()V

    .line 3688
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3655
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v3

    .line 3665
    :goto_0
    return v0

    .line 3658
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 3659
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3660
    if-nez v0, :cond_1

    move v0, v3

    .line 3661
    goto :goto_0

    .line 3663
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3665
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap;->g:Lcom/google/common/base/Equivalence;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3683
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->isEmpty()Z

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
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3651
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3669
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v3

    .line 3674
    :goto_0
    return v0

    .line 3672
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 3673
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3674
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3679
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
