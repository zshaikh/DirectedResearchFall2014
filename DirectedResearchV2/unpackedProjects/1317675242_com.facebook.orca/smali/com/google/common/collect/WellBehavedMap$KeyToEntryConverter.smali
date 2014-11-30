.class Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;
.super Lcom/google/common/collect/Sets$InvertibleFunction;
.source "WellBehavedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$InvertibleFunction",
        "<TK;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/common/collect/Sets$InvertibleFunction;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;->a:Ljava/util/Map;

    .line 70
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter$1;-><init>(Lcom/google/common/collect/WellBehavedMap$KeyToEntryConverter;Ljava/lang/Object;)V

    return-object v0
.end method
