.class Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;
.super Lcom/google/common/collect/ForwardingSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$FilteredEntryMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V
    .locals 0

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;Lcom/google/common/collect/Maps$1;)V
    .locals 0

    .prologue
    .line 1305
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected bridge synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
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
    .line 1311
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;->a:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1312
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method
