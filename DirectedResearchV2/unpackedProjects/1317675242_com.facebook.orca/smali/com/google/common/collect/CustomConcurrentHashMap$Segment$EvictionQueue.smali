.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;
.super Ljava/util/AbstractQueue;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V
    .locals 1

    .prologue
    .line 2903
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->b:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 2906
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3003
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 2990
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2994
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2995
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-static {p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2997
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3008
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3009
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    .line 3010
    const/4 v0, 0x0

    .line 3014
    :goto_0
    return-object v0

    .line 3013
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3054
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eq v0, v1, :cond_0

    .line 3055
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 3056
    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->f(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    move-object v0, v1

    .line 3058
    goto :goto_0

    .line 3060
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3061
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3062
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3032
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3033
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3038
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3066
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$2;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$2;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2903
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2903
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2903
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->b()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3020
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3021
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3022
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 3023
    invoke-static {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3024
    invoke-static {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->f(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3026
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 3043
    const/4 v0, 0x0

    .line 3044
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eq v0, v2, :cond_0

    .line 3046
    add-int/lit8 v1, v1, 0x1

    .line 3045
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 3048
    :cond_0
    return v1
.end method
