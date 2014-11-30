.class public Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "MoreTypes.java"

# interfaces
.implements Lcom/google/inject/internal/MoreTypes$CompositeType;
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/WildcardType;


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    array-length v0, p2

    if-gt v0, v3, :cond_0

    move v0, v3

    :goto_0
    const-string v1, "Must have at most one lower bound."

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 581
    array-length v0, p1

    if-ne v0, v3, :cond_1

    move v0, v3

    :goto_1
    const-string v1, "Must have exactly one upper bound."

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 583
    array-length v0, p2

    if-ne v0, v3, :cond_3

    .line 584
    aget-object v0, p2, v2

    const-string v1, "lowerBound"

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    aget-object v0, p2, v2

    const-string v1, "wildcard bounds"

    # invokes: Lcom/google/inject/internal/MoreTypes;->checkNotPrimitive(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/inject/internal/MoreTypes;->access$200(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 586
    aget-object v0, p1, v2

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    move v0, v3

    :goto_2
    const-string v1, "bounded both ways"

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 587
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 588
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    .line 596
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 580
    goto :goto_0

    :cond_1
    move v0, v2

    .line 581
    goto :goto_1

    :cond_2
    move v0, v2

    .line 586
    goto :goto_2

    .line 591
    :cond_3
    aget-object v0, p1, v2

    const-string v1, "upperBound"

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    aget-object v0, p1, v2

    const-string v1, "wildcard bounds"

    # invokes: Lcom/google/inject/internal/MoreTypes;->checkNotPrimitive(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/inject/internal/MoreTypes;->access$200(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 594
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 612
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lcom/google/inject/internal/MoreTypes;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/inject/internal/MoreTypes;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 599
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 617
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->hashCode(Ljava/lang/reflect/Type;)I

    move-result v0

    return v0
.end method

.method public isFullySpecified()Z
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    # invokes: Lcom/google/inject/internal/MoreTypes;->isFullySpecified(Ljava/lang/reflect/Type;)Z
    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->access$300(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    # invokes: Lcom/google/inject/internal/MoreTypes;->isFullySpecified(Ljava/lang/reflect/Type;)Z
    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->access$300(Ljava/lang/reflect/Type;)Z

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

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
