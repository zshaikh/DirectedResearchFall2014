.class abstract Lcom/google/common/base/Splitter$SplittingIterator;
.super Lcom/google/common/base/Splitter$AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Splitter$AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field limit:I

.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;

.field final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method protected constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/base/Splitter$AbstractIterator;-><init>(Lcom/google/common/base/Splitter$1;)V

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 400
    # getter for: Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 401
    # getter for: Lcom/google/common/base/Splitter;->omitEmptyStrings:Z
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$300(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 402
    # getter for: Lcom/google/common/base/Splitter;->limit:I
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$400(Lcom/google/common/base/Splitter;)I

    move-result v0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 403
    iput-object p2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    .line 404
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 407
    :cond_0
    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-eq v0, v5, :cond_7

    .line 408
    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 411
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorStart(I)I

    move-result v1

    .line 412
    if-ne v1, v5, :cond_1

    .line 413
    iget-object v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 414
    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    move v7, v1

    move v1, v0

    move v0, v7

    .line 420
    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v2

    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    .line 423
    :cond_2
    :goto_1
    if-le v0, v1, :cond_3

    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    sub-int v4, v0, v6

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 424
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 427
    :cond_3
    iget-boolean v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v2, :cond_4

    if-eq v1, v0, :cond_0

    .line 431
    :cond_4
    iget v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    if-ne v2, v6, :cond_5

    .line 435
    iget-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 436
    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 438
    :goto_2
    if-le v0, v1, :cond_6

    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    sub-int v4, v0, v6

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 439
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 442
    :cond_5
    iget v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 445
    :cond_6
    iget-object v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    :goto_3
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_3
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
