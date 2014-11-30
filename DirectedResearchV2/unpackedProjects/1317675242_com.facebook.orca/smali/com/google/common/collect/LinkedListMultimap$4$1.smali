.class Lcom/google/common/collect/LinkedListMultimap$4$1;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/LinkedListMultimap$4;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$4;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->b:Lcom/google/common/collect/LinkedListMultimap$4;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 841
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 842
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$4$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$4$1$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$4$1;Lcom/google/common/collect/LinkedListMultimap$Node;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$4$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$4$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 860
    return-void
.end method
