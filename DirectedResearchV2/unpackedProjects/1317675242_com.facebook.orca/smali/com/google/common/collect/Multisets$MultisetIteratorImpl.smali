.class final Lcom/google/common/collect/Multisets$MultisetIteratorImpl;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private c:Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput-object p1, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->a:Lcom/google/common/collect/Multiset;

    .line 656
    iput-object p2, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->b:Ljava/util/Iterator;

    .line 657
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->d:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
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
    const/4 v1, 0x1

    .line 666
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 669
    :cond_0
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->d:I

    if-nez v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->c:Lcom/google/common/collect/Multiset$Entry;

    .line 671
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->c:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->d:I

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->e:I

    .line 673
    :cond_1
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->d:I

    .line 674
    iput-boolean v1, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->f:Z

    .line 675
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->c:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 680
    iget-boolean v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->f:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 682
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->e:I

    if-ne v0, v2, :cond_0

    .line 683
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 687
    :goto_0
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->e:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->e:I

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->f:Z

    .line 689
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->a:Lcom/google/common/collect/Multiset;

    iget-object v1, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->c:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
