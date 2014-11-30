.class Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->b:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 122
    if-nez v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->b:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1;->c:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->a(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet$1$1;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 128
    :cond_0
    return v0
.end method
