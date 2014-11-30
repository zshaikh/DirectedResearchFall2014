.class final Lcom/google/common/collect/Iterables$13;
.super Ljava/lang/Object;
.source "Iterables.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 900
    new-instance v0, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;

    iget-object p0, p0, Lcom/google/common/collect/Iterables$13;->a:Ljava/lang/Iterable;

    check-cast p0, Ljava/util/Queue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;-><init>(Ljava/util/Queue;Lcom/google/common/collect/Iterables$1;)V

    return-object v0
.end method
