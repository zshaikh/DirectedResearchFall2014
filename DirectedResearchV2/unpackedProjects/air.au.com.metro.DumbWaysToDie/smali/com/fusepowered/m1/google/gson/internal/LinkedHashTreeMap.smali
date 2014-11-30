.class public final Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$KeySet;,
        Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;,
        Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,
        Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,
        Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlIterator;,
        Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I

.field table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    .line 42
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$1;

    invoke-direct {v0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$1;-><init>()V

    sput-object v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    sget-object v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 51
    iput v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 52
    iput v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->modCount:I

    .line 73
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 76
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-direct {v0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->header:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 78
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->threshold:I

    .line 79
    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private doubleCapacity()V
    .locals 2

    .prologue
    .line 558
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-static {v0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->doubleCapacity([Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 559
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->threshold:I

    .line 560
    return-void
.end method

.method static doubleCapacity([Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)[",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "oldTable":[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    array-length v7, p0

    .line 570
    .local v7, "oldCapacity":I
    mul-int/lit8 v12, v7, 0x2

    new-array v5, v12, [Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 571
    .local v5, "newTable":[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    new-instance v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlIterator;

    invoke-direct {v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlIterator;-><init>()V

    .line 572
    .local v1, "iterator":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlIterator;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    new-instance v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v2}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    .line 573
    .local v2, "leftBuilder":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    new-instance v8, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v8}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    .line 576
    .local v8, "rightBuilder":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_7

    .line 577
    aget-object v11, p0, v0

    .line 578
    .local v11, "root":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v11, :cond_0

    .line 576
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_0
    invoke-virtual {v1, v11}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 584
    const/4 v4, 0x0

    .line 585
    .local v4, "leftSize":I
    const/4 v10, 0x0

    .line 586
    .local v10, "rightSize":I
    :goto_2
    invoke-virtual {v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v6

    .local v6, "node":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v6, :cond_2

    .line 587
    iget v12, v6, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v12, v7

    if-nez v12, :cond_1

    .line 588
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 590
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 595
    :cond_2
    const/4 v3, 0x0

    .line 596
    .local v3, "leftRoot":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v9, 0x0

    .line 597
    .local v9, "rightRoot":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-lez v4, :cond_5

    if-lez v10, :cond_5

    .line 598
    invoke-virtual {v2, v4}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 599
    invoke-virtual {v8, v10}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 600
    invoke-virtual {v1, v11}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 601
    :goto_3
    invoke-virtual {v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 602
    iget v12, v6, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v12, v7

    if-nez v12, :cond_3

    .line 603
    invoke-virtual {v2, v6}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_3

    .line 605
    :cond_3
    invoke-virtual {v8, v6}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_3

    .line 608
    :cond_4
    invoke-virtual {v2}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v3

    .line 609
    invoke-virtual {v8}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v9

    .line 617
    :goto_4
    aput-object v3, v5, v0

    .line 618
    add-int v12, v0, v7

    aput-object v9, v5, v12

    goto :goto_1

    .line 610
    :cond_5
    if-lez v4, :cond_6

    .line 611
    move-object v3, v11

    goto :goto_4

    .line 613
    :cond_6
    move-object v9, v11

    goto :goto_4

    .line 620
    .end local v3    # "leftRoot":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v4    # "leftSize":I
    .end local v6    # "node":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v9    # "rightRoot":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v10    # "rightSize":I
    .end local v11    # "root":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_7
    return-object v5
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 224
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private rebalance(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .locals 19
    .param p2, "insert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "unbalanced":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object/from16 v10, p1

    .local v10, "node":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v10, :cond_1

    .line 340
    iget-object v3, v10, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 341
    .local v3, "left":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v11, v10, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 342
    .local v11, "right":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v3, :cond_2

    move-object v0, v3

    iget v0, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v5, v18

    .line 343
    .local v5, "leftHeight":I
    :goto_1
    if-eqz v11, :cond_3

    move-object v0, v11

    iget v0, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v13, v18

    .line 345
    .local v13, "rightHeight":I
    :goto_2
    sub-int v2, v5, v13

    .line 346
    .local v2, "delta":I
    const/16 v18, -0x2

    move v0, v2

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 347
    iget-object v14, v11, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 348
    .local v14, "rightLeft":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object v0, v11

    iget-object v0, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-object/from16 v16, v0

    .line 349
    .local v16, "rightRight":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v17, v18

    .line 350
    .local v17, "rightRightHeight":I
    :goto_3
    if-eqz v14, :cond_5

    move-object v0, v14

    iget v0, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v15, v18

    .line 352
    .local v15, "rightLeftHeight":I
    :goto_4
    sub-int v12, v15, v17

    .line 353
    .local v12, "rightDelta":I
    const/16 v18, -0x1

    move v0, v12

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    if-nez v12, :cond_6

    if-nez p2, :cond_6

    .line 354
    :cond_0
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 360
    :goto_5
    if-eqz p2, :cond_a

    .line 396
    .end local v2    # "delta":I
    .end local v3    # "left":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v5    # "leftHeight":I
    .end local v11    # "right":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v12    # "rightDelta":I
    .end local v13    # "rightHeight":I
    .end local v14    # "rightLeft":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v15    # "rightLeftHeight":I
    .end local v16    # "rightRight":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v17    # "rightRightHeight":I
    :cond_1
    :goto_6
    return-void

    .line 342
    .restart local v3    # "left":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .restart local v11    # "right":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_2
    const/16 v18, 0x0

    move/from16 v5, v18

    goto :goto_1

    .line 343
    .restart local v5    # "leftHeight":I
    :cond_3
    const/16 v18, 0x0

    move/from16 v13, v18

    goto :goto_2

    .line 349
    .restart local v2    # "delta":I
    .restart local v13    # "rightHeight":I
    .restart local v14    # "rightLeft":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .restart local v16    # "rightRight":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_4
    const/16 v18, 0x0

    move/from16 v17, v18

    goto :goto_3

    .line 350
    .restart local v17    # "rightRightHeight":I
    :cond_5
    const/16 v18, 0x0

    move/from16 v15, v18

    goto :goto_4

    .line 356
    .restart local v12    # "rightDelta":I
    .restart local v15    # "rightLeftHeight":I
    :cond_6
    sget-boolean v18, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v18, :cond_7

    const/16 v18, 0x1

    move v0, v12

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 357
    :cond_7
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 358
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_5

    .line 364
    .end local v12    # "rightDelta":I
    .end local v14    # "rightLeft":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v15    # "rightLeftHeight":I
    .end local v16    # "rightRight":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v17    # "rightRightHeight":I
    :cond_8
    const/16 v18, 0x2

    move v0, v2

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 365
    iget-object v6, v3, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 366
    .local v6, "leftLeft":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v8, v3, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 367
    .local v8, "leftRight":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v8, :cond_b

    move-object v0, v8

    iget v0, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v9, v18

    .line 368
    .local v9, "leftRightHeight":I
    :goto_7
    if-eqz v6, :cond_c

    move-object v0, v6

    iget v0, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move/from16 v18, v0

    move/from16 v7, v18

    .line 370
    .local v7, "leftLeftHeight":I
    :goto_8
    sub-int v4, v7, v9

    .line 371
    .local v4, "leftDelta":I
    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    if-nez v4, :cond_d

    if-nez p2, :cond_d

    .line 372
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 378
    :goto_9
    if-nez p2, :cond_1

    .line 339
    .end local v4    # "leftDelta":I
    .end local v6    # "leftLeft":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v7    # "leftLeftHeight":I
    .end local v8    # "leftRight":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v9    # "leftRightHeight":I
    :cond_a
    iget-object v10, v10, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    goto/16 :goto_0

    .line 367
    .restart local v6    # "leftLeft":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .restart local v8    # "leftRight":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_b
    const/16 v18, 0x0

    move/from16 v9, v18

    goto :goto_7

    .line 368
    .restart local v9    # "leftRightHeight":I
    :cond_c
    const/16 v18, 0x0

    move/from16 v7, v18

    goto :goto_8

    .line 374
    .restart local v4    # "leftDelta":I
    .restart local v7    # "leftLeftHeight":I
    :cond_d
    sget-boolean v18, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v18, :cond_e

    const/16 v18, -0x1

    move v0, v4

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 375
    :cond_e
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 376
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_9

    .line 382
    .end local v4    # "leftDelta":I
    .end local v6    # "leftLeft":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v7    # "leftLeftHeight":I
    .end local v8    # "leftRight":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v9    # "leftRightHeight":I
    :cond_f
    if-nez v2, :cond_10

    .line 383
    add-int/lit8 v18, v5, 0x1

    move/from16 v0, v18

    move-object v1, v10

    iput v0, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 384
    if-eqz p2, :cond_a

    goto/16 :goto_6

    .line 389
    :cond_10
    sget-boolean v18, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v18, :cond_11

    const/16 v18, -0x1

    move v0, v2

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    const/16 v18, 0x1

    move v0, v2

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 390
    :cond_11
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object v1, v10

    iput v0, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 391
    if-nez p2, :cond_a

    goto/16 :goto_6
.end method

.method private replaceInParent(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p2, "replacement":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 313
    .local v1, "parent":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 314
    if-eqz p2, :cond_0

    .line 315
    iput-object v1, p2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 318
    :cond_0
    if-eqz v1, :cond_3

    .line 319
    iget-object v2, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    if-ne v2, p1, :cond_1

    .line 320
    iput-object p2, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 329
    :goto_0
    return-void

    .line 322
    :cond_1
    sget-boolean v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v2, p1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 323
    :cond_2
    iput-object p2, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 326
    :cond_3
    iget v2, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    iget-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int v0, v2, v3

    .line 327
    .local v0, "index":I
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    aput-object p2, v2, v0

    goto :goto_0
.end method

.method private rotateLeft(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v6, 0x0

    .line 402
    iget-object v0, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 403
    .local v0, "left":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 404
    .local v1, "pivot":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 405
    .local v2, "pivotLeft":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 408
    .local v3, "pivotRight":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 409
    if-eqz v2, :cond_0

    .line 410
    iput-object p1, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 413
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 416
    iput-object p1, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 417
    iput-object v1, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 420
    if-eqz v0, :cond_1

    iget v4, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_0
    if-eqz v2, :cond_2

    iget v5, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 422
    iget v4, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v3, :cond_3

    iget v5, v3, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 424
    return-void

    :cond_1
    move v4, v6

    .line 420
    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v6

    .line 422
    goto :goto_2
.end method

.method private rotateRight(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v6, 0x0

    .line 430
    iget-object v0, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 431
    .local v0, "pivot":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 432
    .local v3, "right":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 433
    .local v1, "pivotLeft":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 436
    .local v2, "pivotRight":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 437
    if-eqz v2, :cond_0

    .line 438
    iput-object p1, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 441
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 444
    iput-object p1, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 445
    iput-object v0, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 448
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_0
    if-eqz v2, :cond_2

    iget v5, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 450
    iget v4, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v1, :cond_3

    iget v5, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 452
    return-void

    :cond_1
    move v4, v6

    .line 448
    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v6

    .line 450
    goto :goto_2
.end method

.method private static secondaryHash(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 235
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 236
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 869
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 105
    iget-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    const/4 v3, 0x0

    iput v3, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 107
    iget v3, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->modCount:I

    .line 110
    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->header:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 111
    .local v1, "header":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .local v0, "e":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eq v0, v1, :cond_0

    .line 112
    iget-object v2, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 113
    .local v2, "next":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v4, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 114
    move-object v0, v2

    .line 115
    goto :goto_0

    .line 117
    .end local v2    # "next":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_0
    iput-object v1, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 118
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;

    .line 459
    .local v0, "result":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;

    invoke-direct {v1, p0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;-><init>(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$EntrySet;

    goto :goto_0
.end method

.method find(Ljava/lang/Object;Z)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 14
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v6, 0x0

    const/4 v13, 0x1

    .line 132
    iget-object v9, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 133
    .local v9, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v12, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 134
    .local v12, "table":[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "[Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->secondaryHash(I)I

    move-result v4

    .line 135
    .local v4, "hash":I
    array-length v3, v12

    sub-int/2addr v3, v13

    and-int v11, v4, v3

    .line 136
    .local v11, "index":I
    aget-object v2, v12, v11

    .line 137
    .local v2, "nearest":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v10, 0x0

    .line 139
    .local v10, "comparison":I
    if-eqz v2, :cond_3

    .line 142
    sget-object v3, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v9, v3, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v3, v0

    move-object v8, v3

    .line 147
    .local v8, "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v8, :cond_1

    iget-object v3, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v8, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    move v10, v3

    .line 152
    :goto_1
    if-nez v10, :cond_2

    move-object v3, v2

    .line 196
    .end local v8    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :goto_2
    return-object v3

    :cond_0
    move-object v8, v6

    .line 142
    goto :goto_0

    .line 147
    .restart local v8    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_1
    iget-object v3, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v9, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    move v10, v3

    goto :goto_1

    .line 157
    :cond_2
    if-gez v10, :cond_4

    iget-object v3, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v7, v3

    .line 158
    .local v7, "child":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_3
    if-nez v7, :cond_5

    .line 167
    .end local v7    # "child":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v8    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_3
    if-nez p2, :cond_6

    move-object v3, v6

    .line 168
    goto :goto_2

    .line 157
    .restart local v8    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_4
    iget-object v3, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v7, v3

    goto :goto_3

    .line 162
    .restart local v7    # "child":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_5
    move-object v2, v7

    .line 163
    goto :goto_0

    .line 172
    .end local v7    # "child":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v8    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_6
    iget-object v5, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->header:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 174
    .local v5, "header":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v2, :cond_9

    .line 176
    sget-object v3, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v9, v3, :cond_7

    instance-of v3, p1, Ljava/lang/Comparable;

    if-nez v3, :cond_7

    .line 177
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " is not Comparable"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_7
    new-instance v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v6, v5, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 180
    .local v1, "created":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    aput-object v1, v12, v11

    .line 191
    :goto_4
    iget v3, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->size:I

    iget v6, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->threshold:I

    if-le v3, v6, :cond_8

    .line 192
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->doubleCapacity()V

    .line 194
    :cond_8
    iget v3, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->modCount:I

    move-object v3, v1

    .line 196
    goto :goto_2

    .line 182
    .end local v1    # "created":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_9
    new-instance v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v6, v5, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 183
    .restart local v1    # "created":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-gez v10, :cond_a

    .line 184
    iput-object v1, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 188
    :goto_5
    invoke-direct {p0, v2, v13}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    goto :goto_4

    .line 186
    :cond_a
    iput-object v1, v2, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_5
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 219
    .local v0, "mine":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 220
    .local v1, "valuesEqual":Z
    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v0

    :goto_1
    return-object v2

    .line 219
    .end local v1    # "valuesEqual":Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 220
    .restart local v1    # "valuesEqual":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method findByObject(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 202
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 202
    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    move-object v1, v2

    .line 204
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 87
    .local v0, "node":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$KeySet;

    .line 464
    .local v0, "result":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$KeySet;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$KeySet;

    invoke-direct {v1, p0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$KeySet;-><init>(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$KeySet;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 96
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 99
    .local v0, "created":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 100
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 101
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 122
    .local v0, "node":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeInternal(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .locals 10
    .param p2, "unlink"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 246
    if-eqz p2, :cond_0

    .line 247
    iget-object v6, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v7, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v7, v6, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 248
    iget-object v6, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v7, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v7, v6, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 249
    iput-object v8, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v8, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 252
    :cond_0
    iget-object v1, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 253
    .local v1, "left":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v4, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 254
    .local v4, "right":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 255
    .local v3, "originalParent":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 266
    iget v6, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iget v7, v4, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-le v6, v7, :cond_3

    invoke-virtual {v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->last()Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v6

    move-object v0, v6

    .line 267
    .local v0, "adjacent":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual {p0, v0, v9}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "leftHeight":I
    iget-object v1, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 271
    if-eqz v1, :cond_1

    .line 272
    iget v2, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 273
    iput-object v1, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 274
    iput-object v0, v1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 275
    iput-object v8, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 277
    :cond_1
    const/4 v5, 0x0

    .line 278
    .local v5, "rightHeight":I
    iget-object v4, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 279
    if-eqz v4, :cond_2

    .line 280
    iget v5, v4, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 281
    iput-object v4, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 282
    iput-object v0, v4, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 283
    iput-object v8, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 285
    :cond_2
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 286
    invoke-direct {p0, p1, v0}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 301
    .end local v0    # "adjacent":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2    # "leftHeight":I
    .end local v5    # "rightHeight":I
    :goto_1
    return-void

    .line 266
    :cond_3
    invoke-virtual {v4}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->first()Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 288
    :cond_4
    if-eqz v1, :cond_5

    .line 289
    invoke-direct {p0, p1, v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 290
    iput-object v8, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    .line 298
    :goto_2
    invoke-direct {p0, v3, v9}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 299
    iget v6, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->size:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 300
    iget v6, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->modCount:I

    goto :goto_1

    .line 291
    :cond_5
    if-eqz v4, :cond_6

    .line 292
    invoke-direct {p0, p1, v4}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 293
    iput-object v8, p1, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_2

    .line 295
    :cond_6
    invoke-direct {p0, p1, v8}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_2
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 305
    .local v0, "node":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 306
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 308
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;, "Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget v0, p0, Lcom/fusepowered/m1/google/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method
