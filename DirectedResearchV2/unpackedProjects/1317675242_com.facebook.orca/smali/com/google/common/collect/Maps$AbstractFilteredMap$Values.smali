.class Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;
.super Ljava/util/AbstractCollection;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$AbstractFilteredMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$AbstractFilteredMap;)V
    .locals 0

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->a:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->a:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1191
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->a:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->a:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1172
    new-instance v1, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values$1;-><init>(Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->a:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1199
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->a:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v2, v2, Lcom/google/common/collect/Maps$AbstractFilteredMap;->e:Lcom/google/common/base/Predicate;

    invoke-interface {v2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1203
    const/4 v0, 0x1

    .line 1206
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
    .line 1210
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const/4 v0, 0x0

    .line 1212
    iget-object v1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->a:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v1, v1, Lcom/google/common/collect/Maps$AbstractFilteredMap;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    .line 1213
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->a:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->e:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1217
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 1219
    goto :goto_0

    .line 1220
    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_1
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
    .line 1224
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const/4 v0, 0x0

    .line 1226
    iget-object v1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->a:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v1, v1, Lcom/google/common/collect/Maps$AbstractFilteredMap;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    .line 1227
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->a:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->e:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1232
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 1234
    goto :goto_0

    .line 1235
    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->a:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
