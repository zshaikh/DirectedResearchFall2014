.class Lcom/google/common/collect/Maps$UnmodifiableEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/Maps$UnmodifiableEntries;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$UnmodifiableEntries;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->b:Lcom/google/common/collect/Maps$UnmodifiableEntries;

    iput-object p2, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 596
    invoke-super {p0}, Lcom/google/common/collect/ForwardingIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$UnmodifiableEntries$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 600
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
