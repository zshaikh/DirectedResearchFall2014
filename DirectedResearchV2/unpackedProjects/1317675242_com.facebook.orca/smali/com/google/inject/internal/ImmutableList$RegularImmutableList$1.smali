.class Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;
.super Ljava/lang/Object;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/google/inject/internal/ImmutableList$RegularImmutableList;I)V
    .locals 1

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->this$0:Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    iput p2, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->val$start:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->val$start:I

    iput v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->index:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 435
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->index:I

    iget-object v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->this$0:Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    # getter for: Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->size:I
    invoke-static {v1}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->access$300(Lcom/google/inject/internal/ImmutableList$RegularImmutableList;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->this$0:Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->index:I

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 455
    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->index:I

    .line 456
    return-object v0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->this$0:Lcom/google/inject/internal/ImmutableList$RegularImmutableList;

    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->index:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/ImmutableList$RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 465
    iget v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->index:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->index:I

    .line 466
    return-object v0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 445
    iget v0, p0, Lcom/google/inject/internal/ImmutableList$RegularImmutableList$1;->index:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
