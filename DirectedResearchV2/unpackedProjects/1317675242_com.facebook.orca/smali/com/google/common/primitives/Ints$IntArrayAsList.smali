.class Lcom/google/common/primitives/Ints$IntArrayAsList;
.super Ljava/util/AbstractList;
.source "Ints.java"

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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:[I

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([III)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    .line 470
    iput p2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    .line 471
    iput p3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->c:I

    .line 472
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 484
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 517
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    .line 518
    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 519
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 489
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->a([IIII)I

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

    .line 532
    if-ne p1, p0, :cond_0

    move v0, v6

    .line 548
    :goto_0
    return v0

    .line 535
    :cond_0
    instance-of v0, p1, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v0, :cond_4

    .line 536
    check-cast p1, Lcom/google/common/primitives/Ints$IntArrayAsList;

    .line 537
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    .line 538
    invoke-virtual {p1}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    move v0, v5

    .line 539
    goto :goto_0

    :cond_1
    move v1, v5

    .line 541
    :goto_1
    if-ge v1, v0, :cond_3

    .line 542
    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    add-int/2addr v3, v1

    aget v2, v2, v3

    iget-object v3, p1, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    iget v4, p1, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    add-int/2addr v4, v1

    aget v3, v3, v4

    if-eq v2, v3, :cond_2

    move v0, v5

    .line 543
    goto :goto_0

    .line 541
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v6

    .line 546
    goto :goto_0

    .line 548
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Ints$IntArrayAsList;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 552
    const/4 v0, 0x1

    .line 553
    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 554
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 495
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->a([IIII)I

    move-result v0

    .line 497
    if-ltz v0, :cond_0

    .line 498
    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 501
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 506
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->b([IIII)I

    move-result v0

    .line 508
    if-ltz v0, :cond_0

    .line 509
    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 512
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 457
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Ints$IntArrayAsList;->a(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 475
    iget v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->c:I

    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    .line 524
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 525
    if-ne p1, p2, :cond_0

    .line 526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([III)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 561
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    iget v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->b:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->c:I

    if-ge v1, v2, :cond_0

    .line 563
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->a:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
