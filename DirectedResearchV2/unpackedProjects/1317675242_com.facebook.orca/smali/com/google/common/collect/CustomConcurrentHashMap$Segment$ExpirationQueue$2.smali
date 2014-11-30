.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;
.super Lcom/google/common/collect/AbstractLinkedIterator;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractLinkedIterator",
        "<",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0

    .prologue
    .line 3252
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;->a:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractLinkedIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3256
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3257
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;->a:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;

    iget-object v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3252
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method
