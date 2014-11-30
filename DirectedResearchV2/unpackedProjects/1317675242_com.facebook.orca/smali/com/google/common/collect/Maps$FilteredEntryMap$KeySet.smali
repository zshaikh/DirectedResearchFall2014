.class Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;
.super Ljava/util/AbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$FilteredEntryMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V
    .locals 0

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;Lcom/google/common/collect/Maps$1;)V
    .locals 0

    .prologue
    .line 1343
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1365
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1346
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    const/4 v0, 0x1

    .line 1376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1380
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    const/4 v0, 0x0

    .line 1382
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1383
    invoke-virtual {p0, v2}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    .line 1385
    :cond_0
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
    .line 1389
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    const/4 v0, 0x0

    .line 1391
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v1, Lcom/google/common/collect/Maps$FilteredEntryMap;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    .line 1392
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1394
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$FilteredEntryMap;->e:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1396
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 1398
    goto :goto_0

    .line 1399
    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

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
    .line 1408
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
