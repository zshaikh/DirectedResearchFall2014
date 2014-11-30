.class Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;
.super Lcom/google/common/collect/MapConstraints$ConstrainedMap;
.source "MapConstraints.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapConstraints$ConstrainedMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method protected bridge synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/google/common/collect/BiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 360
    invoke-super {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;->b()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/BiMap;

    return-object p0
.end method

.method public n_()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->n_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->n_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
