.class final Lcom/google/common/collect/CustomConcurrentHashMap$2;
.super Ljava/util/AbstractQueue;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<**>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 805
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 813
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 808
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 818
    const/4 v0, 0x0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 828
    invoke-static {}, Lcom/google/common/collect/Iterators;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 805
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$2;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$2;->a()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$2;->b()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x0

    return v0
.end method
