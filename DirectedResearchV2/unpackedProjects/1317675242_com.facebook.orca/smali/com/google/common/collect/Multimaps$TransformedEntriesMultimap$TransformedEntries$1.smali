.class Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV1;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$EntryTransformer;


# virtual methods
.method public a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1422
    new-instance v0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries$1$1;-><init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries$1;Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1420
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries$1;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
