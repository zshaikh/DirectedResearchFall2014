.class Lcom/google/common/collect/Multisets$SetMultiset;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->a:Ljava/util/Set;

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 221
    if-nez p2, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$SetMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 225
    :goto_0
    return v0

    .line 224
    :cond_0
    if-lez p2, :cond_1

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 225
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 224
    goto :goto_1

    :cond_2
    move v0, v1

    .line 225
    goto :goto_0
.end method

.method protected bridge synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->b:Ljava/util/Set;

    .line 233
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;-><init>(Lcom/google/common/collect/Multisets$SetMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->c:Ljava/util/Set;

    .line 241
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;-><init>(Lcom/google/common/collect/Multisets$SetMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 272
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_1

    .line 273
    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 274
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->a:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->d()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 274
    goto :goto_0

    :cond_1
    move v0, v2

    .line 276
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 282
    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 284
    :cond_1
    return v1
.end method
