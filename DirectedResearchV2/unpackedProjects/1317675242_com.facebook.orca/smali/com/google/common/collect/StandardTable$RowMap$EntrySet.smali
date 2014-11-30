.class Lcom/google/common/collect/StandardTable$RowMap$EntrySet;
.super Lcom/google/common/collect/StandardTable$TableSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.TableSet<",
        "Ljava/util/Map$Entry",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable$RowMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$RowMap;)V
    .locals 2

    .prologue
    .line 896
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->a:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v0, p1, Lcom/google/common/collect/StandardTable$RowMap;->a:Lcom/google/common/collect/StandardTable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/StandardTable$TableSet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 906
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    .line 907
    check-cast p1, Ljava/util/Map$Entry;

    .line 908
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->a:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$RowMap;->a:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 912
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 908
    goto :goto_0

    :cond_1
    move v0, v1

    .line 912
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 898
    new-instance v0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->a:Lcom/google/common/collect/StandardTable$RowMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;-><init>(Lcom/google/common/collect/StandardTable$RowMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 916
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    .line 917
    check-cast p1, Ljava/util/Map$Entry;

    .line 918
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->a:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$RowMap;->a:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 922
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 918
    goto :goto_0

    :cond_1
    move v0, v1

    .line 922
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntrySet;->a:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$RowMap;->a:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
