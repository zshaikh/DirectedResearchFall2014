.class Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->c:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->a:Ljava/util/Map$Entry;

    .line 114
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->a()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->c:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    iget-object v1, v0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 138
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->a:Ljava/util/Map$Entry;

    .line 140
    return-void

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0
.end method
