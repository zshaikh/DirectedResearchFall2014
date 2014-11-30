.class Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/StandardTable$Column;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Column;)V
    .locals 1

    .prologue
    .line 549
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->b:Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 550
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->b:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->d:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 553
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 555
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->b:Lcom/google/common/collect/StandardTable$Column;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    new-instance v1, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1;-><init>(Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;Ljava/util/Map$Entry;)V

    move-object v0, v1

    .line 569
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    move-object v0, p0

    goto :goto_0
.end method
