.class public final Lcom/google/common/collect/MinMaxPriorityQueue;
.super Ljava/util/AbstractQueue;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/Object;

.field private e:I

.field private f:I


# direct methods
.method private static a(II)I
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x1

    sub-int v0, p0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private a(ILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->e(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move-result-object v0

    .line 414
    invoke-virtual {v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c(I)I

    move-result v1

    .line 416
    invoke-virtual {v0, v1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b(ILjava/lang/Object;)I

    move-result v2

    .line 417
    if-ne v2, v1, :cond_0

    .line 421
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    move-result-object v0

    .line 423
    :goto_0
    return-object v0

    :cond_0
    if-ge v2, p1, :cond_1

    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method private b()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 296
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    packed-switch v0, :pswitch_data_0

    .line 304
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a(II)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    .line 298
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 300
    goto :goto_0

    :cond_0
    move v0, v2

    .line 304
    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/common/collect/MinMaxPriorityQueue;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    return v0
.end method

.method static synthetic c(Lcom/google/common/collect/MinMaxPriorityQueue;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 914
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->d()I

    move-result v0

    .line 916
    new-array v0, v0, [Ljava/lang/Object;

    .line 917
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 918
    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 920
    :cond_0
    return-void
.end method

.method static c(I)Z
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 457
    add-int/lit8 v0, p0, 0x1

    .line 458
    if-lez v0, :cond_0

    move v1, v4

    :goto_0
    const-string v2, "negative index"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 459
    const v1, 0x55555555

    and-int/2addr v1, v0

    const v2, -0x55555556

    and-int/2addr v0, v2

    if-le v1, v0, :cond_1

    move v0, v4

    :goto_1
    return v0

    :cond_0
    move v1, v3

    .line 458
    goto :goto_0

    :cond_1
    move v0, v3

    .line 459
    goto :goto_1
.end method

.method private d()I
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    array-length v0, v0

    .line 925
    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    .line 928
    :goto_0
    if-gez v0, :cond_0

    .line 929
    const v0, 0x7fffffff

    .line 931
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->a:I

    invoke-static {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(II)I

    move-result v0

    return v0

    .line 925
    :cond_1
    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method private d(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 445
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    .line 446
    return-object v0
.end method

.method private e(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->d(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 255
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return v0
.end method

.method b(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 377
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 378
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 379
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    .line 380
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    if-ne v0, p1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    aput-object v5, v0, v1

    move-object v0, v5

    .line 402
    :goto_0
    return-object v0

    .line 384
    :cond_0
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 385
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->e(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a(Ljava/lang/Object;)I

    move-result v1

    .line 387
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-virtual {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v2

    .line 388
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    aput-object v5, v3, v4

    .line 389
    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(ILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    move-result-object v3

    .line 390
    if-ge v1, p1, :cond_2

    .line 392
    if-nez v3, :cond_1

    .line 394
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 398
    :cond_1
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    iget-object v2, v3, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;->b:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 402
    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 867
    move v0, v3

    :goto_0
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    if-ge v0, v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 870
    :cond_0
    iput v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    .line 871
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 863
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 269
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    .line 271
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->c()V

    .line 275
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->e(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a(ILjava/lang/Object;)V

    .line 276
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->a:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->d(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 874
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 875
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 876
    return-object v0
.end method
