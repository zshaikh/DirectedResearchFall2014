.class final Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;
.super Lcom/google/inject/internal/ImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final transient keySetHashCode:I

.field private final transient mask:I

.field private final transient table:[Ljava/lang/Object;

.field private transient values:Lcom/google/inject/internal/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 567
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableMap;-><init>()V

    .line 570
    move-object v0, p1

    check-cast v0, [Ljava/util/Map$Entry;

    move-object v1, v0

    .line 571
    iput-object v1, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    .line 573
    array-length v1, p1

    invoke-static {v1}, Lcom/google/inject/internal/Hashing;->chooseTableSize(I)I

    move-result v1

    .line 574
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->table:[Ljava/lang/Object;

    .line 575
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->mask:I

    .line 578
    iget-object v1, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 579
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 580
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 581
    invoke-static {v7}, Lcom/google/inject/internal/Hashing;->smear(I)I

    move-result v8

    .line 582
    :goto_1
    iget v9, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->mask:I

    and-int/2addr v9, v8

    mul-int/lit8 v9, v9, 0x2

    .line 583
    iget-object v10, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->table:[Ljava/lang/Object;

    aget-object v10, v10, v9

    .line 584
    if-nez v10, :cond_0

    .line 585
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 586
    iget-object v8, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->table:[Ljava/lang/Object;

    aput-object v6, v8, v9

    .line 587
    iget-object v6, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->table:[Ljava/lang/Object;

    add-int/lit8 v8, v9, 0x1

    aput-object v5, v6, v8

    .line 588
    add-int/2addr v4, v7

    .line 578
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 591
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 581
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 595
    :cond_2
    iput v4, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->keySetHashCode:I

    .line 596
    return-void
.end method

.method synthetic constructor <init>([Ljava/util/Map$Entry;Lcom/google/inject/internal/ImmutableMap$1;)V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;)[Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;)I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->keySetHashCode:I

    return v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 630
    if-nez p1, :cond_0

    move v0, v4

    .line 638
    :goto_0
    return v0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 634
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 635
    const/4 v0, 0x1

    goto :goto_0

    .line 633
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    .line 638
    goto :goto_0
.end method

.method public entrySet()Lcom/google/inject/internal/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entrySet:Lcom/google/inject/internal/ImmutableSet;

    .line 650
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$EntrySet;-><init>(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entrySet:Lcom/google/inject/internal/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entrySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 599
    if-nez p1, :cond_0

    move-object v0, v3

    .line 612
    :goto_0
    return-object v0

    .line 602
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/inject/internal/Hashing;->smear(I)I

    move-result v0

    .line 603
    :goto_1
    iget v1, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->mask:I

    and-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 604
    iget-object v2, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->table:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 605
    if-nez v2, :cond_1

    move-object v0, v3

    .line 606
    goto :goto_0

    .line 608
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->table:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 602
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public keySet()Lcom/google/inject/internal/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->keySet:Lcom/google/inject/internal/ImmutableSet;

    .line 675
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$KeySet;-><init>(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->keySet:Lcom/google/inject/internal/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->keySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 741
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 742
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/google/inject/internal/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->values:Lcom/google/inject/internal/ImmutableCollection;

    .line 700
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$Values;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$Values;-><init>(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;)V

    iput-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->values:Lcom/google/inject/internal/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->values()Lcom/google/inject/internal/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
