.class abstract Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;
.super Lcom/google/inject/internal/ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableSet;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    .line 367
    return-void
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 404
    if-ne p1, p0, :cond_0

    move v0, v5

    .line 418
    :goto_0
    return v0

    .line 407
    :cond_0
    instance-of v0, p1, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;

    if-nez v0, :cond_1

    .line 408
    invoke-super {p0, p1}, Lcom/google/inject/internal/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0

    .line 410
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    move v0, v4

    .line 411
    goto :goto_0

    .line 413
    :cond_2
    check-cast p1, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;

    iget-object v0, p1, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 414
    invoke-virtual {p0, v3}, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v4

    .line 415
    goto :goto_0

    .line 413
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v5

    .line 418
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/inject/internal/Iterators;->forArray([Ljava/lang/Object;)Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 387
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v0

    .line 394
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 395
    invoke-static {p1, v0}, Lcom/google/inject/internal/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 399
    :goto_0
    iget-object v2, p0, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    return-object v1

    .line 396
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 397
    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method
