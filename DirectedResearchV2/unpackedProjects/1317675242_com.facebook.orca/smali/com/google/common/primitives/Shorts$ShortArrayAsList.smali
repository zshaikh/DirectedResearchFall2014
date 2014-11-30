.class Lcom/google/common/primitives/Shorts$ShortArrayAsList;
.super Ljava/util/AbstractList;
.source "Shorts.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:[S

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([SII)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 470
    iput-object p1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    .line 471
    iput p2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    .line 472
    iput p3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    .line 473
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Short;
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 485
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-short v0, v0, v1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Short;)Ljava/lang/Short;
    .locals 4

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 518
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-short v0, v0, v1

    .line 519
    iget-object v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v1, v2

    .line 520
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 490
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->a([SSII)I

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
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 533
    if-ne p1, p0, :cond_0

    move v0, v6

    .line 549
    :goto_0
    return v0

    .line 536
    :cond_0
    instance-of v0, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v0, :cond_4

    .line 537
    check-cast p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .line 538
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    .line 539
    invoke-virtual {p1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    move v0, v5

    .line 540
    goto :goto_0

    :cond_1
    move v1, v5

    .line 542
    :goto_1
    if-ge v1, v0, :cond_3

    .line 543
    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v3, v1

    aget-short v2, v2, v3

    iget-object v3, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v4, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v4, v1

    aget-short v3, v3, v4

    if-eq v2, v3, :cond_2

    move v0, v5

    .line 544
    goto :goto_0

    .line 542
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v6

    .line 547
    goto :goto_0

    .line 549
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a(I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 553
    const/4 v0, 0x1

    .line 554
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 555
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    aget-short v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Shorts;->a(S)I

    move-result v2

    add-int/2addr v1, v2

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 496
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->a([SSII)I

    move-result v0

    .line 498
    if-ltz v0, :cond_0

    .line 499
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 507
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->b([SSII)I

    move-result v0

    .line 509
    if-ltz v0, :cond_0

    .line 510
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 513
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a(ILjava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    .line 525
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 526
    if-ne p1, p2, :cond_0

    .line 527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 529
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([SII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 562
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    aget-short v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->b:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->c:I

    if-ge v1, v2, :cond_0

    .line 564
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->a:[S

    aget-short v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
