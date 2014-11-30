.class final Lcom/google/common/collect/Iterators$6;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:I

.field final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/util/Iterator;IZ)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/common/collect/Iterators$6;->a:Ljava/util/Iterator;

    iput p2, p0, Lcom/google/common/collect/Iterators$6;->b:I

    iput-boolean p3, p0, Lcom/google/common/collect/Iterators$6;->c:Z

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 600
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$6;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 603
    :cond_0
    iget v0, p0, Lcom/google/common/collect/Iterators$6;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    move v1, v3

    .line 605
    :goto_0
    iget v2, p0, Lcom/google/common/collect/Iterators$6;->b:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/Iterators$6;->a:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/google/common/collect/Iterators$6;->a:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 612
    iget-boolean v2, p0, Lcom/google/common/collect/Iterators$6;->c:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/common/collect/Iterators$6;->b:I

    if-ne v1, v2, :cond_3

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/common/collect/Iterators$6;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$6;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
