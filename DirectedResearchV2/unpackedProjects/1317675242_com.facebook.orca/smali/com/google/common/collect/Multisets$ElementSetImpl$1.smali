.class Lcom/google/common/collect/Multisets$ElementSetImpl$1;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/Multisets$ElementSetImpl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$ElementSetImpl;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/google/common/collect/Multisets$ElementSetImpl$1;->b:Lcom/google/common/collect/Multisets$ElementSetImpl;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$ElementSetImpl$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ElementSetImpl$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ElementSetImpl$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ElementSetImpl$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 615
    return-void
.end method
