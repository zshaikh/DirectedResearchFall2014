.class Lcom/google/common/collect/StandardTable$Values;
.super Lcom/google/common/collect/StandardTable$TableCollection;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.TableCollection<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 1

    .prologue
    .line 845
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Values;->a:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/StandardTable$TableCollection;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0

    .prologue
    .line 845
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$Values;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
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
    .line 847
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Values;->a:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 848
    new-instance v1, Lcom/google/common/collect/StandardTable$Values$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/StandardTable$Values$1;-><init>(Lcom/google/common/collect/StandardTable$Values;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Values;->a:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->a()I

    move-result v0

    return v0
.end method
