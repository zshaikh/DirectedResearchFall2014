.class Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TR;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/StandardTable$RowMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$RowMap;)V
    .locals 1

    .prologue
    .line 926
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->b:Lcom/google/common/collect/StandardTable$RowMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->b:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$RowMap;->a:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 935
    new-instance v1, Lcom/google/common/collect/ImmutableEntry;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->b:Lcom/google/common/collect/StandardTable$RowMap;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$RowMap;->a:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/StandardTable;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowMap$EntryIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 940
    return-void
.end method
