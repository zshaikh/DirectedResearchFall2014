.class Lcom/google/common/collect/StandardTable$Row$RowEntrySet;
.super Ljava/util/AbstractSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable$Row;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable$Row;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable$Row;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;-><init>(Lcom/google/common/collect/StandardTable$Row;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Row;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Row;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 375
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 376
    check-cast p1, Ljava/util/Map$Entry;

    .line 377
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Row;->b:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Row;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->a(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Row;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Row;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 397
    if-nez v0, :cond_0

    .line 398
    invoke-static {}, Lcom/google/common/collect/Iterators;->b()Ljava/util/Iterator;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    .line 400
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 401
    new-instance v2, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;-><init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet;Ljava/util/Iterator;Ljava/util/Map;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 383
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 384
    check-cast p1, Ljava/util/Map$Entry;

    .line 385
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Row;->b:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Row;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->b(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Row;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Row;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 392
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method
