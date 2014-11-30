.class Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;
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
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->c:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->a:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 407
    new-instance v1, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;-><init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 418
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->c:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Row;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->c:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Row;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_0
    return-void
.end method
