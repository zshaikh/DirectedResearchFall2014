.class Lcom/google/common/primitives/Chars$CharArrayAsList;
.super Ljava/util/AbstractList;
.source "Chars.java"

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
        "Ljava/lang/Character;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:[C

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([CII)V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 472
    iput-object p1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    .line 473
    iput p2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    .line 474
    iput p3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    .line 475
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Character;
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 487
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Character;)Ljava/lang/Character;
    .locals 4

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 520
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    .line 521
    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v3

    aput-char v3, v1, v2

    .line 522
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 492
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->a([CCII)I

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

    .line 535
    if-ne p1, p0, :cond_0

    move v0, v6

    .line 551
    :goto_0
    return v0

    .line 538
    :cond_0
    instance-of v0, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v0, :cond_4

    .line 539
    check-cast p1, Lcom/google/common/primitives/Chars$CharArrayAsList;

    .line 540
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    .line 541
    invoke-virtual {p1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    move v0, v5

    .line 542
    goto :goto_0

    :cond_1
    move v1, v5

    .line 544
    :goto_1
    if-ge v1, v0, :cond_3

    .line 545
    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    iget-object v3, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v4, p1, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    if-eq v2, v3, :cond_2

    move v0, v5

    .line 546
    goto :goto_0

    .line 544
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v6

    .line 549
    goto :goto_0

    .line 551
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Chars$CharArrayAsList;->a(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 555
    const/4 v0, 0x1

    .line 556
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 557
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Chars;->a(C)I

    move-result v2

    add-int/2addr v1, v2

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 498
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->a([CCII)I

    move-result v0

    .line 500
    if-ltz v0, :cond_0

    .line 501
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 504
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 509
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars;->b([CCII)I

    move-result v0

    .line 511
    if-ltz v0, :cond_0

    .line 512
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 515
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Chars$CharArrayAsList;->a(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

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
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v0

    .line 527
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 528
    if-ne p1, p2, :cond_0

    .line 529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 531
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([CII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 564
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    iget v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 565
    iget v1, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->b:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->c:I

    if-ge v1, v2, :cond_0

    .line 566
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;->a:[C

    aget-char v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
