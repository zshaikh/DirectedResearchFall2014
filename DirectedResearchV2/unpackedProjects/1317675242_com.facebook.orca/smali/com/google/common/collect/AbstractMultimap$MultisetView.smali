.class Lcom/google/common/collect/AbstractMultimap$MultisetView;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultiset",
        "<TK;>;"
    }
.end annotation


# instance fields
.field transient a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/AbstractMultimap;


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 1084
    if-nez p0, :cond_0

    move v0, v1

    .line 1088
    :goto_0
    return v0

    .line 1084
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v0

    move v0, v1

    .line 1086
    goto :goto_0

    .line 1087
    :catch_1
    move-exception v0

    move v0, v1

    .line 1088
    goto :goto_0
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1004
    if-nez p2, :cond_0

    .line 1005
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetView;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1033
    :goto_0
    return v0

    .line 1007
    :cond_0
    if-lez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1018
    if-nez v0, :cond_2

    move v0, v2

    .line 1019
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1007
    goto :goto_1

    .line 1012
    :catch_0
    move-exception v0

    move v0, v2

    .line 1013
    goto :goto_0

    .line 1014
    :catch_1
    move-exception v0

    move v0, v2

    .line 1015
    goto :goto_0

    .line 1021
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1023
    if-lt p2, v1, :cond_3

    .line 1024
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0, p1}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 1027
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1028
    :goto_2
    if-ge v2, p2, :cond_4

    .line 1029
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1030
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1028
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1032
    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;I)I

    move v0, v1

    .line 1033
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->i()V

    .line 1098
    return-void
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->h()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->a:Ljava/util/Set;

    .line 1044
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;Lcom/google/common/collect/AbstractMultimap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1076
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->b:Lcom/google/common/collect/AbstractMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->d(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method
