.class Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry",
        "<TC;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->b:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 412
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/common/collect/ForwardingMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
