.class Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;)V
    .locals 0
    .parameter

    .prologue
    .line 801
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 832
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->clear()V

    .line 833
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 815
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
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
    .line 807
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet$1;-><init>(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 819
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    move v1, v2

    .line 828
    .end local p1
    :goto_0
    return v1

    .line 823
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 824
    .local v0, node:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v0, :cond_1

    move v1, v2

    .line 825
    goto :goto_0

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v1, v0, v3}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    move v1, v3

    .line 828
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 803
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method
