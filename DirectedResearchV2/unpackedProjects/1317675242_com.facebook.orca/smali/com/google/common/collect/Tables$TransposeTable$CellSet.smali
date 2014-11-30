.class Lcom/google/common/collect/Tables$TransposeTable$CellSet;
.super Lcom/google/common/collect/Collections2$TransformedCollection;
.source "Tables.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Collections2$TransformedCollection",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;",
        "Lcom/google/common/collect/Table$Cell",
        "<TC;TR;TV;>;>;",
        "Ljava/util/Set",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TC;TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Tables$TransposeTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Tables$TransposeTable;)V
    .locals 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->a:Lcom/google/common/collect/Tables$TransposeTable;

    .line 277
    iget-object v0, p1, Lcom/google/common/collect/Tables$TransposeTable;->a:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Tables$TransposeTable;->a()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Collections2$TransformedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Function;)V

    .line 278
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 299
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v0, :cond_0

    .line 300
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 301
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->a:Lcom/google/common/collect/Tables$TransposeTable;

    iget-object v0, v0, Lcom/google/common/collect/Tables$TransposeTable;->a:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/Tables;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    if-ne p1, p0, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    .line 284
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_1

    move v0, v2

    .line 285
    goto :goto_0

    .line 287
    :cond_1
    check-cast p1, Ljava/util/Set;

    .line 288
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 289
    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 295
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 308
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v0, :cond_0

    .line 309
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 310
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->a:Lcom/google/common/collect/Tables$TransposeTable;

    iget-object v0, v0, Lcom/google/common/collect/Tables$TransposeTable;->a:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/Tables;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
