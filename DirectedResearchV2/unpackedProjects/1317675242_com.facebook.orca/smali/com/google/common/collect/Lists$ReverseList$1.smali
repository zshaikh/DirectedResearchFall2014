.class Lcom/google/common/collect/Lists$ReverseList$1;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Ljava/util/ListIterator;

.field final synthetic d:Lcom/google/common/collect/Lists$ReverseList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$ReverseList;Ljava/util/ListIterator;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/google/common/collect/Lists$ReverseList$1;->d:Lcom/google/common/collect/Lists$ReverseList;

    iput-object p2, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->b:Z

    .line 825
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 839
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->b:Z

    .line 840
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->d:Lcom/google/common/collect/Lists$ReverseList;

    iget-object v1, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists$ReverseList;->a(Lcom/google/common/collect/Lists$ReverseList;I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 851
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->a:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->b:Z

    .line 852
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->nextIndex()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->a:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->b:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->a:Z

    .line 863
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 866
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->b:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 867
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 868
    return-void
.end method
