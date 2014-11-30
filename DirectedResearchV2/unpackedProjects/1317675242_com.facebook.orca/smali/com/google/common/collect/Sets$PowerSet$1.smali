.class Lcom/google/common/collect/Sets$PowerSet$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Sets$PowerSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$PowerSet;I)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/google/common/collect/Sets$PowerSet$1;->a:Lcom/google/common/collect/Sets$PowerSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$PowerSet$1;->b(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1050
    new-instance v0, Lcom/google/common/collect/Sets$PowerSet$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$PowerSet$1$1;-><init>(Lcom/google/common/collect/Sets$PowerSet$1;I)V

    return-object v0
.end method
