.class final Lcom/google/common/collect/Lists$CharSequenceAsList;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 636
    iput-object p1, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    .line 637
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Character;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 644
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$CharSequenceAsList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 688
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v5

    .line 704
    :goto_0
    return v0

    .line 691
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 692
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 693
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_1

    move v0, v5

    .line 694
    goto :goto_0

    .line 696
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v5

    .line 697
    :goto_1
    if-ge v3, v1, :cond_4

    .line 698
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 699
    instance-of v4, v0, Ljava/lang/Character;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object v4, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_3

    :cond_2
    move v0, v5

    .line 701
    goto :goto_0

    .line 697
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 704
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$CharSequenceAsList;->a(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 680
    const/4 v0, 0x1

    .line 681
    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 682
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 648
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 649
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 650
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 651
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    .line 656
    :goto_1
    return v0

    .line 650
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 660
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 661
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 662
    iget-object v1, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 663
    iget-object v2, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    .line 668
    :goto_1
    return v0

    .line 662
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 668
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
