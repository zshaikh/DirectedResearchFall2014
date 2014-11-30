.class Lcom/google/common/primitives/Longs$LongArrayAsList;
.super Ljava/util/AbstractList;
.source "Longs.java"

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
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:[J

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([JII)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    .line 453
    iput p2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    .line 454
    iput p3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->c:I

    .line 455
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 467
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 6

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 500
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    .line 501
    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    add-int/2addr v3, p1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 502
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 472
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Longs;->a([JJII)I

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

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 515
    if-ne p1, p0, :cond_0

    move v0, v7

    .line 531
    :goto_0
    return v0

    .line 518
    :cond_0
    instance-of v0, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v0, :cond_4

    .line 519
    check-cast p1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .line 520
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    .line 521
    invoke-virtual {p1}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    move v0, v6

    .line 522
    goto :goto_0

    :cond_1
    move v1, v6

    .line 524
    :goto_1
    if-ge v1, v0, :cond_3

    .line 525
    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    add-int/2addr v3, v1

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    iget v5, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v6

    .line 526
    goto :goto_0

    .line 524
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v7

    .line 529
    goto :goto_0

    .line 531
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Longs$LongArrayAsList;->a(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 535
    const/4 v0, 0x1

    .line 536
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 537
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->a(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 478
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Longs;->a([JJII)I

    move-result v0

    .line 480
    if-ltz v0, :cond_0

    .line 481
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 484
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 489
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Longs;->b([JJII)I

    move-result v0

    .line 491
    if-ltz v0, :cond_0

    .line 492
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 495
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Longs$LongArrayAsList;->a(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->c:I

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    .line 507
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 508
    if-ne p1, p2, :cond_0

    .line 509
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 511
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 544
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 545
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->b:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->c:I

    if-ge v1, v2, :cond_0

    .line 546
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->a:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 545
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
