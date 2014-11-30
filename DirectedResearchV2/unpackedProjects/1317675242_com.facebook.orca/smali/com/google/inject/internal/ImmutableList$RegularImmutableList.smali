.class final Lcom/google/inject/internal/ImmutableList$RegularImmutableList;
.super Lcom/google/inject/internal/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;

.field private final offset:I

.field private final size:I


# direct methods
.method private constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 350
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 351
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;II)V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/inject/internal/ImmutableList;-><init>(Lcom/google/inject/internal/ImmutableList$1;)V

    .line 344
    iput p2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    .line 345
    iput p3, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    .line 346
    iput-object p1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    .line 347
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;IILcom/google/inject/internal/ImmutableList$1;)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;Lcom/google/inject/internal/ImmutableList$1;)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/inject/internal/ImmutableList$RegularImmutableList;)I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 482
    if-ne p1, p0, :cond_0

    move v1, v7

    .line 509
    :goto_0
    return v1

    .line 485
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_1

    move v1, v6

    .line 486
    goto :goto_0

    .line 489
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 490
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v1, v6

    .line 491
    goto :goto_0

    .line 494
    :cond_2
    iget v2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    .line 495
    instance-of v3, p1, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    if-eqz v3, :cond_4

    .line 496
    check-cast p1, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    .line 497
    iget v1, p1, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    :goto_1
    iget v3, p1, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    iget v4, p1, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_6

    .line 498
    iget-object v3, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aget-object v2, v3, v2

    iget-object v3, p1, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v6

    .line 499
    goto :goto_0

    .line 497
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_1

    .line 503
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 504
    iget-object v4, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v1, v6

    .line 505
    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_2

    :cond_6
    move v1, v7

    .line 509
    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 390
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkElementIndex(II)V

    .line 391
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 515
    const/4 v0, 0x1

    .line 516
    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget v2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    iget v3, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 517
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 395
    if-eqz p1, :cond_1

    .line 396
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    :goto_0
    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    sub-int/2addr v0, v1

    .line 402
    :goto_1
    return v0

    .line 396
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    invoke-static {v0, v1, v2}, Lcom/google/inject/internal/Iterators;->forArray([Ljava/lang/Object;II)Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 406
    if-eqz p1, :cond_1

    .line 407
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    if-lt v0, v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    sub-int/2addr v0, v1

    .line 413
    :goto_1
    return v0

    .line 407
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 429
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkPositionIndex(II)V

    .line 431
    new-instance v0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;-><init>(Lcom/google/inject/internal/ImmutableList$RegularImmutableList;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    return v0
.end method

.method public subList(II)Lcom/google/inject/internal/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/inject/internal/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 417
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    invoke-static {p1, p2, v0}, Lcom/google/inject/internal/Preconditions;->checkPositionIndexes(III)V

    .line 418
    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/google/inject/internal/ImmutableList;->of()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    iget-object v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->subList(II)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 378
    array-length v0, p1

    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    if-ge v0, v1, :cond_0

    .line 379
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/inject/internal/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    return-object v0

    .line 380
    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    if-le v0, v1, :cond_1

    .line 381
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 524
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 525
    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->offset:I

    iget v3, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 526
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
