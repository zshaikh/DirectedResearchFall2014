.class final Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntrySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V
    .locals 0

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->clear()V

    .line 1870
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1838
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v3

    .line 1848
    :goto_0
    return v0

    .line 1841
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1842
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1843
    if-nez v0, :cond_1

    move v0, v3

    .line 1844
    goto :goto_0

    .line 1846
    :cond_1
    iget-object v1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1848
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->isEmpty()Z

    move-result v0

    return v0
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
    .line 1834
    new-instance v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntryIterator;

    iget-object v1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntryIterator;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1852
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v3

    .line 1857
    :goto_0
    return v0

    .line 1855
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1856
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1857
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    return v0
.end method
