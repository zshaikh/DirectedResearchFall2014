.class Lcom/google/common/primitives/Bytes$ByteArrayAsList;
.super Ljava/util/AbstractList;
.source "Bytes.java"

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
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:[B

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    .line 272
    iput p2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    .line 273
    iput p3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->c:I

    .line 274
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Byte;
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 286
    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Byte;)Ljava/lang/Byte;
    .locals 4

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 319
    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    .line 320
    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 321
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 291
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Bytes;->a([BBII)I

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

    .line 334
    if-ne p1, p0, :cond_0

    move v0, v6

    .line 350
    :goto_0
    return v0

    .line 337
    :cond_0
    instance-of v0, p1, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    if-eqz v0, :cond_4

    .line 338
    check-cast p1, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    .line 339
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v0

    .line 340
    invoke-virtual {p1}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    move v0, v5

    .line 341
    goto :goto_0

    :cond_1
    move v1, v5

    .line 343
    :goto_1
    if-ge v1, v0, :cond_3

    .line 344
    iget-object v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    iget-object v3, p1, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    iget v4, p1, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    add-int/2addr v4, v1

    aget-byte v3, v3, v4

    if-eq v2, v3, :cond_2

    move v0, v5

    .line 345
    goto :goto_0

    .line 343
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v6

    .line 348
    goto :goto_0

    .line 350
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a(I)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 354
    const/4 v0, 0x1

    .line 355
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->c:I

    if-ge v0, v2, :cond_0

    .line 356
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    aget-byte v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Bytes;->a(B)I

    move-result v2

    add-int/2addr v1, v2

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 297
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Bytes;->a([BBII)I

    move-result v0

    .line 299
    if-ltz v0, :cond_0

    .line 300
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 308
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Bytes;->b([BBII)I

    move-result v0

    .line 310
    if-ltz v0, :cond_0

    .line 311
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    sub-int/2addr v0, v1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a(ILjava/lang/Byte;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 277
    iget v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->c:I

    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

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
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v0

    .line 326
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 327
    if-ne p1, p2, :cond_0

    .line 328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([BII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 363
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->b:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->c:I

    if-ge v1, v2, :cond_0

    .line 365
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->a:[B

    aget-byte v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
