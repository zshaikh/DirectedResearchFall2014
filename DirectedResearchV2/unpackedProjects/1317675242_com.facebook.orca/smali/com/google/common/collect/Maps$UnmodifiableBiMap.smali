.class Lcom/google/common/collect/Maps$UnmodifiableBiMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<+TK;+TV;>;"
        }
    .end annotation
.end field

.field transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->a:Ljava/util/Map;

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
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
    .line 714
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->c:Ljava/util/Set;

    .line 715
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->b:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->n_()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableBiMap;->n_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
