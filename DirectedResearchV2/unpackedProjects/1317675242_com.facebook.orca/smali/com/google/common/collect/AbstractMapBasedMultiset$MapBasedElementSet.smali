.class Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/AbstractMapBasedMultiset;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->b:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 358
    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a:Ljava/util/Map;

    .line 359
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->c:Ljava/util/Set;

    .line 360
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->c:Ljava/util/Set;

    return-object v0
.end method

.method protected bridge synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->b:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 408
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->b:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->clear()V

    .line 416
    :cond_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 411
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a:Ljava/util/Map;

    return-object v0
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
    .line 367
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->b:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->a:Ljava/util/Map;

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
