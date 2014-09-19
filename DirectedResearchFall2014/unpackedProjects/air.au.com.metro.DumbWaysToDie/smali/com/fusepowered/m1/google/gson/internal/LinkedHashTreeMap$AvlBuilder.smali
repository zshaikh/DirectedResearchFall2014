.class final Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 680
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    .local p1, node:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 697
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 698
    iput v6, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 701
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 702
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 703
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 704
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 707
    :cond_0
    iget-object v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 708
    iput-object p1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 709
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 712
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 713
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 714
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 715
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 731
    :cond_1
    const/4 v3, 0x4

    .local v3, scale:I
    :goto_0
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    sub-int v5, v3, v6

    and-int/2addr v4, v5

    sub-int v5, v3, v6

    if-ne v4, v5, :cond_5

    .line 732
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-nez v4, :cond_3

    .line 734
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 735
    .local v2, right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 736
    .local v0, center:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 737
    .local v1, left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v4, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 738
    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 740
    iput-object v1, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 741
    iput-object v2, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 742
    iget v4, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 743
    iput-object v0, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 744
    iput-object v0, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 731
    .end local v0           #center:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v1           #left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2           #right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_2
    :goto_1
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 745
    :cond_3
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-ne v4, v6, :cond_4

    .line 747
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 748
    .restart local v2       #right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 749
    .restart local v0       #center:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 751
    iput-object v2, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 752
    iget v4, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 753
    iput-object v0, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 754
    iput v7, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_1

    .line 755
    .end local v0           #center:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2           #right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_4
    iget v4, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 756
    iput v7, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_1

    .line 759
    :cond_5
    return-void
.end method

.method reset(I)V
    .locals 4
    .parameter "targetSize"

    .prologue
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    const/4 v3, 0x0

    .line 689
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 690
    .local v0, treeCapacity:I
    sub-int v1, v0, p1

    iput v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 691
    iput v3, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 692
    iput v3, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 693
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 694
    return-void
.end method

.method root()Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 762
    .local p0, this:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 763
    .local v0, stackTop:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;,"Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v1, :cond_0

    .line 764
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 766
    :cond_0
    return-object v0
.end method
