.class final Ljsr166y/ConcurrentReferenceHashMap$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
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
.field final synthetic a:Ljsr166y/ConcurrentReferenceHashMap;


# direct methods
.method constructor <init>(Ljsr166y/ConcurrentReferenceHashMap;)V
    .locals 0

    .prologue
    .line 1649
    iput-object p1, p0, Ljsr166y/ConcurrentReferenceHashMap$b;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1673
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$b;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap;->clear()V

    .line 1674
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap$b;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>.b;"
    const/4 v2, 0x0

    .line 1654
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v2

    .line 1658
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 1656
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1657
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$b;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsr166y/ConcurrentReferenceHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1658
    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$b;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap;->isEmpty()Z

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
    .line 1651
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$a;

    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$b;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-direct {v0, v1}, Ljsr166y/ConcurrentReferenceHashMap$a;-><init>(Ljsr166y/ConcurrentReferenceHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1661
    .local p0, "this":Ljsr166y/ConcurrentReferenceHashMap$b;, "Ljsr166y/ConcurrentReferenceHashMap<TK;TV;>.b;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 1662
    const/4 v0, 0x0

    .line 1664
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 1663
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1664
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$b;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljsr166y/ConcurrentReferenceHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$b;->a:Ljsr166y/ConcurrentReferenceHashMap;

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap;->size()I

    move-result v0

    return v0
.end method
