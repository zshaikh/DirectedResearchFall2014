.class Lcom/google/common/collect/ConcurrentHashMultiset$1;
.super Lcom/google/common/collect/ForwardingSet;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->a:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected bridge synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$1;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 387
    :goto_0
    return v0

    .line 384
    :catch_0
    move-exception v0

    move v0, v1

    .line 385
    goto :goto_0

    .line 386
    :catch_1
    move-exception v0

    move v0, v1

    .line 387
    goto :goto_0
.end method
