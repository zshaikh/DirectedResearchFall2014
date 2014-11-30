.class final enum Lcom/google/common/collect/SortedLists$Relation$2;
.super Lcom/google/common/collect/SortedLists$Relation;
.source "SortedLists.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$Relation;-><init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists$1;)V

    return-void
.end method


# virtual methods
.method exactMatchFound(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;III",
            "Ljava/util/Comparator",
            "<-TE;>;Z)I"
        }
    .end annotation

    .prologue
    .line 117
    if-nez p7, :cond_0

    move v0, p4

    .line 133
    :goto_0
    return v0

    :cond_0
    move v0, p4

    move v1, p3

    .line 124
    :goto_1
    if-ge v1, v0, :cond_2

    .line 125
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 126
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p6, v3, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 127
    if-gez v3, :cond_1

    .line 128
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 130
    goto :goto_1

    :cond_2
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method exactMatchNotFound(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;I",
            "Ljava/util/Comparator",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x1

    sub-int v0, p3, v0

    return v0
.end method

.method reverse()Lcom/google/common/collect/SortedLists$Relation;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/common/collect/SortedLists$Relation$2;->CEILING:Lcom/google/common/collect/SortedLists$Relation;

    return-object v0
.end method
