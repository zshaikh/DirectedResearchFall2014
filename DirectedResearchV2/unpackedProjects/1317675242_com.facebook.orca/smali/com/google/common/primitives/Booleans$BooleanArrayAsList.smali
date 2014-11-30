.class Lcom/google/common/primitives/Booleans$BooleanArrayAsList;
.super Ljava/util/AbstractList;
.source "Booleans.java"

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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:[Z

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([ZII)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    .line 357
    iput p2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    .line 358
    iput p3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->c:I

    .line 359
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 371
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 404
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-boolean v0, v0, v1

    .line 405
    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 406
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 376
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans;->a([ZZII)I

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

    .line 419
    if-ne p1, p0, :cond_0

    move v0, v6

    .line 435
    :goto_0
    return v0

    .line 422
    :cond_0
    instance-of v0, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v0, :cond_4

    .line 423
    check-cast p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    .line 424
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    .line 425
    invoke-virtual {p1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    move v0, v5

    .line 426
    goto :goto_0

    :cond_1
    move v1, v5

    .line 428
    :goto_1
    if-ge v1, v0, :cond_3

    .line 429
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    add-int/2addr v3, v1

    aget-boolean v2, v2, v3

    iget-object v3, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    iget v4, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    add-int/2addr v4, v1

    aget-boolean v3, v3, v4

    if-eq v2, v3, :cond_2

    move v0, v5

    .line 430
    goto :goto_0

    .line 428
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v6

    .line 433
    goto :goto_0

    .line 435
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 439
    const/4 v0, 0x1

    .line 440
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 441
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    aget-boolean v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Booleans;->a(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 382
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans;->a([ZZII)I

    move-result v0

    .line 384
    if-ltz v0, :cond_0

    .line 385
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 393
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans;->b([ZZII)I

    move-result v0

    .line 395
    if-ltz v0, :cond_0

    .line 396
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 362
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->c:I

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    .line 411
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 412
    if-ne p1, p2, :cond_0

    .line 413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([ZII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 448
    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    const-string v1, "[true"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->b:I

    add-int/lit8 v1, v1, 0x1

    :goto_1
    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->c:I

    if-ge v1, v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->a:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    const-string v2, ", true"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 448
    :cond_0
    const-string v1, "[false"

    goto :goto_0

    .line 450
    :cond_1
    const-string v2, ", false"

    goto :goto_2

    .line 452
    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
