.class Lcom/google/common/collect/Maps$AbstractFilteredMap$Values$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values$1;->b:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;

    iput-object p2, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
