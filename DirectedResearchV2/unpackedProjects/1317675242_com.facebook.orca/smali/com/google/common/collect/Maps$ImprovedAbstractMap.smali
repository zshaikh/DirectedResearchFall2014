.class abstract Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1421
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->a:Ljava/util/Set;

    .line 1433
    if-nez v0, :cond_0

    .line 1434
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->a:Ljava/util/Set;

    .line 1436
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->b:Ljava/util/Set;

    .line 1443
    if-nez v0, :cond_0

    .line 1444
    invoke-super {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1445
    new-instance v1, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;-><init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->b:Ljava/util/Set;

    move-object v0, v1

    .line 1463
    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->c:Ljava/util/Collection;

    .line 1470
    if-nez v0, :cond_0

    .line 1471
    invoke-super {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1472
    new-instance v1, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;-><init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->c:Ljava/util/Collection;

    move-object v0, v1

    .line 1482
    :cond_0
    return-object v0
.end method
