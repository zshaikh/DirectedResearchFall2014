.class Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/ImmutableMultiset$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset$EntrySet;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->b:Lcom/google/common/collect/ImmutableMultiset$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 407
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet$1;->a()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
