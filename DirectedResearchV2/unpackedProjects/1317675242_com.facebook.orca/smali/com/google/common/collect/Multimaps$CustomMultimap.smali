.class Lcom/google/common/collect/Multimaps$CustomMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field transient a:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomMultimap;->a:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
