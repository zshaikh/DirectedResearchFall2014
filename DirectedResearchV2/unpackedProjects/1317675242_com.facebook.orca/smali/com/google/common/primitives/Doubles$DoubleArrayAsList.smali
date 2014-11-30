.class Lcom/google/common/primitives/Doubles$DoubleArrayAsList;
.super Ljava/util/AbstractList;
.source "Doubles.java"

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
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:[D

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([DII)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 393
    iput-object p1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    .line 394
    iput p2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    .line 395
    iput p3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    .line 396
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 408
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 6

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 441
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    .line 442
    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v3, p1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 443
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 413
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles;->a([DDII)I

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

    .line 456
    if-ne p1, p0, :cond_0

    move v0, v7

    .line 472
    :goto_0
    return v0

    .line 459
    :cond_0
    instance-of v0, p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v0, :cond_4

    .line 460
    check-cast p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    .line 461
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    .line 462
    invoke-virtual {p1}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    move v0, v6

    .line 463
    goto :goto_0

    :cond_1
    move v1, v6

    .line 465
    :goto_1
    if-ge v1, v0, :cond_3

    .line 466
    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v3, v1

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v5, p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v6

    .line 467
    goto :goto_0

    .line 465
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v7

    .line 470
    goto :goto_0

    .line 472
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 476
    const/4 v0, 0x1

    .line 477
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 478
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->a(D)I

    move-result v2

    add-int/2addr v1, v2

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 419
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles;->a([DDII)I

    move-result v0

    .line 421
    if-ltz v0, :cond_0

    .line 422
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 430
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/primitives/Doubles;->b([DDII)I

    move-result v0

    .line 432
    if-ltz v0, :cond_0

    .line 433
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 436
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 381
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 399
    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    .line 448
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 449
    if-ne p1, p2, :cond_0

    .line 450
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([DII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 485
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 486
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->b:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->c:I

    if-ge v1, v2, :cond_0

    .line 487
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->a:[D

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
