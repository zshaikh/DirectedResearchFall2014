.class Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Z

.field final synthetic e:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 1

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->a:Ljava/util/Iterator;

    .line 202
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->c:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 211
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->c:I

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->b:Ljava/util/Map$Entry;

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->c:I

    .line 215
    :cond_0
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->c:I

    .line 216
    iput-boolean v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->d:Z

    .line 217
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->d:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 225
    if-gtz v0, :cond_0

    .line 226
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->e:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->b(Lcom/google/common/collect/AbstractMapBasedMultiset;)J

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->d:Z

    .line 233
    return-void
.end method
