.class Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractMapBasedMultiset.java"


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
.field final synthetic a:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Lcom/google/common/collect/AbstractMapBasedMultiset$1;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->b(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 156
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v0, :cond_1

    .line 160
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 161
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 162
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 162
    goto :goto_0

    :cond_1
    move v0, v2

    .line 164
    goto :goto_0
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
    .line 100
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 170
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
