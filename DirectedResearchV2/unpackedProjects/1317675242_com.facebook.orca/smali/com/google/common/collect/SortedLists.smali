.class final Lcom/google/common/collect/SortedLists;
.super Ljava/lang/Object;
.source "SortedLists.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$Relation;Z)I
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Lcom/google/common/collect/SortedLists$Relation;",
            "Z)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 350
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const/4 v0, 0x0

    .line 354
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    move v5, v1

    move v3, v0

    .line 356
    :goto_0
    if-gt v3, v5, :cond_2

    .line 357
    sub-int v0, v5, v3

    div-int/lit8 v0, v0, 0x2

    add-int v4, v3, v0

    .line 358
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 359
    if-gez v0, :cond_0

    .line 360
    sub-int v0, v4, v2

    move v1, v3

    :goto_1
    move v5, v0

    move v3, v1

    .line 367
    goto :goto_0

    .line 361
    :cond_0
    if-lez v0, :cond_1

    .line 362
    add-int/lit8 v0, v4, 0x1

    move v1, v0

    move v0, v5

    goto :goto_1

    :cond_1
    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move v7, p4

    .line 364
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/collect/SortedLists$Relation;->exactMatchFound(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I

    move-result v0

    .line 369
    :goto_2
    return v0

    :cond_2
    invoke-virtual {p3, p0, p1, v3, p2}, Lcom/google/common/collect/SortedLists$Relation;->exactMatchNotFound(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I

    move-result v0

    goto :goto_2
.end method