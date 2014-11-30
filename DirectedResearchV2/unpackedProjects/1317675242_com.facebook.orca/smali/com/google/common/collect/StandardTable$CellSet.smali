.class Lcom/google/common/collect/StandardTable$CellSet;
.super Lcom/google/common/collect/StandardTable$TableSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.TableSet<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 1

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$CellSet;->a:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/StandardTable$TableSet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$CellSet;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 284
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v0, :cond_0

    .line 285
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 286
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$CellSet;->a:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->a(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 289
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
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Lcom/google/common/collect/StandardTable$CellIterator;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$CellSet;->a:Lcom/google/common/collect/StandardTable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardTable$CellIterator;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 293
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v0, :cond_0

    .line 294
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 295
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$CellSet;->a:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->b(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$CellSet;->a:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->a()I

    move-result v0

    return v0
.end method
