.class Lcom/google/common/collect/AbstractMultimap$MultisetEntry;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    .line 1147
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->a:Ljava/util/Map$Entry;

    .line 1148
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
