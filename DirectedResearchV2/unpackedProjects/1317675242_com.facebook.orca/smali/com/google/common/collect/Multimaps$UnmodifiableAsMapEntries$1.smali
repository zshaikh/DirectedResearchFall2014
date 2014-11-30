.class Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->b:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->a:Ljava/util/Iterator;

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
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

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
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 920
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapEntries$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
