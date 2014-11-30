.class Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;
.super Lcom/google/common/collect/StandardTable$TableCollection;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.TableCollection<",
        "Ljava/util/Map",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable$ColumnMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable$ColumnMap;)V
    .locals 2

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;->a:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object v0, p1, Lcom/google/common/collect/StandardTable$ColumnMap;->b:Lcom/google/common/collect/StandardTable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/StandardTable$TableCollection;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable$ColumnMap;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;-><init>(Lcom/google/common/collect/StandardTable$ColumnMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;->a:Lcom/google/common/collect/StandardTable$ColumnMap;

    invoke-static {v0}, Lcom/google/common/collect/StandardTable;->b(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;->a:Lcom/google/common/collect/StandardTable$ColumnMap;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$ColumnMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1053
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;->a:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$ColumnMap;->b:Lcom/google/common/collect/StandardTable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/StandardTable;->a(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1055
    const/4 v0, 0x1

    .line 1058
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1062
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const/4 v0, 0x0

    .line 1064
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;->a:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$ColumnMap;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1}, Lcom/google/common/collect/StandardTable;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1065
    iget-object v3, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;->a:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable$ColumnMap;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/StandardTable;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;->a:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$ColumnMap;->b:Lcom/google/common/collect/StandardTable;

    invoke-static {v0, v2}, Lcom/google/common/collect/StandardTable;->a(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1067
    const/4 v0, 0x1

    goto :goto_0

    .line 1070
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1074
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const/4 v0, 0x0

    .line 1076
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;->a:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$ColumnMap;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v1}, Lcom/google/common/collect/StandardTable;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1077
    iget-object v3, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;->a:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable$ColumnMap;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/StandardTable;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;->a:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$ColumnMap;->b:Lcom/google/common/collect/StandardTable;

    invoke-static {v0, v2}, Lcom/google/common/collect/StandardTable;->a(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 1079
    const/4 v0, 0x1

    goto :goto_0

    .line 1082
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$ColumnMap$ColumnMapValues;->a:Lcom/google/common/collect/StandardTable$ColumnMap;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$ColumnMap;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
