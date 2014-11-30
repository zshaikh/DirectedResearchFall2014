.class public final Lcom/google/common/collect/ConcurrentHashMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "ConcurrentHashMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final transient a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient b:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ConcurrentHashMultiset",
            "<TE;>.EntrySet;"
        }
    .end annotation
.end field


# direct methods
.method private static a(Ljava/lang/Integer;)I
    .locals 1
    .param p0    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 496
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset$Entry;

    .line 190
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v2

    .line 191
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v3

    :goto_0
    if-lez v3, :cond_0

    .line 192
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 195
    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Integer;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 151
    :goto_0
    return v0

    .line 148
    :catch_0
    move-exception v0

    move v0, v1

    .line 149
    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 211
    if-nez p2, :cond_0

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 228
    :goto_0
    return v0

    .line 214
    :cond_0
    if-lez p2, :cond_2

    move v0, v6

    :goto_1
    const-string v1, "Invalid occurrences: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 218
    if-nez v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v5

    .line 220
    goto :goto_0

    :cond_2
    move v0, v5

    .line 214
    goto :goto_1

    .line 223
    :cond_3
    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    if-gt p2, v1, :cond_4

    move v1, v6

    :goto_2
    const-string v2, "Overflow adding %s occurrences to a count of %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 226
    add-int v1, v0, p2

    .line 227
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_4
    move v1, v5

    .line 223
    goto :goto_2
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 246
    if-nez p2, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 266
    :goto_0
    return v0

    .line 249
    :cond_0
    if-lez p2, :cond_2

    move v0, v2

    :goto_1
    const-string v1, "Invalid occurrences: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 253
    if-nez v0, :cond_3

    move v0, v4

    .line 254
    goto :goto_0

    :cond_2
    move v0, v4

    .line 249
    goto :goto_1

    .line 256
    :cond_3
    if-lt p2, v0, :cond_4

    .line 257
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 265
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sub-int v3, v0, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 377
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V

    return-object v1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->d()Ljava/util/Set;

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
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->b:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 397
    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->b:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 400
    :cond_0
    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 5

    .prologue
    .line 163
    const-wide/16 v0, 0x0

    .line 164
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 165
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(J)I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
